function [x] = Jacobi_sparse(G_values, G_colind, G_rowptr, c, tol)
  n = length(G_rowptr) - 1;
  x0 = zeros(n, 1);
  x = zeros(n, 1);
  s = zeros(n, 1);
  ok = 1;
  % iterarea metodei Jacobi pentru aflarea solutiilor sistemului de ecuatii
  while (ok == 1)
    x = csr_multiplication(G_values, G_colind, G_rowptr, x0) + c;
    if (norm(x - x0) < tol)
      ok = 0;
      break;
    endif
    x0 = x;
  endwhile
endfunction