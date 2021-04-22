%**********************************************************************
% Lab 1: <Basic MATLAB Operations>
%
% Description:
% This program identifies the max value of a given array A.
% 
%
% Author: <Student K. Ritchie, ritchiek@sfu.ca>
% Date: <January 17, 2020>
%
% Input: 
% Output: 
%
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: <Ritchie Kumar>
%*********************************************************************/

A = rand(3) % Random 3 x 3 array

maximumNumber = max(max(A)) % Inner max: find the row of the max element. Outer row: find the max element of the row

[row, col] = find(maximumNumber == A) % Assign the row and column variables by matching the max number's position to the array

fprintf('Max(A) is A(%2d, %2d) = %5.4f', row, col, maximumNumber) % Print the results




