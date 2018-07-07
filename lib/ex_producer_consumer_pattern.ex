defmodule ExProducerConsumerPattern do
  alias ExProducerConsumerPattern.{Producer, Consumer}

  def run(source) do
    {:ok, pid} = Producer.start_link(source)

    1..:erlang.system_info(:logical_processors)
    |> Enum.map(&Task.async(fn -> Consumer.sink(&1, pid) end))
    |> Enum.each(&Task.await(&1))
  end
end
