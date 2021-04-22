%############################################################################
% <Lab 5>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: < This program finds the determinant of a matrix A - alphaI
% in terms of alpha >
% Due date: < February.29, 2020 >
%
% Author: < Ritchie Kumar >
% Input: < Matrix A  >
% Output: < The eigenvalues of Matrix A, compared with the determinant of
% roots of the determinant equation for A - alpha[I]>
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Ritchie Kumar_______
%############################################################################
[A]=[4 3 1;3 7 -1; 1 -1 9];
I = eye(3);
syms alpha; % Makes MatLab consider this variable as a symbol
matrixDeterminant = det(A - alpha * I) % Returns the determinant in terms of alpha, a symbolic 
% variable
rootsAlpha = roots([-1 20 -116 154]) % Determines the roots to the matrixDeterminant
% I must be a 3 x 3 identity matrix as two matrices need to have the same
% dimensions for subtraction to be possible (A is 3 x 3)
[eigvectorA, eigenvalueA] = eig(A) % Determines the eigenvectors and 
% values of A respectively
% Check that the eigenvalues are equal to the roots