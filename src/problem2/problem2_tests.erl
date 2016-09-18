-module(problem2_tests).
-author("joan").

-include_lib("eunit/include/eunit.hrl").

fibonacci_sequence_test() ->
  ?assertEqual([1,1], problem2:inverse_fib_sequence_to(1)),
  ?assertEqual([2,1,1], problem2:inverse_fib_sequence_to(2)),
  ?assertEqual([3,2,1,1], problem2:inverse_fib_sequence_to(3)).

inverse_fib_sequence_test() ->
  ?assertEqual([3,2,1,1], problem2:inverse_fib_sequence([2,1,1], 3)),
  ?assertEqual([89,55,34,21,13,8,5,3,2,1,1], problem2:inverse_fib_sequence([2,1,1], 90)).

fib_sequence_sum_evens_test()->
  InvSequence = problem2:inverse_fib_sequence_to(4000000),
  EvenInvSequence = lists:filter(fun(X) -> X rem 2 /= 0 end, InvSequence),
  ?assertEqual(4613732, lists:sum(EvenInvSequence)).