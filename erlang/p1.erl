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
 
