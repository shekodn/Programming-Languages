-module(mimap).
-export([mimap/2]).

mimap(_, []) -> [];

mimap(Func, [ H |  T ]) ->
    [ Func(H) | mimap(Func, T) ].
