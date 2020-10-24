# K-Means clustering
Studentul trebuie sa implementeze urmatoarele functii:

* `function [centroids] = clustering pc(points, NC)`
	- Aceasta functie primeste ca parametri un vector de puncte D-dimensionale (matrice N ×D) points si numarul de clustere in care trebuie segmentate punctele NC si trebuie sa returneze un vector
de puncte centroids ce reprezinta mediile (centrele de masa) ale clusterelor.

* `function [cost] = compute cost pc(points, centroids)`
	- Aceasta functie primeste ca parametri un vector de puncte D-dimensionale (matrice N ×D) points si un vector de centroizi centroids si returneaza **costul** clustering-ului, adica suma distantelor euclidiene de la fiecare punct din points la centroidul clusterului caruia ii apartine. Acest cost trebuie sa fie minim.

Detaliile complete se gasesc in [enuntul problemei](https://github.com/btudorache/ml-introduction/blob/master/Tema%201%20-%202020.pdf)