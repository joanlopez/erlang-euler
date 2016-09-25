-module(problem15_tests).
-author("joan").

-include_lib("eunit/include/eunit.hrl").

create_matrix_test() ->
  ?assertEqual([[0,0],[0,0]], problem15:create_matrix(2)),
  ?assertEqual([[3,3],[3,3]], problem15:create_matrix(2,3)).

counting_routes_test() ->
  ?assertEqual(1, problem15:counting_routes(1)),
  ?assertEqual(2, problem15:counting_routes(2)),
  ?assertEqual(6, problem15:counting_routes(3)),
  ?assertEqual(70, problem15:counting_routes(5)),
  ?assertEqual(48620, problem15:counting_routes(10)).

binomial_coefficient_test() ->
  ?assertEqual(2, problem15:binomial_coefficient(2, 1)),
  ?assertEqual(6, problem15:binomial_coefficient(4, 2)),
  ?assertEqual(70, problem15:binomial_coefficient(8, 4)),
  ?assertEqual(48620, problem15:binomial_coefficient(18, 9)),
  ?assertEqual(137846528820, problem15:binomial_coefficient(40, 20)).