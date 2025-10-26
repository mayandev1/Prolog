% ===========================
% Lista de Exercícios II
% ===========================

% Exercício 2 - Formas geométricas
retangulo(r1, 4, 6).
quadrado(q1, 5).
circulo(c1, 2.5).

forma(Id, retangulo):- retangulo(Id, _, _).
forma(Id, quadrado):- quadrado(Id, _).
forma(Id, circulo):- circulo(Id, _).

% Exercício 3 - Média e situação
aluno(joao, [6.5, 7.0, 8.0]).
aluno(maria, [3.0, 4.0]).
aluno(pedro, [2.0, 3.5, 4.0, 5.0]).

media_lista(L, M):- sum_list(L, S), length(L, N), M is S / N.

situacao(Nome, Media, aprovado):- aluno(Nome, Notas), media_lista(Notas, Media), Media > 7.
situacao(Nome, Media, exame):- aluno(Nome, Notas), media_lista(Notas, Media), Media >= 4, Media =< 7.
situacao(Nome, Media, reprovado):- aluno(Nome, Notas), media_lista(Notas, Media), Media < 4.

% Exercício 5 - Correção de programa
f(1, um).
f(s(1), dois).
f(s(s(1)), tres).
f(s(s(s(X))), N):- f(X, N).
