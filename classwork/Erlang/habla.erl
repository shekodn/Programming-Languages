-module(habla).
-export([inicio/0, di_algo/2, ciclo/0]).


di_algo(_,0)->
    hecho;

di_algo(Que, Veces)->
    io:format("~p~n", [Que]),
    di_algo(Que, Veces - 1).

inicio() ->
    spawn(habla, di_algo, [hola, 3]),
    spawn(habla, di_algo, [adios, 3]).


ciclo() ->
    receive
        {rectangulo, Anchura, Altura} ->
            io:format("Area del rectangulo = ~p~n" ,[Anchura * Altura]), ciclo();

        {circulo, R} ->
            io:format("Area del circulo es ~p~n" , [3.14159 * R * R]),
            ciclo();

        {para} ->
            bye; %valor de retorno se pierde, tiene que ser un mensaje

        Otro ->
            io:format("Desconozco el area del ~p ~n" ,[Otro]),
            ciclo()
end.


% 5> Servidor = spawn(habla, ciclo, []).
% <0.73.0>
% 6> Servidor ! {rectangulo, 20, 35}.
% Area del rectangulo = 700
