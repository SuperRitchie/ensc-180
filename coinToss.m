%############################################################################
% <Lab 6>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: < Simulates a coin flip 5000 times along with a visual of
% the probability of getting 'Heads' >
% Due date: < March.6, 2020 >
%
% Author: < Ritchie Kumar >
% Input: < 5000 random numbers between 0 and 1 >
% Output: < a 1 x 5000 array indicating whether heads or tails was flipped along 
% with a plot indicating probability >
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___<PUT DOWN YOUR NAME HERE>_______
%############################################################################

x = rand(1,5000); % generates a 1 x 5000 array of numbers between 0 and 1
y = x>0.5; % Assuming fair coin flip, there is a 50% chance of landing each
% side, so y splits x into 0 and 1, where either number represents a
% 'heads' flip or 'tails' flip
headsCounter = 0;
tailsCounter = 0;
A = [];
for ii = 1:5000 % ii is the index from 1 to 5000
    if y(1,ii) == 0 % the array is 1 row, only the columns change
        headsCounter = headsCounter + 1; % choose 0 (false) to equal heads and 
        % 1 (true) to be tails 
        A = [A (headsCounter/ii)];
    else
        tailsCounter = tailsCounter + 1;
        A = [A (tailsCounter/ii)];
    end
end
headsCounter; % prints the number of heads flipped
tailsCounter; % the number of tails can be calculated this way,
% as the number of tails is the remainder of coins flips that were not
% heads

xPlot = 1:5000; % x is points 1 to 5000 incrementing by 1
yPlot = A; % plotting the probability of getting heads based on calculated values A
plot(xPlot, yPlot);
hold on
plot(xPlot, 0.5); % Graphing a horizontal line of y = 0.5
xlabel('Number of coin flips') % Labeling the axes
ylabel('Probability of heads')
title('Sample probability of Heads in n flips of a simulated coin')
% Titling the plot
legend('Sample probablity','Fair coin') % Adding a legend to the plot
axis tight
