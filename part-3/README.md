# Householder prediction
Studentul trebuie sa implementeze urmatoarele functii:

* `function [sol] = rgbHistogram(path_to_image, count_bins)`
	- Aceasta functie primeste ca parametri calea catre o imagine path_to_image si un numar de valori pentru axa orizontala a histogramei count si returneaza un vector linie sol de lungime count·3 care reprezinta histograma RGB a pozei de la calea primita ca parametru;

* `function [sol] = hsvHistogram(path_to_image, count_bins)`
	- Aceasta functie primeste ca parametri calea catre o imagine path_to_image si un numar de valori pentru axa orizontala a histogramei count si returneaza un vector linie sol de lungime count·3 care reprezinta histograma HSV a pozei de la calea primita ca parametru;

* ` function [Q, R] = Householder(A)`
	- Aceasta functie primeste ca parametru o matrice A (nu neaparat patratica) si returneaza o matrice ortogonala Q si o matrice superior triunghiulara R obtinute folosind factorizarea **Householder**.

* `function [x] = SST(A, b)`
	- Aceasta functie primeste ca parametru o matrice A (nu neaparat patratica) superior triunghiulara si un vector coloana b si returneaza un vector coloana x care este solutia sistemului Ax = b.

* `function [X, y] = preprocess(path_to_dataset, histogram, count_bins)`
	- Aceasta functie primeste ca parametri calea catre un set de imagini path_to_dataset, tipul histogramei (”RGB” sau ”HSV”) si un numar de valori pentru axa orizontala a histogramei countbins si returneaza o matrice de caracteristici X descrisa mai sus si un vector coloana de etichete y;

* `function [w] = learn(X, y)`
	- Aceasta functie primeste ca parametri o matrice de caracteristici X si un vector coloana de etichete y si returneaza vectorul de parametri ai modelului w aflat cu ajutorul **Householder** si **SST**.

* `function [percentage] = evaluate(path_to_testset, w, histogram, count_bins)`
	- Aceasta functie primeste ca parametri calea catre un set de imagini de testare path_to_testset, vectorul de parametri ai modelului w, tipul de histograma evaluata (”RGB” sau ”HSV”) si un numar de valori pentru axa orizontala a histogramei count_bins si returneaza un procentaj real intre 0 si 100 al numarului de imagini clasificate corect percentage.

Se doreste o acuratete de predictie mai mare de **0.7.**

Detaliile complete se gasesc in [enuntul problemei](https://github.com/btudorache/ml-introduction/blob/master/Tema%201%20-%202020.pdf)