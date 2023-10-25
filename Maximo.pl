nota(a, 1).
nota(a, 5).
nota(a, 8).
nota(a, 9).

nota(b, 3).
nota(b, 3).
nota(b, 3).
nota(b, 3).

nota(c, 1).
nota(c, 4).
nota(c, 9).

nota(d, 4).

%Solucion nuestra
producto_cartesiano(Alumno,X, Y):-nota(Alumno, X), nota(Alumno, Y).
seleccion(Alumno,X, Y):-producto_cartesiano(Alumno,X, Y), X < Y. 
proyeccion(Alumno,X):-seleccion(Alumno,X, _).
max_nota(Alumno,X):-nota(Alumno, X), \+ proyeccion(Alumno,X).

%Solucion del profe
solucion_todos_menos_alta(A, X):-nota(A, X), nota(A, Y), X < Y.
solucion_mayor_nota(A, X):- nota(A, X), \+solucion_todos_menos_alta(A, X).