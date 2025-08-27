homem(mayan).
homem(benjamim).
homem(francisco).
homem(pedro).
homem(queilan).
homem(luis).
homem(thiago).
homem(gladyston).

mulher(margarida).
mulher(gicelda).
mulher(maria).
mulher(dalva).
mulher(leidivania).

progenitor(gladyston, mayan).
progenitor(gladyston, benjamim).
progenitor(francisco, thiago).
progenitor(luis, margarida).
progenitor(gicelda, mayan).
progenitor(gicelda, benjamim).
progenitor(leidivania, thiago).
progenitor(maria, gicelda).
progenitor(pedro, gicelda).
progenitor(dalva, margarida).
progenitor(pedro, queilan).
progenitor(pedro, francisco).

tio(francisco, mayan).
tio(francisco, benjamim).

tia(leidivania, mayan).
tia(leidivania, benjamim).
tia(gicelda, thiago).

filho(Y,X) :-
    progenitor(X,Y), homem(Y).
filha(Y,X) :-
    progenitor(X,Y), mulher(Y).
pai(X,Y) :-
    progenitor(X,Y), homem(X).
mae(X,Y) :-
    progenitor(X,Y), mulher(X).
irmao(Y,Z) :-
    progenitor(X,Y), progenitor(X,Z), homem(Y). 
irma(Y,Z) :-
    progenitor(X,Y), progenitor(X,Z), mulher(Y). 