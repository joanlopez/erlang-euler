-module(problem7).
-author("joan").

%% API
-export([nth_prime/1, is_prime/1]).

%% Could be optimised %%
nth_prime(Nth) ->
  nth_prime(Nth, [2, 3], 5).
nth_prime(Nth, Primes, Counter) when length(Primes) < Nth ->
  case is_prime(Counter) of
    false -> nth_prime(Nth, Primes, Counter+1);
    _ -> nth_prime(Nth, lists:append(Primes,[Counter]), Counter+1)
  end;
nth_prime(Nth, Primes, _) ->
  lists:nth(Nth, Primes).

%% Prime test algorithm %%
is_prime(Number) when Number =< 1 ->
  false;
is_prime(Number) when Number =< 3 ->
  true;
is_prime(Number) when Number rem 2 =:= 0; Number rem 3 =:= 0 ->
  false;
is_prime(Number) ->
  is_prime(Number,5).
is_prime(Number, Counter) when (Counter*Counter) =< Number, Number rem Counter =:= 0 ->
  false;
is_prime(Number, Counter) when (Counter*Counter) =< Number, Number rem (Counter+2) =:= 0 ->
  false;
is_prime(Number, Counter) when (Counter*Counter) =< Number ->
  is_prime(Number, Counter+6);
is_prime(_, _) ->
  true.
