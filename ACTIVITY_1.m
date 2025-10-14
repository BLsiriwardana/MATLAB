% ACTIVITY 01
%1- If  x=[1 4; 8 3],  find : 
% a) the inverse matrix of  x . 
% b) the diagonal of x. 
% c) the sum of each column and the sum of whole matrix x. 
% d) the transpose of x. 

X = [1 4; 8 3];

INVERSE_X = inv(X);

DIAGONAL_X = diag(X);

SUM_COLUMN_X = sum(X);

SUM_X = sum(sum(X));

TRANS_X = transpose(X);

% 2- If  A= [2 8 5; 9 7 1],  B=[2 4 5]  find: 
%  a) find the maximum and minimum of A. 
%  b) find median value over each row of A. 
%  c) add the vector B as a third row to A. 

A = [2 8 5; 9 7 1];

B = [2 4 5];

MAXIMUM_A = max(max(A));

MINIMUM_A = min(min(A));

MEDIAN_EACH_ROW = median(A,2);

A(3,:) = B(1,:);

% 3- If C=[ 2 6 12; 15 6 3; 10 11 1], then 
%  a) replace the first row elements of matrix  x with its average value. 
%  b) reshape this matrix into row vector. 

C = [ 2 6 12; 15 6 3; 10 11 1];

C(1,:) = mean(C(1,:));

ROW_C(1,:) = [ C(1,:) C(2,:) C(3,:) ];

% 4- Generate a  4 x 4 Identity matrix

D = tril(triu(ones(4,4)));

% Generate the following row vector  E=[5, 10, 15, 20 . . . . . . . . . 95, 100], then find the 
% number of elements in this vector.

E = [5:+5:100]

LENGTH_E = length(E)