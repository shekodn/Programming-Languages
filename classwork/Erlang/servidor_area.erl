-module(servidor_area).
-export([ciclo/0]).

ciclo() ->
  receive
{rectangulo, Anchura, Altura} ->
io:format("Area del rectangulo = ~p~n" ,[Anchura * Altura]), ciclo();
    {circulo, R} ->
       io:format("Area del circulo es ~p~n" , [3.14159 * R * R]),
       ciclo();
    Otro ->
       io:format("Desconozco el area del ~p ~n" ,[Otro]),
       ciclo()
end.
