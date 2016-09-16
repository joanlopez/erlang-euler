-module(problem1).
-author("joan").

%% API
-export([sum_of_multiples/2, multiples_of/2, is_multiple_of/2]).

sum_of_multiples(List, Limit) ->
  lists:sum(multiples_of(List, Limit)).

multiples_of(List, Limit) ->
  lists:filter(fun(X) -> is_multiple_of(List, X) end, lists:seq(1, Limit-1)).

is_multiple_of([H|_], X) when (X rem H) =:= 0 ->
  true;
is_multiple_of([_|T], X) ->
  is_multiple_of(T, X);
is_multiple_of([], _) ->
  false;
is_multiple_of(A, X) ->
(X rem A) =:= 0.
