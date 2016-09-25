-module(problem15).
-author("joan").

%% API
-export([counting_routes/1, create_matrix/1, create_matrix/2, binomial_coefficient/2]).

%% From RosettaCode.org %%
binomial_coefficient(N, K) when (N >= 0), (K >= 0), (N >= K) ->
  binomial_coefficient(N, K, 1, 1).
binomial_coefficient(N, K, K, Acc) ->
  (Acc * (N-K+1)) div K;
binomial_coefficient(N, K, I, Acc) ->
  binomial_coefficient(N, K, I+1, (Acc * (N-I+1)) div I).
%% Thanks to RosettaCode.org for this binomial_coefficient %%

counting_routes(N) ->
  counting_routes(1, 1, N).
counting_routes(X, Y, N) when  X =:= N, Y < N ->
  counting_routes(X, Y+1, N);
counting_routes(X, Y, N) when  X < N, Y =:= N ->
  counting_routes(X+1, Y, N);
counting_routes(X, Y, N) when  X =:= N, Y =:= N ->
  1;
counting_routes(X, Y, N) ->
  counting_routes(X+1, Y, N) + counting_routes(X, Y+1, N).


create_matrix(N) ->
  [[0 || _ <- lists:seq(1, N)] || _ <- lists:seq(1, N)].
create_matrix(N, M) ->
  [[M || _ <- lists:seq(1, N)] || _ <- lists:seq(1, N)].