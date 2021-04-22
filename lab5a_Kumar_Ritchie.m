%############################################################################
% <Lab 5>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: < This program calculates various components of pre-inputted
% matrices >
% Due date: < February.29, 2020 >
%
% Author: < Ritchie Kumar >
% Input: < (Run the program) >
% Output: < (The calculations of the given matrices with label on top) >
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Ritchie Kumar_______
%############################################################################
 [A]=[4 3 1;3 7 -1; 1 -1 9]; % Initialization and declaration of the matrices
 [B]= [10 8 7; 3 -3 0; 14 1 7];
 [C]= [1 -1; 4 7; 9 5];
 
 disp("A + B"); % Labeling the displayed outputs
 disp(A + B); % Using the disp(x) function to display the required matrices,
 % can simply disp/input A + B, no special function required
 
 disp("A - 2B");
 disp(A - 2*B);
 
 disp("AC");
 disp(A * C);
 
 disp("A^T");
 disp(A');
 
 disp("AA^T");
 disp(A*A');
 
 disp("(A^-1)(B^-1)");
 disp(inv(A) * inv(B)); % Using MatLab's inv(x) matrix function
 
 disp("rank of A and C"); % Using the MatLab's rank(x) matrix function
 disp(rank(A));
 disp(rank(C));
 
 disp("determinant of A");
 disp(det(A)); % Using MatLab's matrix det(x) function
 
 disp("[A]{x} = [C]"); % Solving for x, x = (A^-1)(C), so the function is 
 % replicated below
 disp("x = ");
 disp(linsolve(A,C));