function [Q,R] = QR_decompose(A)
    Q = GS_Orthonormalise(A);
    R = Q'*A;
end
