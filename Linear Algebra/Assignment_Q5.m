% 5) Find the Eigenvalues and Eigenvectors of the matrix

% [3 2;

% 0 5].

% Check whether the matrix is diagonalizeable or not?

A = [3 2 ; 0 5];

EigenValues = [3;5];
% Since it is a UTM its diagonal entries are its EigenVectors

EV = eig(A);
