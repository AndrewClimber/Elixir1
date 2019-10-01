defmodule Smoothi do
  def get_smoothies_url() do
   #case HTTPoison.get("https://www.allrecipes.com/recipes/138/drinks/smoothies/?internalSource=hubcard&referringContentType=Search&clickId=cardslot%201")
   case HTTPoison.get("https://github.com/h4cc/awesome-elixir")
   do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
      urls =
      body
      #|> Floki.find("a.fixed-recipe-card__title-link")

      |> Floki.find(body, "#awesome-elixir")
      |> Floki.attribute("href")

      {:ok, urls}
      {:ok, %HTTPoison.Response{status_code: 404}} ->
      IO.puts "Not found :("
      {:error, %HTTPoison.Error{reason: reason}} ->
      IO.inspect reason
    end
  end

  def simple() do
    url = "https://github.com/h4cc/awesome-elixir"
    #html
    |> Floki.find("awesome-elixir")
    |> Floki.attribute("href")
    |> Enum.map(fn(url) -> HTTPoison.get!(url) end)
  end

end
