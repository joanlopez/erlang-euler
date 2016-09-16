-module(problem1_tests).
-author("joan").

-include_lib("eunit/include/eunit.hrl").

is_multiple_test() ->
  ?assertEqual(true, problem1:is_multiple_of(2, 2)),
  ?assertEqual(true, problem1:is_multiple_of(5, 10)),
  ?assertEqual(false, problem1:is_multiple_of(3, 2)),
  ?assertEqual(false, problem1:is_multiple_of([3,5], 2)),
  ?assertEqual(true, problem1:is_multiple_of([3,5], 10)),
  ?assertEqual(true, problem1:is_multiple_of([3,5], 6)).

multiples_of_test() ->
  ?assertEqual([3,5,6,9], problem1:multiples_of([3,5], 10)).

sum_of_multiples_test() ->
  ?assertEqual(23, problem1:sum_of_multiples([3,5], 10)),
  ?assertEqual(233168, problem1:sum_of_multiples([3,5], 1000)).