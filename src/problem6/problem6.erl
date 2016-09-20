-module(problem6).
-author("joan").

%% API
-export([sum_of_squares/1, square_of_sum/1, sum_square_difference/1]).

sum_of_squares(Numbers) ->
  Squares = lists:map(fun(X) -> X * X end, Numbers),
  lists:sum(Squares).

square_of_sum(Numbers) ->
  Sum = lists:sum(Numbers),
  Sum * Sum.

sum_square_difference(Numbers) ->
  SumOfSquares = sum_of_squares(Numbers),
  SquareOfSum = square_of_sum(Numbers),
  SquareOfSum - SumOfSquares.