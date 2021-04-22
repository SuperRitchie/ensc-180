%############################################################################
% <Lab 5>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: < This program solves the linear equation system Ax = b using
% the Guass-Jordan elimination method >
% Due date: < February.29, 2020 >
%
% Author: < Ritchie Kumar >
% Input: < a square matrix A and vector b >
% Output: < The solution x >
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Ritchie Kumar_______
%############################################################################
q1A = [4 3 1;3 7 -1;1 -1 9]; % Matrix from Q1 for j)
q1C = [1 -1;4 7;9 5]; % Matrix from Q1 for j)
% Plug in q1A for A input matrix and q1C for b input matrix for solution
% to Q1 j)
A = input("Enter your A matrix: ");
[m1, n1] = size(A); % Dimensions of A
b = input("Enter your B matrix: ");
[m2, n2] = size(b); % Dimensions of b
reduced = rref(A); % Reduces the matrix A to row echelon form, this is the
% form of the matrix required to determine the rank of the matrix
if(det(A) ~= 0 && n1 == m2) % The matrix is invertible when the determinant is not equal
    % to zero
    disp("A solution exists as the rank of A is equal to the size of A");
    gauss = rref([A b]) % Combines Matrix A and b, and performs elementary
    % row operations to the combined matrix to produce a solution
    x = linsolve(A,b) % does inverse of A multiplied by b - a solution
else % 2 conditions, so either one or else the other statement to catch non-compatible
    % inputs
    disp("The rank of A is less than the size of A, thus there is no solution (or the dimensions are incompatible)");
end