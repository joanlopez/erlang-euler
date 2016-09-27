-module(problem14).
-author("joan").

%% API
-export([collatz_sequence/2, collatz_sequence_for/1, index_of/2]).

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



%% Index of from StackOverflow.com %%
index_of(Item, List) -> index_of(Item, List, 1).

index_of(_, [], _)  -> not_found;
index_of(Item, [Item|_], Index) -> Index;
index_of(Item, [_|Tl], Index) -> index_of(Item, Tl, Index+1).



%% Memoization example with process dict %%
%%collatz_sequence_for_memoization(List) ->
%%  lists:map(
%%    fun(X) ->
%%      case erlang:get({'collatz', X}) of
%%        undefined ->
%%          erlang:put({'collatz', X}, collatz_sequence(X, -1)),
%%          erlang:get({'collatz', X});
%%        _ ->
%%          erlang:get({'collatz', X})
%%      end
%%    end,
%%    List
%%  ).