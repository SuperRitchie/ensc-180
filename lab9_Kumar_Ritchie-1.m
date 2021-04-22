%############################################################################
% <Lab 9>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: < This program calculates integrals using Matlab and cotes function >
% Due date: < March.27, 2020 >
%
% Author: < Ritchie Kumar >
% Input: < functions to be integrated >
% Output: < the definite integrals evaluated from 0 to 1 using the Summed Newton-Cotes
% rules and the Matlab integral function with their differences commented >
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___<Ritchie Kumar>_______
%############################################################################
% Cite the cotes function:
% Greg von Winckel (2020). Summed Newton-Cotes Rules (https://www.mathworks.com/matlabcentral/fileexchange/8999-summed-newton-cotes-rules), 
% MATLAB Central File Exchange. Retrieved March 27, 2020. 
format long % Displays more points after the decimal
f1 = @(x)(1 + x.^2).^(3./2); % Defining the functions
f2 = @(x)exp(-x.^(2));
f3 = @(x)sin(x).*tan(x);

% Calling the cotes function from the linked cotes.m file
% to calculate integrals, this function takes the parameters in the form of 
% (function, lower bound, upper bound, grid points, nodes)
% the number of grid points was not specified for this lab
% Putting the values into vectors to allow easy tabulation
% Using tic and toc to find computation time
tic
cote(1,1) = cotes(f1,0,1,100,8);
cotesTime(1,1) = toc;

tic
cote(2,1) = cotes(f2,0,1,100,8);
cotesTime(2,1) = toc;

tic
cote(3,1) = cotes(f3,0,1,100,8);
cotesTime(3,1) = toc;

% Using MatLab's integral function to calculate the given integrals
% Takes the parameters (function, lower bound, upperbound)
% Putting the values into vectors
tic
integrals(1,1) = integral(f1,0,1); 
integralTime(1,1) = toc;

tic
integrals(2,1) = integral(f2,0,1);
integralTime(2,1) = toc;

tic
integrals(3,1) = integral(f3,0,1);
integralTime(3,1) = toc;

% Calculate numerical difference
numDiff(1,1) = abs(integrals(1,1) - cote(1,1));
numDiff(2,1) = abs(integrals(2,1) - cote(2,1));
numDiff(3,1) = abs(integrals(3,1) - cote(3,1));

% Calculate time differences
timeDiff(1,1) = abs(cotesTime(1,1) - integralTime(1,1));
timeDiff(2,1) = abs(cotesTime(2,1) - integralTime(2,1));
timeDiff(3,1) = abs(cotesTime(3,1) - integralTime(3,1));

% Formulate tables based on the vectors
numTable = table(integrals, cote, numDiff)
timeTable = table(integralTime, cotesTime, timeDiff)

% Print a statement summarizing the results
% Sidenote: The integrations found from the Matlab integral function are
% considered to be exact
fprintf("MatLab is more precise by default but consistently performs slower than cotes.\n")
fprintf("Cotes method also has more parameters, which can widely vary its accuracy and time")
