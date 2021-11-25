function [C] = matmat1b(A,B)
m = size(A,1)
    for i = 1:m
        C(i,size(A,2)) = 0
        C(i,:) = A(i,:)*B(:,:) + C(i,:);
    end
endfunction
