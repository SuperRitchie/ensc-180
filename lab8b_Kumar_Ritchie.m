%############################################################################
% <Lab 8>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: < This program uses the Newton-Raphson method to calculate 
% the roots of a function>
% Due date: < March.20, 2020 >
%
% Author: < Ritchie Kumar >
% Input: < a function >
% Output: < the roots of the function calculated through the Newton-Raphson method >
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Ritchie Kumar_______
%############################################################################
xn = 3.2; % Defining x-initial, the nth iteration
x(1,1) = xn; % Defining an array of saved values
f = @(x)tanh(x.^2 - 9); % Defining f, the original function
g = @(x)2.*x.*(1 - tanh(x.^2 - 9).^2); % Defining g, the derivative of f
n = 3; % 3 iterations
counter = 0; % Counter starts at 0
while(counter < n) % a while loop that runs 3 times
    xn = xn - (f(xn) / g(xn)); % Newton-Raphson Method formula
    x(1,(counter + 2)) = xn; % Saving the elements to an array
    counter = counter + 1; % increment the counter
end
hold on % Hold on to the plots to have multiple graphs in one plot
xaxis = linspace(0,4); % Creating a linspace for the plot
plot(xaxis, f(xaxis)); % Plotting f(x)
y = f(x);
plot(x(1,1),y(1,1),'o'); % Plots the discrete values with 'o' denoting a discrete graph
plot(x(1,2),y(1,2),'o');
plot(x(1,3),y(1,3),'o');
% Omit the last result as it was highly inaccurate

xlabel('x') % Labeling the axes
ylabel('y')
title('tan(x^2 - 9)')
% Titling the plot
legend('tan(x^2 - 9)', 'n = 1', 'n = 2', 'n = 3') 
% Adding a legend to the plot

fprintf("The method did not exhibit convergence onto its real root as the Newton-Raphson method diverges on the third iteration"); % Print the results