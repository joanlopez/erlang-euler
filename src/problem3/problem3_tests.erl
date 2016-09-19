-module(problem3_tests).
-author("joan").

-include_lib("eunit/include/eunit.hrl").

decompose_primes_test() ->
  ?assertEqual([5,7,13,29], problem3:decompose_primes(13195)),
  PrimesOf600851475143 = problem3:decompose_primes(600851475143),
  ?assertEqual(6857, lists:nth(length(PrimesOf600851475143), PrimesOf600851475143)).