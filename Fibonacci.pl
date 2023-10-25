fibonacci(1,1).
fibonacci(2,1).
fibonacci(N,Resultado):-
    N > 2, 
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1 , Parcial1), 
    fibonacci(N2 , Parcial2), 
    Resultado is Parcial1 + Parcial2.

fibonacciOptimizado(0,0).
fibonacciOptimizado(N, Valor):-
    fibonacciOptimizado(N, Valor,_).

fibonacciOptimizado(1,1,0). %Tail Recursion :) 
fibonacciOptimizado(N, Valor,Parcial1):-
	N > 1,
    N1 is N - 1,
    fibonacciOptimizado(N1,Parcial1, Parcial2),
    Valor is Parcial1 + Parcial2.