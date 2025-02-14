% team: aaron patel, nicholas sanaie, srikar sannidhi
-module(p2).
-export([start/0, loop/0]).

% start recursion loop
start() ->
    io:format("enter integers (0 to exit):~n"),
    loop().

% recursive function calling p1 compute
loop() ->
    io:format("enter a number: "),
    case io:read("") of
        {ok, 0} -> io:format("exiting~n");
        {ok, N} when is_integer(N) ->
            p1:compute(N),
            loop(); % tail recursion
        _ ->
            io:format("not an integer~n"),
            loop() % tail recursion
    end.