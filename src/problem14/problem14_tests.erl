-module(problem14_tests).
-author("joan").

-include_lib("eunit/include/eunit.hrl").

collatz_sequence_test() ->
  ?assertEqual([13, 40], problem14:collatz_sequence(13, 2)),
  ?assertEqual([13, 40, 20, 10], problem14:collatz_sequence(13, 4)),
  ?assertEqual([13, 40, 20, 10, 5, 16, 8, 4, 2, 1], problem14:collatz_sequence(13, 10)),
  ?assertEqual([13, 40, 20, 10, 5, 16, 8, 4, 2, 1], problem14:collatz_sequence(13, 20)).

index_of_test() ->
  ?assertEqual(1, problem14:index_of(1, [1,3,2])),
  ?assertEqual(2, problem14:index_of(3, [1,3,2])),
  ?assertEqual(3, problem14:index_of(2, [1,3,2])).

problem14_test() ->
  Sequences = problem14:collatz_sequence_for(lists:seq(1,1000000)),
  Lengths  = lists:map(fun(List) -> length(List) end, Sequences),
  Maximum = lists:max(Lengths),
  ?assertEqual(837799, problem14:index_of(Maximum, Lengths)).
