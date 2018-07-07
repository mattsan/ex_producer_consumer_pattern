# ExProducerConsumerPattern

see [Producer-Consumerパターン - デザインパターン紹介 - hyuki.com](https://www.hyuki.com/dp/dpinfo.html#ProducerConsumer)

## Example

```
$ iex -S mix
iex(1)> 1..20 |> Enum.to_list() |> ExProducerConsumerPattern.run()
task #1 consumes 1
task #2 consumes 2
task #3 consumes 3
task #4 consumes 4
task #5 consumes 5
task #6 consumes 6
task #7 consumes 7
task #8 consumes 8
task #1 consumes 9
task #2 consumes 10
task #3 consumes 11
task #4 consumes 12
task #5 consumes 13
task #6 consumes 14
task #7 consumes 15
task #8 consumes 16
task #1 consumes 17
task #3 consumes 19
task #2 consumes 18
task #4 consumes 20
task #5 done
task #6 done
task #7 done
task #1 done
task #2 done
task #4 done
task #8 done
task #3 done
:ok
```
