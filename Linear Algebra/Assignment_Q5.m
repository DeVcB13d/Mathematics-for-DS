% 5) Find the Eigenvalues and Eigenvectors of the matrix

% [3 2;

% 0 5].

% Check whether the matrix is diagonalizeable or not?

A = [3 2 ; 0 5];


[V,D] = eig(A)

Iv =inv(V);

An = V*D*Iv

if An==A
    disp("diagonalizeable");
else
    disp("not diagonalizeable");
end