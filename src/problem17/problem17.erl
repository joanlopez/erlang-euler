-module(problem17).
-author("joan").

%% API
-export([translate/1]).

-define(ONES, [
              "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine",
              "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen",
              "eighteen", "nineteen"]).

-define(TENS, [
              "", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]).


translate(N) when 0 =< N, N < 20 ->
  ones(N);
translate(N) when 20 =< N, N < 100, (N rem 10) =/= 0 ->
  tens(N div 10) ++ "-" ++ ones(N rem 10);
translate(N) when 20 =< N, N < 100 ->
  tens(N div 10);
translate(N) when 100 =< N, N < 1000, (N rem 100) =/= 0 ->
  ones(N div 100) ++ " hundred and " ++ translate(N rem 100);
translate(N) when 100 =< N, N < 1000 ->
  ones(N div 100) ++ " hundred";
translate(N) when 1000 =< N, N < 1000000, N rem 1000 =/= 0 ->
  translate(N div 1000) ++ " thousand " ++ translate(N div 1000);
translate(N) when 1000 =< N, N < 1000000 ->
  translate(N div 1000) ++ " thousand".

ones(N) ->
  Position = N + 1, %% Because Erlang lists begins at 1th %%
  lists:nth(Position, ?ONES).

tens(N) ->
  Position = N + 1, %% Because Erlang lists begins at 1th %%
  lists:nth(Position, ?TENS).