% ===========================
% Lista de Exercícios IV
% ===========================

% Adiciona início e fim
adiciona_inicio(E, L, [E|L]).
adiciona_fim(E, [], [E]).
adiciona_fim(E, [H|T], [H|R]):- adiciona_fim(E, T, R).

% Apaga elemento
apaga(E, [E|T], T).
apaga(E, [H|T], [H|R]):- apaga(E, T, R).

% Membro
membro(E, [E|_]).
membro(E, [_|T]):- membro(E, T).

% Concatena
concatena([], L, L).
concatena([H|T], L, [H|R]):- concatena(T, L, R).

% Tamanho
tamanho([], 0).
tamanho([_|T], N):- tamanho(T, N1), N is N1 + 1.

% Intersecção
intersec(A, B, Inter):- intersec_aux(A, B, [], InterRev), reverse(InterRev, Inter).
intersec_aux([], _, Acc, Acc).
intersec_aux([H|T], B, Acc, Res):- membro(H, B), \+ membro(H, Acc), intersec_aux(T, B, [H|Acc], Res).
intersec_aux([H|T], B, Acc, Res):- (\+ membro(H, B); membro(H, Acc)), intersec_aux(T, B, Acc, Res).

% Reverse
reverse(L, R):- reverse_acc(L, [], R).
reverse_acc([], Acc, Acc).
reverse_acc([H|T], Acc, R):- reverse_acc(T, [H|Acc], R).

% Inverte lista
inverte(L, R):- inverte_acc(L, [], R).
inverte_acc([], Acc, Acc).
inverte_acc([H|T], Acc, R):- inverte_acc(T, [H|Acc], R).

% Iguais por posição
iguais_pos([], [], []).
iguais_pos([A|Ta], [A|Tb], [A|Tr]):- iguais_pos(Ta, Tb, Tr).
iguais_pos([A|Ta], [B|Tb], Tr):- A \= B, iguais_pos(Ta, Tb, Tr).
iguais_pos(_, [], []).
iguais_pos([], _, []).

% Ordena e menor/maior
ordena([], []).
ordena([P|T], S):- partition(T, P, Lt, Gt), ordena(Lt, SLt), ordena(Gt, SGt), concatena(SLt, [P|SGt], S).
partition([], _, [], []).
partition([H|T], P, [H|Lt], Gt):- H =< P, partition(T, P, Lt, Gt).
partition([H|T], P, Lt, [H|Gt]):- H > P, partition(T, P, Lt, Gt).
menor_maior(L, Menor, Maior):- ordena(L, Ord), (Ord = [Menor|_] -> last_element(Ord, Maior) ; Menor = [], Maior = []).
last_element([X], X).
last_element([_|T], L):- last_element(T, L).
