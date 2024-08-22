defmodule ElixirShite do
  @limit 1_000_000
  defp get_random_string(),
    do: for(_ <- 1..10, into: "", do: <<Enum.random(~c"0123456789abcdef")>>)

  def run() do
    {:ok, file} = File.open("data.txt", [:read, :write])

    for _ <- 1..@limit do
      IO.puts(file, "#{get_random_string()}\n")
    end

    File.close(file)
  end
end
