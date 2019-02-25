/*1 de que producto proviene cada alimento*/

deQueProviene(A,X):-
	alimento(A,X).
/*2 derivados */

esLacteo(A):-
	derivaDe(A,leche).

tieneGluten(A):-
	derivaDe(A,trigo).

derivaDeAnimal(A):-
	derivaDe(A,cerdo).

derivaDeAnimal(A):-
	derivaDe(A,vaca).

derivaDe(A,X):-
	alimento(A,Y),
	derivaDe(Y,X).

derivaDe(A,X):-
	alimento(A,X).


/* 3 modelar alimentos */
alimento(pan,trigo).
alimento(jamon,cerdo).
alimento(leche,vaca).
alimento(queso,leche).
alimento(arroz,-).