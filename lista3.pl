% ===========================
% Lista de Exercícios III
% ===========================

% Exercício 1 - Soma dos quadrados
:- op(500, xfy, ++).
X ++ Y:- Result is X*X + Y*Y, write(Result).

% Exercício 2 - Divisível por outro
:- op(400, xfy, //).
X // Y:- 0 is X mod Y.

% Exercício 3 - Concatenação de strings
:- op(500, xfy, ::).
A :: B:- atom_concat(A, B, Result), write(Result).

% Exercício 4 - Soma dos elementos de lista
:- op(500, xfy, ++).
[] ++ 0.
[H|T] ++ Result:- T ++ Temp, Result is H + Temp.

% Exercício 5 - Verifica se número está no intervalo
:- op(500, xfy, ::).
Numero :: [Min, Max]:- Numero >= Min, Numero =< Max.
