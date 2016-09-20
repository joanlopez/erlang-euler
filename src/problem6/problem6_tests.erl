-module(problem6_tests).
-author("joan").

-include_lib("eunit/include/eunit.hrl").

sum_of_squares_test() ->
  ?assertEqual(385, problem6:sum_of_squares(lists:seq(1,10))),
  ?assertEqual(338350, problem6:sum_of_squares(lists:seq(1,100))).

square_of_sum_test() ->
  ?assertEqual(3025, problem6:square_of_sum(lists:seq(1,10))),
  ?assertEqual(25502500, problem6:square_of_sum(lists:seq(1,100))).

sum_square_difference_test() ->
  ?assertEqual(2640, problem6:sum_square_difference(lists:seq(1,10))),
  ?assertEqual(25164150, problem6:sum_square_difference(lists:seq(1,100))).