% Questão 1

:-dynamic aluno/2.
:-dynamic professor/2.

aluno(joao, calculo).
aluno(maria, calculo).
aluno(joel, programacao).
aluno(joel, estrutura).
frequenta(joao, puc).
frequenta(maria, puc).
frequenta(joel, ufrj).
professor(carlos, calculo).
professor(ana_paula, estrutura).
professor(pedro, programacao).
funcionario(pedro, ufrj).
funcionario(ana_paula, puc).
funcionario(carlos, puc).

sao_alunos_do_professor(A,X) :- professor(X, Materias), aluno(A, Materias). 

alunos_associados(Aluno,Faculdade) :- frequenta(Aluno, Faculdade).
professores_associados(Pessoa,Faculdade) :- funcionario(Pessoa, Faculdade).
associados(Pessoa,Faculdade) :- alunos_associados(Pessoa,Faculdade) ;
                                professores_associados(Pessoa,Faculdade).


% Questão 2

estado(riodejaneiro, 'Rio de Janeiro').
estado(espiritosanto, 'Vitório').
estado(saopaulo, 'São Paulo').
estado(minasgerais, 'Belo Horizonte').
capital(Estado, Capital) :- estado(Estado, Capital).

% Questão 3

doa(a,a).
doa(a,ab).
doa(b,b).
doa(b,ab).
doa(ab,ab).
doa(o,a).
doa(o,ab).
doa(o,b).
doa(o,o).
recebe(a,a).
recebe(a,o).
recebe(b,b).
recebe(b,o).
recebe(ab,a).
recebe(ab,b).
recebe(ab,ab).
recebe(ab,o).
recebe(o,o).

% Aritmética

soma(A, B, Soma) :- Soma is A + B.
maiorQueCem() :- write('Digite um numero: '),
                 read(X),
                 (
                    (X > 100, write('O numero digitado eh maior que cem!'))
                    ;
                    (X =< 100, write('O numero digitado eh menor igual a cem!'))
                 ).

% Questão 2 de Aritmética

nota(joao,5.0).
nota(mariana,9.0).
nota(joaqum,4.5).
nota(maria,6.0).
nota(cleuza,8.5).
nota(mara,4.0).
nota(joana,8.5).
nota(jose,6.5).
nota(mary,10.0).

planilhaDoProfessor(Aluno) :- nota(Aluno, Nota), (
                                                    (Nota >= 7, Nota =< 10, write('Aprovado'))
                                                    ;
                                                    (Nota >= 5, Nota =< 6.9, write('Recuperacao'))
                                                    ;
                                                    (Nota =< 4.9, write('Reprovado'))
                                                  ).

% Recursão