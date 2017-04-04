% 1.Implementar el proceso hola en Erlang que acepte un mensaje {hola, P},
% donde P se asume que es un pid. Para cada mensaje, el proceso debe mandar
% {reply, C} a P (donde C es un contador.)
%
% Programa de prueba.
% ```
% prueba_hola() ->
%    H = spawn(hola, hola,[]),
%    prueba_hola (10, H).
% prueba_hola(N, H) when N > 0 ->
%    H ! {hola, self()},
%    receive
%        {reply, C} ->
%            io:format("Recibido ~w~n", [C]),
%            prueba_hola(N-1, H)
%    end;
% prueba_hola(_, _) ->
%     io:format("Mi trabajo está hecho").

-module(hola).
-export([hola/1, hola/0, prueba_hola/0, prueba_hola/2]).

prueba_hola() ->
   H = spawn(hola, hola,[]),
   prueba_hola (10, H).
prueba_hola(N, H) when N > 0 ->
   H ! {hola, self()},
   receive
       {reply, C} ->
           io:format("Recibido ~w~n", [C]),
           prueba_hola(N-1, H)
   end;
prueba_hola(_, _) ->
    io:format("Mi trabajo está hecho").


hola() ->
    receive
        {hola, P} ->
            %io:format("reply = ~p~n" ,[P]), hola();
            P ! {reply, 1}
    end,
    hola(1).

hola(Cont) ->
    receive
        {hola, P} ->
            %io:format("reply = ~p~n" ,[P]), hola();
            P ! {reply, Cont + 1}
    end,
    hola(Cont + 1).
