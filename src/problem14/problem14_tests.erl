-module(problem14_tests).
-author("joan").

-include_lib("eunit/include/eunit.hrl").

collatz_sequence_test() ->
  ?assertEqual([13, 40], problem14:collatz_sequence(13, 2)),
  ?assertEqual([13, 40, 20, 10], problem14:collatz_sequence(13, 4)),
  ?assertEqual([13, 40, 20, 10, 5, 16, 8, 4, 2, 1], problem14:collatz_sequence(13, 10)),
  ?assertEqual([13, 40, 20, 10, 5, 16, 8, 4, 2, 1], problem14:collatz_sequence(13, 20)).