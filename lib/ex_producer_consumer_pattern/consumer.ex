defmodule ExProducerConsumerPattern.Consumer do
  alias ExProducerConsumerPattern.Producer

  def sink(no, producer) do
    case Producer.next(producer) do
      :no_data ->
        IO.puts("task ##{no} done")

      data ->
        IO.puts("task ##{no} consumes #{inspect(data)}")
        sink(no, producer)
    end
  end
end
