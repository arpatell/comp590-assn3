% team: aaron patel, nicholas sanaie, srikar sannidhi
-module(p1).
-export([main/0, compute/1]).

main() ->
    io:format("enter a number: "),
    case io:read("") of
        {ok, N} when is_integer(N) -> compute(N);
        _ -> io:format("not an integer~n")
    end.

% function to determine and calculate operations for numbers accordingly
compute(N) when is_integer(N) ->
    case N of
        0 ->
            io:format("0~n");
        N when N < 0 ->
            Res = math:pow(abs(N), 7),
            io:format("absolute value raised to 7th power: ~p~n", [Res]);
        N when N rem 7 == 0 ->
            Res = math:pow(N, 1/5),
            io:format("5th root: ~p~n", [Res]);
        _ ->
            Res = factorial(N),
            io:format("factorial: ~p~n", [Res])
    end.

% calculate factorial function
factorial(0) -> 1;
factorial(N) -> N * factorial(N - 1).