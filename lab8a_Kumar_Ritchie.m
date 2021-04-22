%############################################################################
% <Lab 8>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: < This program uses the bisection method to evaluate the roots of a function>
% Due date: < March.20, 2020 >
%
% Author: < Ritchie Kumar >
% Input: < a function >
% Output: < the roots of the function calculated through the bisection method >
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Ritchie Kumar_______
%############################################################################
f = @(x)x.^3 - 4; % Defining the function to be evaluated
root = 4^(1/3); % The real root solution of the function
a = 1; % Defining the lower and upper bounds respectively
b = 3;
x0 = (a + b)/2 % Calculating x-initial
c = (a+b)/2; % c is defined as the midpoint between a and b
n = 3; % Number of iterations
x(1,1) = x0; % Setting x0 as a saved value to an array
counter = 0; % Initial counter
while (counter < n) % While loop that runs 3 iterations
if (sign(f(a))==sign(f(c))) % Checks if the sign of f(a) is the same sign as f(c)
a = c;
counter = counter + 1;
else % Either the f(a) or f(b) is positive - binary operator
b = c;
counter = counter + 1;
end
c = (a+b)/2 % Midpoint is updated and printed
x(1,(counter + 1)) = c; % Saving the values x1,x2 ... into a matrix to save
% the values, counter + 1 because x0 is already defined
end
counter2 = 0; % Second counter for second while loop
while(counter2 < 4) % Calculate error and percentage error of x0,x1 ...
    x(1, counter2 + 1) % Display the element of error being calculated
    error = abs(x(1, counter2 + 1) - root) % Calculate error which is 
    % the difference between the two values, always positive so use abs
    percenterror = abs((x(1, counter2 + 1) - root) / (root)) * 100 
    % Calculate percent error, which is ((observed - real) / (real)) * 100
    % use abs for positive values
    counter2 = counter2 + 1;
end