%**********************************************************************
% Lab 1: <Basic MATLAB Operations>
%
% Description:
% <This program identifies even and odd numbers.
% 
%
% Author: <Student K. Ritchie, ritchiek@sfu.ca>
% Date: <January 17, 2020>
%
% Input: 2
% Output: This is an even number
%
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: <Ritchie Kumar>
%*********************************************************************/


function lab1a() % Defining the function
num = input("Please enter a number: ") % Asking for input
if num % 2 == 0
    fprintf("This is an even number") % All even numbers are evenly divisible by 2
else
    fprintf("This is an odd number") % If the number isin't even, then it is odd assuming the user entered a number
end




