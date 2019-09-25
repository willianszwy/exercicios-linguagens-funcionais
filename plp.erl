%  erlc plp.erl
%  erl -noshell -run plp main
% c("plp.erl").
%  plp:e_primo(999983).
% halt().
-module(plp).

-export([and_tres/3, area_circunferencia/1, e_primo/1,
	 elemento/2, fatorial/1, fibonacci/1, hash/2, main/0,
	 menor_de_dois/2, menor_de_tres/3, soma/2,
	 tail_fatorial/2]).

main() -> io:format("~p~n", ["hello"]), erlang:halt(0).

soma(A, B) -> A + B.

menor_de_dois(A, B) when A < B -> A;
menor_de_dois(_, B) -> B.

menor_de_tres(A, B, C) when A < B ->
    menor_de_dois(A, C);
menor_de_tres(_, B, C) -> menor_de_dois(B, C).

area_circunferencia(R) -> math:pi() * math:pow(R, 2).

and_tres(A, B, C) -> A and B and C.

fatorial(0) -> 1;
fatorial(N) -> N * fatorial(N - 1).

tail_fatorial(0, Acc) -> Acc;
tail_fatorial(N, Acc) -> tail_fatorial(N - 1, N * Acc).

e_primo(1) -> false;
e_primo(2) -> true;
e_primo(N) ->
    List = lists:seq(2, N - 1),
    Len = length([X || X <- List, N rem X =:= 0]),
    if Len > 0 -> false;
       true -> true
    end.

fibonacci(0) -> 1;
fibonacci(1) -> 1;
fibonacci(N) -> fibonacci(N - 1) + fibonacci(N - 2).

elemento([], _) -> erlang:error(lista_vazia);
elemento([H | _], 0) -> H;
elemento([_ | T], N) -> elemento(T, N - 1).

% operador # ja existe
hash(Str1, Str2) when Str1 =:= Str2 -> Str1;
hash(Str1, Str2) -> Str1 ++ Str2.
