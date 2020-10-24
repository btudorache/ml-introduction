# Sparse Jacobi
Studentul trebuie sa implementeze urmatoarele functii:

* `function [A, b] = generate probabilities system(rows)`
    - Aceasta functie primeste ca parametru numarul de randuri rows > 2 pe care le are diagrama din
Figura 1 si returneaza sistemul de ecuatii reprezentat de matricea A (in forma sa densa) si de vectorul b.

* `function [values, colind, rowptr] = matrix to csr(A)`
    - Aceasta functie primeste ca parametru o matrice A (in forma sa densa) si returneaza vectorii ce reprezinta forma sa **CSR**.

* `function [G_J, c_J] = Jacobi factorization(A, b)`
    - Aceasta functie primeste ca parametri o matrice A (in forma sa densa) si un vector b ce reprezinta
un sistem liniar de ecuatii si returneaza matricea de iteratie GJ si vectorul de iteratie cJ reprezentative pentru metoda **Jacobi**.

* `function [x] = Jacobi sparse(G_values, G_colind, G_rowptr, c, tol)`
    - Aceasta functie primeste ca parametri matricea de iteratie GJ in forma sa **CSR**, vectorul de
iteratie cJ si o toleranta tol sub care se pot opri iteratiile si returneaza vectorul x ce reprezinta
solutia sistemului;
    - Vectorul initial cu care se aproximeaza solutia este egal cu 0.

Detaliile complete se gasesc in [enuntul problemei](https://github.com/btudorache/ml-introduction/blob/master/Tema%201%20-%202020.pdf)