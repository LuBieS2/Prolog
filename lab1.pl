kobieta(maria).
kobieta(ewa).
kobieta(agata).
kobieta(anna).
kobieta(joanna).
kobieta(agnieszka).
kobieta(beata).
kobieta(iwona).

mê¿czyzna(piotr).
mê¿czyzna(adam).
mê¿czyzna(marek).
mê¿czyzna(robert).
mê¿czyzna(jan).
mê¿czyzna(krzysztof).
mê¿czyzna(radek).
mê¿czyzna(darek).
mê¿czyzna(tomek).
mê¿czyzna(jacek).

rodzic(maria, agata).
rodzic(maria, marek).
rodzic(maria, jan).
rodzic(piotr, agata).
rodzic(piotr, marek).
rodzic(piotr, jan).
rodzic(adam, anna).
rodzic(adam, joanna).
rodzic(adam, krzysztof).
rodzic(ewa, anna).
rodzic(ewa, joanna).
rodzic(ewa, krzysztof).
rodzic(robert, radek).
rodzic(robert, beata).
rodzic(agata, radek).
rodzic(agata, beata).
rodzic(jan, darek).
rodzic(jan, tomek).
rodzic(anna, darek).
rodzic(anna, tomek).
rodzic(krzysztof, jacek).
rodzic(krzysztof, iwona).
rodzic(agnieszka, jacek).
rodzic(agnieszka, iwona).

ma³¿eñstwo(piotr, maria).
ma³¿eñstwo(robert, agata).
ma³¿eñstwo(jan, anna).
ma³¿eñstwo(adam, ewa).
ma³¿eñstwo(krzystof, agnieszka).

matka(X, Y) :- kobieta(X), rodzic(X, Y).
ojciec(X, Y) :- mê¿czyzna(X), rodzic(X, Y).
siostra(X, Y) :- rodzic(Z, X), rodzic(Z,Y), kobieta(X), X\=Y.
brat(X, Y) :- rodzic(Z, X), rodzic(Z, Y), mê¿czyzna(X), X\=Y.
babcia(X, Y) :- rodzic(Z, Y), rodzic(X, Z), kobieta(X).
dziadek(X, Y) :- rodzic(Z, Y), rodzic(X, Z), mê¿czyzna(X).
wuj(X,Y) :- matka(Z, Y), siostra(Z, X).
stryj(X,Y) :- ojciec(Z, Y), brat(Z, X).
kuzyn(X, Y) :- rodzic(Z, X), rodzic(A, Z), rodzic(A, C), rodzic(C, Y), mê¿czyzna(X), C\=Z.
teœciowa(X, Y) :- mê¿czyzna(Y), kobieta(X), matka(X, A), ma³¿eñstwo(Y, A).
szwagier(X, Y) :- mê¿czyzna(X), ma³¿eñstwo(Y, A), brat(X, A).
