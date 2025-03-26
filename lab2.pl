pionowy(odcinek(punkt(X1,Y1), punkt(X2,Y2))) :- X1=X2.
poziomy(odcinek(punkt(X1,Y1), punkt(X2, Y2))) :- Y1=Y2.
regularny(prostok¹t(punkt(X1,Y1),punkt(X2,Y2),punkt(X3,Y3),punkt(X4,Y4))) :- X1=X4, Y1=Y2, Y4=Y3, X2=X3.
