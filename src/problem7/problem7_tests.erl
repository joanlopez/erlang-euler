-module(problem7_tests).
-author("joan").

-include_lib("eunit/include/eunit.hrl").

nth_prime_test() ->
  ?assertEqual(2, problem7:nth_prime(1)),
  ?assertEqual(3, problem7:nth_prime(2)),
  ?assertEqual(5, problem7:nth_prime(3)),
  ?assertEqual(7, problem7:nth_prime(4)),
  ?assertEqual(11, problem7:nth_prime(5)),
  ?assertEqual(13, problem7:nth_prime(6)),
  ?assertEqual(104743, problem7:nth_prime(10001)).

is_prime_test() ->
  ?assertEqual(false, problem7:is_prime(1)),
  ?assertEqual(true, problem7:is_prime(2)),
  ?assertEqual(true, problem7:is_prime(3)),
  ?assertEqual(true, problem7:is_prime(5)),
  ?assertEqual(true, problem7:is_prime(7)),
  ?assertEqual(false, problem7:is_prime(8)),
  ?assertEqual(true, problem7:is_prime(11)),
  ?assertEqual(true, problem7:is_prime(13)).