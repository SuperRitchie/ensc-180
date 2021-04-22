%############################################################################
% <Lab 5>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: < This program adds or multiplies two matrices A and B
% called by a function
% given that they are compatible, else an error statement is printed>
% Due date: < February.29, 2020 >
%
% Author: < Ritchie Kumar >
% Input: < A square matrix for both A and B >
% Output: < The added matrix addAB and the multiplied matrix multAB >
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Ritchie Kumar_______
%############################################################################
function [addAB, multAB] = lab5b_Kumar_Ritchie(A, B);
% function constructor/initialization
[m1, n1] = size(A); 
[m2, n2] = size(B);
% Finding the dimensions of the matrices, m denoting
% rows and n columns of matrices 1 and 2

% Determining whether matrix addition can be done,
% where the dimensions of A must equal the dimensions of B
if n1 == n2 && m1 == m2 
    addAB = (A + B) % Doing the matrix addition and printing it
else 
    addAB = "The inputted matrices cannot be added together"
end

% The matrices are either compatible or non-compatibles
% for addition or multiplication, thus only an else 
% statement is needed to check between the two conditions
    
% Determining whether matrix multiplication can be done,
% where the number of columns of A (n1) must equal the number of 
% rows in B (m2)
if n1 == m2 
    multAB = (A * B) % Doing the matrix multiplication and printing it
else
    multAB = "The inputted matrices cannot be multiplied together"
end
clear
end