% we can solve linear equations from matrix
% we use this method : 
% AX = B  { A - Co-efficient of equations, x - unknowns, B - solutions of
% both equations }
% both sides multiply by invers A:
% X = invers A * B

% Q2 :
% x + y - 2z = 3
% 2x + y = 7
% x + y -z = 4 

A = [1 1 -2; 2 1 0; 1 1 -1 ];

B = [3; 7; 4];

SOLUTION_MATRIX_1 = inv(A) * B; 

disp("x = "+ SOLUTION_MATRIX_1(1,1)+" | y = "+SOLUTION_MATRIX_1(2,1) + " | z = "+SOLUTION_MATRIX_1(3,1))

linear_solving(A,B);

% creating function 

function [] = linear_solving(A,B)

% finding cofactors

MINOR_11 =  det(A(2:3,2:3));
COFACTOR_11 = (-1)^2 * MINOR_11;

MINOR_12 =  det([A(2,1) A(2,3); A(3,1) A(3,3)]);
COFACTOR_12 = (-1)^3 * MINOR_12;

MINOR_13 =  det(A(2:3,1:2));
COFACTOR_13 = (-1)^4 * MINOR_13;


MINOR_21 =  det([A(1,2:3); A(3,2:3)]);
COFACTOR_21 = (-1)^3 * MINOR_21;

MINOR_22 =  det([A(1,1) A(1,3); A(3,1) A(3,3)]);
COFACTOR_22 = (-1)^4 * MINOR_22;


MINOR_23 =  det([A(1,1:2); A(3,1:2)]);
COFACTOR_23 = (-1)^5 * MINOR_23;

MINOR_31 =  det(A(1:2,2:3));
COFACTOR_31 = (-1)^4 * MINOR_31;

MINOR_32 =  det([A(1,1) A(1,3); A(2,1) A(2,3)]);
COFACTOR_32 = (-1)^5 * MINOR_32;

MINOR_33 =  det(A(1:2,1:2));
COFACTOR_33 = (-1)^6 * MINOR_33;

% create cofactor matrix

COFACTOR_A = [COFACTOR_11 COFACTOR_12 COFACTOR_13;
              COFACTOR_21 COFACTOR_22 COFACTOR_23;
              COFACTOR_31 COFACTOR_32 COFACTOR_33];

% find adjoin matrix

ADJOIN_A = transpose(COFACTOR_A);

% find invers matrix

INVERSE_A = ADJOIN_A / det(A);

%disp(INVERSE_A);

%finding solution matrix

SOLUTION_MATRIX_2 = INVERSE_A * B; 

disp("x = "+ SOLUTION_MATRIX_2(1,1)+" | y = "+SOLUTION_MATRIX_2(2,1) + " | z = "+SOLUTION_MATRIX_2(3,1))

end % end of function