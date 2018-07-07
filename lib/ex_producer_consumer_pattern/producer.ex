defmodule ExProducerConsumerPattern.Producer do
  use Agent

  def start_link(data) do
    Agent.start_link(fn -> data end)
  end

  def next(pid) do
    Agent.get_and_update(pid, fn
      [] ->
        {:no_data, []}

      [data | rest] ->
        {data, rest}
    end)
  end
end
