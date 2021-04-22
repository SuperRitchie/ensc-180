%############################################################################
% <Lab 6>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: <Give a brief description for homework 1>
% Due date: < March.6, 2020 >
%
% Author: < Ritchie Kumar >
% Input: <inputY by running the program>
% Output: < a column vector y consisting of 2000 randomly generated numbers
% with a standard deviation of 10 and mean of 7 with the mean and standard
% deviation of the vector printed afterwards >
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___<PUT DOWN YOUR NAME HERE>_______
%############################################################################
standardDeviation = 10; % variable identified as the standard deviation of 
% the vector (how far the average data is from a given element)
meanY = 7; % variable determining the mean of the vector, that is the sum of the elements
% divided by 2000
y = standardDeviation.*randn(2000,1) + meanY % generation of the vector, 2000
% is the upper bound and 1 is the lower bound
meanY = mean(y) % shows the mean (average) of y which is close to but not exactly
% 7
stdY = std(y) % shows standard deviation of y which is close to but not exactly
% 10