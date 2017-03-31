-module(secuencia).
-export([secuencia/1]).

priv_secuencia(Cont, Limite) when Cont < Limite ->
  [Cont | priv_secuencia(Cont+1, Limite)];

priv_secuencia(Cont, Limite) when Cont == Limite ->
  [Cont].

secuencia(X) when X > 0 ->
  priv_secuencia(1, X).
