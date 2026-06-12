% Cole exatamente este código do lado esquerdo:
pai(pedro, joao).
pai(pedro, maria).
pai(pedro, ana).
pai(joao, carlos).
pai(joao, julia).
pai(lucas, beatriz).

mae(helena, joao).
mae(helena, maria).
mae(helena, ana).
mae(maria, beatriz).
mae(ana, lucas_filho).

masculino(pedro).
masculino(joao).
masculino(lucas).
masculino(carlos).
masculino(lucas_filho).

feminino(helena).
feminino(maria).
feminino(ana).
feminino(julia).
feminino(beatriz).

progenitor(X, Y) :- pai(X, Y).
progenitor(X, Y) :- mae(X, Y).

irmao_generico(X, Y) :- progenitor(P, X), progenitor(P, Y), X \= Y.

irmao(X, Y) :- irmao_generico(X, Y), masculino(X).
irma_(X, Y)  :- irmao_generico(X, Y), feminino(X)

avo(X, Y)  :- pai(X, P), progenitor(P, Y).
avoa(X, Y) :- mae(X, P), progenitor(P, Y).

tio(X, Y) :- irmao(X, P), progenitor(P, Y).
tia(X, Y) :- irma_(X, P), progenitor(P, Y).

primo(X, Y) :- progenitor(P1, X), progenitor(P2, Y), irmao_generico(P1, P2), masculino(X).
prima(X, Y) :- progenitor(P1, X), progenitor(P2, Y), irmao_generico(P1, P2), feminino(X).
