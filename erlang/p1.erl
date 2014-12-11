%If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

%Find the sum of all the multiples of 3 or 5 below 1000.

-module(p1).
-export([multiples/1]).

multiples(N) -> multiples(N - 1, 0).

multiples(1, Sum) -> Sum;

multiples(N, Sum) ->
    if ((N rem 3 == 0) or (N rem 5 == 0)) ->
	multiples(N - 1, Sum + N); 
    true ->
	multiples(N - 1, Sum)
    end.
 
