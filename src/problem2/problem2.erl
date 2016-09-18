-module(problem2).
-author("joan").

%% API
-export([inverse_fib_sequence_to/1, inverse_fib_sequence/2]).

inverse_fib_sequence_to(1) ->
  [1,1];
inverse_fib_sequence_to(2) ->
  [2,1,1];
inverse_fib_sequence_to(X) ->
  inverse_fib_sequence(inverse_fib_sequence_to(2), X).

inverse_fib_sequence([A, B | Tail], X) when A+B > X ->
  [A, B] ++ Tail;
inverse_fib_sequence([A, B | Tail], X) ->
  inverse_fib_sequence([A+B] ++ [A, B] ++ Tail, X).
