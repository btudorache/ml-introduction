function [A, b] = generate_probabilities_system(rows)
  ec = rows * (rows+1) / 2;
  A = zeros(ec, ec);
  for i = 1:rows
    firstelem = ((i-1)*i/2 + 1);
    lastelem = ((i-1)*i/2 + i);
    for j = firstelem:lastelem
        % formarea elementelor de pe diagonala matricei
        if (i == 1 || (i == rows && (j == lastelem || j == firstelem)))
          A(j, j) = 4;
        elseif (j == firstelem || j == lastelem || i == rows)
          A(j, j) = 5;
        else
          A(j, j) = 6;
        endif
        
        % prelucrarea elemntelor care se afla in marginea "triunghiului" de probailitati
        if (j == firstelem && i == 1)
          A(j, k = j+1 : j+2) = -1;
        elseif (j == firstelem && i == rows)
          A(j, ((i-2)*(i-1)/2 + 1)) = -1;
          A(j, j+1) = -1;
        elseif (j == lastelem && i == rows)
          A(j, ((i-2)*(i-1)/2 + (i-1))) = -1;
          A(j, j-1) = -1;
        elseif (j == firstelem)
          A(j, j+1) = -1;
          firstelem_upper = ((i-2)*(i-1)/2 + 1);
          A(j, firstelem_upper) = -1;
          firstelem_lower = (i*(i+1)/2 + 1);
          A(j, k = firstelem_lower:firstelem_lower+1) = -1;
        elseif (j == lastelem)
          A(j, j-1) = -1;
          lastelem_upper = ((i-2)*(i-1)/2 + (i-1));
          A(j, lastelem_upper) = -1;
          lastelem_lower = (i*(i+1)/2 + (i+1));
          A(j, k = lastelem_lower-1:lastelem_lower) = -1;
        elseif (i == rows)
          A(j, j-1) = -1;
          A(j, j+1) = -1;
          A(j, k = (j - rows):(j-rows+1)) = -1;
        % prelucrarea elementelor din interiorul "triunghiului" de probabilitati
        else
          A(j, j-1) = -1;
          A(j, j+1) = -1;
          A(j, k = (j-i):(j-i+1)) = -1;
          A(j, k = (j+i):(j+i+1)) = -1;     
        endif
    endfor
  endfor
  % formarea coloanei libere
  b = zeros(ec, 1);
  b(i = (ec - rows + 1):ec, 1) = 1;
endfunction