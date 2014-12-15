%The prime factors of 13195 are 5, 7, 13 and 29.

%What is the largest prime factor of the number 600851475143 ?

-module(p3).
-export([largest_prime_factor/1]).

largest_prime_factor(N) ->
    lpf(N, 2).

lpf(N, Div) ->
    if N == 1 ->
        Div;
    (N rem Div == 0) ->
        NewN = N div Div,
        lpf(NewN, Div);
    true ->
        lpf(N, Div + 1)
    end.

