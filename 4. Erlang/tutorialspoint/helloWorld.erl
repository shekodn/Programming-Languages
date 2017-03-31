% hello world program
-module(helloWorld).
% import function used to import the io module
-import(io,[fwrite/1]).
-import(io,[fwrite/2]).


% export function used to ensure the start function can be accessed.
-export([start/0]).
-export([finish/0]).
-export([suma/0]).
-export([tupla/0]).
-export([mapa/0]).
-export([lista/0]).



start() ->
    fwrite("Hello, world!\n").

finish() ->
    fwrite("Bye bye!\n").

suma() ->
   fwrite("~w",[1+1]).

tupla() ->
    T = {uno, dos, {tre, cuatro}},
    fwrite("~w", [tuple_size(T)]).

mapa() ->
    M1 = #{name=>john,age=>25},
    fwrite("~w",[map_size(M1)]).

lista() ->
    L = [10,20,30] ,
    fwrite("~w",[length(L)]).
