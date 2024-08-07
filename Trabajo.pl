%program:-readln(L),nth0(0,L,A),nth0(1,L,B),C is A+B,write(C).


%area de un triangulo dados su base y su altura
atriangle(B,A,R):-R is B*A//2.


%area de rectangulo dados sus 2 lados
arect(A,B,X):-X is A*B.


%area de un cuadrado dado un lado
asquare(A,R):-R is A^2.


%volumen de la esfera dado su radio
vesfera(R,V):-V is 4/3*3.14*R^3.


%volumen piramide de base cuadrada y rectangular
vpiramidec(A,B,C,X):-arect(A,B,X1),X is X1*C/3.
%volumen piramide de base triangular
vpiramidet(A,B,C,X):-atriangle(A,B,X1),X is X1*C/3.


%comprueba si tres valores dados forman un triangulo
istriangle(A,B,C):-A>0,B>0,C>0,A<B+C,B<A+C,C<A+B.

isprime(A):-


%fibonacci
fibonacci(0,0).
fibonacci(1,1).
fibonacci(X,R):- X>0 , M is X - 1 , N is X-2 , fibonacci(M, R1), fibonacci(N, R2), R is R1 + R2.


%factorial
factorial(0, 1).
factorial(1, 1).
factorial(N, F) :- N>0, N1 is N - 1, factorial(N1, F1), F is N * F1.


%La longitud de una lista vacia es 0, le paso una lista y m devuelve la longitud
longitud([],0).
longitud([_|X],Y):-longitud(X,Y1), Y is Y1 + 1.


% El elemento pertenece a la lista si coincide con la cabeza de la lista,
% o si se encuentra en la cola de la lista.
pertenece(X,[X|_]).
pertenece(X,[_|R]):- pertenece(X,R).
