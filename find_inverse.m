% finding inverse matrix : (normal method)
% finding cofactor values of 3 by 3 matrix :

A = [4 5 6; 7 8 9; 1 2 3]; % create matrix

% creating function 

function [INVERSE_A] = inverse_matrix(A)

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

disp(INVERSE_A);

end % end of function


inverse_matrix(A)