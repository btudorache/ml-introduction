# Gradient Descent prediction
Studentul trebuie sa implementeze urmatoarele functii:

* `function [w] = learn(X, y, lr, epochs)`
	- Aceasta functie primeste ca parametri o matrice de caracteristici X, un vector coloana de etichete y, un parametru numit rata de invatare lr si un numar de epoci epochs si returneaza vectorul de parametri ai modelului w aflat cu ajutorul algoritmului Mini-batch Gradient Descent.

* `function [percentage] = evaluate(path_to_testset, w, histogram, count_bins)`
	- Aceasta functie primeste ca parametri calea catre un set de imagini de testare path_to_testset, vectorul de parametri ai modelului w, tipul de histograma evaluata (”RGB” sau ”HSV”) si un numar de valori pentru axa orizontala a histogramei count_bins si returneaza un procentaj real intre 0 si 100 al numarului de imagini clasificate corect percentage.

Studentul poate folosi (si i se recomanda) celelalte functii implementate la partea a treia.

Se doreste o acuratete de predictie mai mare de **0.6** intrucat setul de date este mult mai mare decat la **part-3**, iar antrenarea se va face doar pentru 500 de epoci.

Detaliile complete se gasesc in [enuntul problemei](https://github.com/btudorache/ml-introduction/blob/master/Tema%201%20-%202020.pdf)