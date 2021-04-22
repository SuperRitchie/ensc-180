%############################################################################
% <Lab 3>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: <This script reads and writes an Excel file containing Apple
% stocks and plots them>
% Due date: <January.31, 2020>
%
% Author: < Ritchie Kumar >
% Input: < IF ANY>
% Output: < IF ANY >
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___Ritchie Kumar_______
%############################################################################

data = readtable('AAPL.csv', 'Headerlines', 1);

date = data(:,1);
dateA = table2array(date);

open = data(:,2);
openA = table2array(open);

high = data(:,3);
highA = table2array(high);

low = data(:,4);
lowA = table2array(low);

close = data(:,5);
closeA = table2array(close);

adjclose = data(:,6);
adjcloseA = table2array(adjclose);

volume = data(:,7);
volumeA = table2array(volume);


figure, plot(dateA,openA);
figure, plot(dateA,highA);
figure, plot(dateA,lowA);
figure, plot(dateA,closeA);

average = (openA + closeA) ./ 2;
averageP = array2table(average);
data(:,8) = averageP;



fclose('all'); % closes all open files