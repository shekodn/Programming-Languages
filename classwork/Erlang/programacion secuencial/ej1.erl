-module(ej1).

-import(io,[fwrite/1]).
-import(io,[fwrite/2]).
-import(lists,[append/2]).
-export([secuencia/1, menores/2]).


-compile(export_all).



% 1.	Programar la función formula_general en Erlang que resuelva ecuaciones cuadráticas
% de tipo a x^2+b x+c = 0, a partir de sus coeficientes.
formula_general(A,B,C) ->
    Disc = (B*B) - (4*A*C),

    if Disc >= 0 ->

        Ans1 = -B + math:sqrt(Disc),
        Ans2 = -B - math:sqrt(Disc),
        io:format("{~.1f, ", [Ans1/2*A]),
        io:format("~.1f}~n", [Ans2/2*A]);

       true ->
           "imaginarias"
    end.

% 2.Programar la función secuencia en Erlang que cree una lista con los números
% naturales del 1 a N.

secuencia(0) ->
    [];
secuencia(1) ->
    [1];
secuencia(N) when N > 0 ->
    append(secuencia(N-1), [N]).


% 3.	Programar la función de orden superior mapea en Erlang que trabaje igual que
% la FOS lists:map (sin utilizarla).
% Probar con:
%
% ```
% ej1:mapea(fun math:sqrt/1, [1,4,9]).		=> [1.0,2.0,3.0]
% ej1:mapea(fun(X) -> X*X end, [1,2,3]).		=> [1,4,9]
% ```

mapea([]) ->
    [];

mapea([H|T]) ->
    [math:sqrt(H)/1|mapea(T)].


% 4.	Programar la función menores que sin utilizar recursividad explícita regrese
% todos los elementos de una lista de sublistas que sean menores que su segundo argumento.
menores(List, Comp) -> lists:map(fun (X) ->
    lists:filter(fun (Y) -> Y < Comp end, X) end, List).
