-module(problem96_tests).
-author("joan").

-include_lib("eunit/include/eunit.hrl").


read_sudokus_test() ->
  Sudokus = problem96:read_sudokus_from_file("sudokus.txt", "\n", 9),
  ?assertEqual(50, length(Sudokus)).