function [values, colind, rowptr] = matrix_to_csr(A)
  n = rows(A);
  nz = 0;
  % numararea elementelor din matrice
  for i = 1:n
    for j = 1:n
      if (A(i,j) != 0)
        nz+=1;
      endif
    endfor
  endfor
  values = zeros(1, nz);
  colind = zeros(1, nz);
  rowptr = zeros(1, n+1);
  rowptr(1,n+1) = nz+1;
  nz = 0;
  % transformarea in forma CSR
  for i = 1:n
    first_in_line = 1;
    for j = 1:n
      if (A(i,j) != 0)
        nz+=1;
        values(nz) = A(i,j);
        colind(nz) = j;
        if (first_in_line == 1)
          rowptr(i) = nz;
          first_in_line = 0;
        endif
      endif
    endfor
  endfor
endfunction