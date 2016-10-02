-module(problem17_tests).
-author("joan").

-include_lib("eunit/include/eunit.hrl").

translate_test() ->
  ?assertEqual("one", problem17:translate(1)),
  ?assertEqual("nineteen", problem17:translate(19)),
  ?assertEqual("forty", problem17:translate(40)),
  ?assertEqual("two hundred", problem17:translate(200)),
  ?assertEqual("three hundred and forty-five", problem17:translate(345)),
  ?assertEqual("five thousand", problem17:translate(5000)),
  ?assertEqual("one hundred thousand", problem17:translate(100000)).

problem17_test() ->
  Numbers = lists:seq(1,1000),
  Translations = lists:map(fun(N) -> problem17:translate(N) end, Numbers),
  CleanTranslations =  lists:map(fun(S) -> re:replace(S,"[\ ,\-]","",[global, {return,list}]) end, Translations),
  Lengths  = lists:map(fun(List) -> length(List) end, CleanTranslations),
  Sum = lists:sum(Lengths),
  ?assertEqual(21124, Sum).