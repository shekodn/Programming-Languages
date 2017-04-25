-module(areas).
-export([ciclo/0, rpc/2, on_exit/2]).

rpc(Pid, Solicitud) ->
       Pid ! {self(), Solicitud},
receive
    Respuesta -> Respuesta
end.

ciclo() ->
       receive
           {De, {rectangulo, Base, Altura}} ->
                  De ! Base * Altura,
                  ciclo();
           {De, {circulo, Radio}} ->
                  De ! 3.14159 * Radio * Radio,
                  ciclo();
           {De, Otra} ->
                  De ! {error, Otra},
                  ciclo()
        end.



on_exit(Pid, Fun) ->
        spawn(fun() ->
            process_flag(trap_exit, true),
            link(Pid),
            receive
                {'EXIT', Pid, Why} ->
                Fun(Why)
            end
        end).
