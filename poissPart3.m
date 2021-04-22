%############################################################################
% <Lab 6>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: < Performs Poisson operations >
% Due date: < March.6, 2020 >
%
% Author: < Ritchie Kumar >
% Input: < A Poisson generated parameter >
% Output: < A histogram of the Poisson generated data along with a general linear
% trend >
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Ritchie Kumar_______
%############################################################################
% Generate numbers 
A = poissrnd(5, 1, 1000);

% Obtain history and normalize count 
B = hist(A);
B = B / sum(B);

% Plot normalized histogram into bar graph 
bar(B, 'DisplayName', 'Experimental histogram')
hold on

% Plots Poisson distribution %
y = poisspdf(A, 5)
plot(A,y)
hold off

xlabel('Value')
ylabel('Probability')
legend('show')