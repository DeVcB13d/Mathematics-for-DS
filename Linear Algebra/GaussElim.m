function [AN,bN] = GaussElim(A,b)
    A = [A b];
    U = A;
    M = eye(3);

    [N,M] = size(A);
    for i = 1:N-1
        for j = i+1:N
            k = U(j,i)/U(i,i)
            U(j,:) = U(j,:) - k*U(i,:);
        end
    end
    disp(U)
    AN = A()
end