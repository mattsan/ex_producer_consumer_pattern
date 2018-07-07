defmodule ExProducerConsumerPatternTest do
  use ExUnit.Case
  doctest ExProducerConsumerPattern

  test "greets the world" do
    assert ExProducerConsumerPattern.hello() == :world
  end
end
