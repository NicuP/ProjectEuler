%Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

%1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

%By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
-module(p2).
-export([fib_even_sum/1]).

fib(N, Current, Previous,  Sum) ->
    Next = Current + Previous,
    if N =< Next ->
        Sum;
    (Next rem 2 == 0) -> 
        fib(N, Next, Current, Sum + Next);
    true ->
        fib(N, Next, Current, Sum)
    end.
        
fib_even_sum(N) -> fib(N, 1, 1, 0).
        
