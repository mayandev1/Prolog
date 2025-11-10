% ===========================
% Lista de Exercícios I
% ===========================

% Questão 3 - Árvore Genealógica
pai(joao, maria).
mae(ana, maria).
irmao(maria, joel).
irma(maria, joana).
tio(joao, joel).
tia(ana, joana).
avo(carlos, maria).
avo(rosa, joel).

% Questão 4 - Alunos, Professores e Universidades
aluno(joao, calculo).
aluno(maria, calculo).
aluno(joel, programacao).
aluno(joel, estrutura).

frequenta(joao, ufpi).
frequenta(maria, ufpi).
frequenta(joel, ufma).

professor(carlos, calculo).
professor(ana_paula, estrutura).
professor(pedro, programacao).

funcionario(pedro, ufma).
funcionario(ana_paula, ufpi).
funcionario(carlos, ufpi).

% Regra: alunos do professor X
aluno_do_professor(Aluno, Professor):-
    aluno(Aluno, Disciplina),
    professor(Professor, Disciplina).

% Regra: pessoas associadas à universidade X
associado_universidade(Pessoa, Universidade):-
    frequenta(Pessoa, Universidade);
    funcionario(Pessoa, Universidade).

% Questão 5 - Bruxo e Quadribol
bruxo(rony).
temVarinha(harry).
jogadorQuadribol(harry).
bruxo(X):- temVassoura(X), temVarinha(X).
temVassoura(X):- jogadorQuadribol(X).

% Questão 6 - Gaúcho e Local de Nascimento
nasceu(joao, pelotas).
nasceu(jean, paris).
local(pelotas, rio_grande_do_sul).
local(paris, franca).
gaucho(X):- nasceu(X, Cidade), local(Cidade, rio_grande_do_sul).
