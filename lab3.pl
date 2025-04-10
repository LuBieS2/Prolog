next(œwinoujœcie,ko³obrzeg).
next(œwinoujœcie, szczecin).
next(ko³obrzeg,ustka).
next(ustka, gdañsk).
next(gdañsk,toruñ).
next(gdañsk,olsztyn).
next(olsztyn,toruñ).
next(olsztyn,bia³ystok).
next(szczecin,bydgoszcz).
next(szczecin, gorzów-wlkp).
next(bydgoszcz,toruñ).
next(bydgoszcz,poznañ).
next(poznañ,toruñ).
next(gorzów-wlkp,poznañ).
next(gorzów-wlkp,zielona-góra).
next(zielona-góra,poznañ).
next(zielona-góra,wroc³aw).
next(toruñ,³ódŸ).
next(toruñ,warszawa).
next(bia³ystok, warszawa).
next(bia³ystok,lublin).
next(poznañ,³ódŸ).
next(warszawa,radom).
next(warszawa,³ódŸ).
next(radom,lublin).
next(radom,kielce).
next(wroc³aw,³ódŸ).
next(³ódŸ,radom).
next(³ódŸ,czêstochowa).
next(czêstochowa,kielce).
next(czêstochowa,katowice).
next(katowice,kraków).
next(kielce,kraków).
next(kielce,rzeszów).
 next(lublin,kielce).
next(lublin,rzeszów).
next(kraków,rzeszów).

po³¹czenie(A,B) :- next(A,B).
po³¹czenie(A,B) :- next(A,Z), po³¹czenie(Z,B).

zjazd(X,Y,X) :- next(X,Y).
zjazd(X,Y,Z) :- next(X, A), zjazd(A, Y, Z).

trasa(X, Y, obok(X, Y)) :- next(X, Y).
trasa(X, Y, obok(X, A)) :- next(X, B), trasa(B, Y, A).

trasa2(X, Y, obok(X, Y)) :- next(X, Y).
trasa2(X, Y, obok(A, Y)) :- next(Z, Y), trasa2(X, Z, A).

trasa3(X, Y, [X,Y]) :- next(X,Y).
trasa3(X, Y, [X|C]) :- next(X,Z), trasa3(Z, Y, C).
