-module(problem96).
-author("joan").

%% API
-export([is_numeric/1, read_sudokus_from_file/0, read_sudokus_from_file/3]).

-define(FILENAME, "sudokus.txt").
-define(SEPARATOR, "\n").
-define(SIZE, 9).

read_sudokus_from_file() ->
  read_sudokus_from_file(?FILENAME, ?SEPARATOR, ?SIZE).
read_sudokus_from_file(Filename, Separator, Size) ->
  {ok, BinString} = file:read_file(Filename),
  Lines = string:tokens(binary_to_list(BinString), Separator),
  NumberLines = lists:filter(fun(C) -> is_numeric(C) end, Lines),
  split_list_by(Size, NumberLines).

split_list_by(ChunkSize, List) ->
  {Chunk, Remain} = lists:split(ChunkSize, List),
  split_list_by(ChunkSize, Remain, [Chunk]).
split_list_by(_, [], Chunks) ->
  Chunks;
split_list_by(ChunkSize, List, Chunks) ->
  {Chunk, Remain} = lists:split(ChunkSize, List),
  split_list_by(ChunkSize, Remain, Chunks ++ [Chunk]).

%% Specific method for this problem: %%
%% Getting the first three digits of the first row %%
number_of(Sudoku) ->
  FirstRow = lists:nth(1, Sudoku),
  {Digits, _ } = lists:split(3, FirstRow),
  list_to_integer(Digits).

is_numeric(Chain) ->
  case re:run(Chain, "^[0-9]*$") of
    {match, _} -> true ;
    nomatch -> false
  end.
