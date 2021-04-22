%############################################################################
% <HW 2>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: < This program initializes a 1D array and determines its 
% size, min/max values, mean/median values, and standard deviation. The
% program also re-sorts the array from smallest to largest using 
% pre-implemented functions>
% Due date: < January.24, 2020 >
%
% Author: < Ritchie Kumar >
% Input: <>
% Output: <>
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___<Ritchie Kumar>_______
%############################################################################

A = [3.1 5.8 6.3 2.6 2.1 7.0 5.0 8.2 4.2];
sizeA = size(A) % Determines the size of array, returning in the format (rows 
% columns)
minVal = min(A) % Determines min value of A
maxVal = max(A) % Determines max value of A
modeA = mode(A) % Determines middle-positioned value of A
meanA = mean(A) % Determines average of A (sum of elements / 9)
medianA = median(A) % Determines the median of A
stdVal = std(A) % Determines standard deviation of A
A = sort(A) % Sorts A from smallest value to largest value