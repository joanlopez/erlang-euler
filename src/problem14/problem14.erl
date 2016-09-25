-module(problem14).
-author("joan").

%% API
-export([collatz_sequence/2, collatz_sequence_for/1]).

collatz_sequence(1, _) ->
  [1];
collatz_sequence(Start, Steps) when (Start rem 2) =:= 0 ->
  collatz_sequence(Start div 2, Steps-1, [Start]);
collatz_sequence(Start, Steps) when (Start rem 2) =/= 0 ->
  collatz_sequence((Start*3)+1, Steps-1, [Start]).
collatz_sequence(_, Steps, Sequence) when Steps =:= 0 ->
  Sequence;
collatz_sequence(1, _, Sequence) ->
  Sequence ++ [1];
collatz_sequence(X, Steps, Sequence) when (X rem 2) =:= 0 ->
  collatz_sequence(X div 2, Steps-1, Sequence ++ [X]);
collatz_sequence(X, Steps, Sequence) when (X rem 2) =/= 0 ->
  collatz_sequence((X*3)+1, Steps-1, Sequence ++ [X]).

collatz_sequence_for(List) ->
  lists:map(fun(X) -> collatz_sequence(X, -1) end, List).