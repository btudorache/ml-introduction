Tudorache Bogdan Mihai 314CA

    Explicatii de rezolvare ale temei 1. Alte detalii de implementare se afla in fisierele sursa ale functiilor

    Task1 - Sparse Jacobi
    Generate_probabilities_system - construieste pe baza numarului de randuri matricea dorita prin folosirea unor formule matematice
    Matrix_to_csr - preia matricea A si o transforma in forma CSR pe baza algoritmului descris in enuntul problemei
    Jacobi_factorization - preia matricea A si vectorul sistemului liniar de ecuatii notat b si intoarce matricea de iteratie si vectorul de iteratie pentru metoda Jacobi pe baza formulelor specifice
    Jacobi_sparse - iteratia metodei Jacobi pana cand aflam solutiile pana in toleranta impusa

    Task2 - K-Means
    clustering_pc - functia preia punctele si numarul de clustere in care trebuie segmentate punctele, prelucreaza datele pe baza algoritmului descris in enuntul temei si intoarce lista centroizilor (mediile clusterelor). Initial, clusterele se formeaza oarecum aleatoriu, iar pe baza acestor clustere aleatorii se afla pozitiile centroizilor
    compute_cost_pc - functia intoarce suma distantelor de la fiecare punct pana la cel mai apropriat centroid

    Task3 - Householder prediction
    rgbHistogram - primeste o imagine si numarul de bins in care sa fie impartiti pixelii si intoarce un vector de dimensiune 3*bins ce reprezinta histograma RGB a pozei. 
    custom_rgb2hsv - functia transforma matricea imaginii din format RGB in HSV intr-un mod vectorizat, utilizand algoritmul descris in textul problemei
    hsvHistogram - primeste o imagine (in format RGB, pe care o transforma in format HSV) si numarul de bins in care sa fie impartiti pixelii si intoarce un vector de dimensiune 3*bins ce reprezinta histograma HSV a pozei. 
    Householder - algoritmul Householder de factorizare QR pentru o matrice care poate avea mai multe linii decat coloane
    SST - rezolvarea unui sistem superior triunghiular
    preprocess - functia intoarce o matrice de caracteristici X si vectorul de etichete y prin deschiderea folderului primit ca parametru si prelucrarea imaginilor din el
    learn - functia construieste vectorul de parametri ai modelului cu ajutorul functiilor Householder si SST
    evaluate - sunt evaluate numarul de estimari corecte prin verificarea fiecarei histograme in parte

    Task4 - Gradient Descent prediction
    learn - functia determina vectorul de parametri ai modelului cu ajutorul algoritmului Mini-batch Gradient Descent
    evaluate - sunt evaluate numarul de estimari corecte prin verificarea fiecarei histograme in parte, dar mai intai matricea este scalata
