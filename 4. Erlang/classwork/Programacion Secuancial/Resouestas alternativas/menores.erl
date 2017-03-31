-module(menores).
-export([menores/2]).

filter(L, Comparante) ->
  lists:filter(fun (X) -> X < Comparante end, L).

menores(Lista, Comparante) ->
  lists:map(fun (L) -> filter(L, Comparante) end, Lista).
