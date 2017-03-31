-module(general).
-export([general/3]).

priv_general(A, B, C) when (B*B - 4 * A * C) < 0 ->
  imaginarias;

priv_general(A, B, C) ->
  {(-B + math:sqrt(B * B - 4 * A * C)) / 2,
   (-B - math:sqrt(B * B - 4 * A * C)) / 2}.

general(A, B, C) ->
  priv_general(A, B, C).
