defmodule SweatXml do
  import SweetXml

  def lets_do_it(path) do
    path
    |> File.stream!([], 500)
    |> stream_tags([:ipsum])
    |> Stream.each(fn
      {:ipsum, element} -> IO.inspect(element)
      _ -> :ok
    end)
    |> Stream.run
  end
end
