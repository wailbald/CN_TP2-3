function [C] = matmat2b(A,B)
m = size(A,1)
n = size(B,2)
    for i = 1:m
        for j = 1:n
            C(i,j) = 0;
            C(i,j) = A(i,:)*B(:,j) + C(i,j);
        end
    end
endfunction
