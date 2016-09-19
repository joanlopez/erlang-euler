-module(problem3).
-author("joan").

%% API
-export([decompose_primes/1, decompose_primes/3]).

decompose_primes(N) when is_integer(N), (N > 0) ->
  lists:reverse(decompose_primes(N,[],2)).
decompose_primes(N,R,I) when I*I > N ->
  [N|R];
decompose_primes(N,R,I) when (N rem I) =:= 0 ->
  decompose_primes(N div I, [I|R], I);
decompose_primes(N,R,2) ->
  decompose_primes(N,R,3);
decompose_primes(N,R,I) ->
  decompose_primes(N,R,I+2).
