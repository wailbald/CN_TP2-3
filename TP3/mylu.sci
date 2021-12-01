function [L,U,P] = mylu(A)
    n = size(A,1);
    P = zeros(n,n);
    for k = 1 : n - 1
        A(k+1:n, k) = A(k+1:n, k)/A(k, k);
        A( k + 1 : n,  k + 1 : n) = A( k + 1 : n,  k + 1 : n) - A( k + 1 : n, k) * A(k,  k + 1 : n);
        [piv, ind] = max(abs(A(k : n,k)));
        ind = k - 1 + ind;
        q = P(1,ind);
        if ind ~= k then
            new = A(ind,:);
            A(ind,:) = A(k,:);
            P(1,ind) = P(1,ind);
            P(1,k) = q;
        end
    end
    U = triu(A);
    L = tril(A);
    for i = 1 : n
        L(i,i) = 1;
    end
endfunction
