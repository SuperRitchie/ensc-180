%############################################################################
% <Lab 7>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: < This program calculates a volume vs pressure graph and 
% calculates linear regressions >
% Due date: < March.13, 2020 >
%
% Author: < Ritchie Kumar >
% Input: < table of volume and pressure values >
% Output: < graphs of one to fifth order polynomials with their linear regressions >
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___<Ritchie Kumar>_______
%############################################################################
volume = [1 2 3 4 5 6]; % Converting the volume (x axis) into a vector
pressure = [2494 1247 831 623 499 416]; % Converting the pressure (y axis) into a vector
plot(volume,pressure,'o'); % Plots the pressure vs volume graph with 'o' denoting a discrete graph
hold on % Keeps the plot, allowing for multiple graphs to go on the same plot

p1 = polyfit(volume,pressure,1); % Converts the respective vectors into their first, second ...
% n degrees polynomials
p2 = polyfit(volume,pressure,2);
p3 = polyfit(volume,pressure,3);
p4 = polyfit(volume,pressure,4);

poly1 = polyval(p1,volume); % Stores the polynomial evaluation (polyval function) 
% at each point x (volume)
poly2 = polyval(p2,volume);
poly3 = polyval(p3,volume);
poly4 = polyval(p4,volume);

plot(volume,pressure,volume, poly1); % Plots the evaluated polynomials 
plot(volume,pressure,volume, poly2);
plot(volume,pressure,volume, poly3);
plot(volume,pressure,volume, poly4);

xlabel('Volume, m^3') % Labeling the axes
ylabel('Pressure, kPa (I = 300K)')

title('Piston–cylinder interpolations')
% Titling the plot
legend('Piston–cylinder device with constant temperature', 'n = 1', 'n = 2', 'n = 3', 'n = 4', 'Linear regression') 
% Adding a legend to the plot

x = linspace(1,6,25); % Generates an array starting from 1 that increments by 0.2 per step up to 6
y = polyval(p3,x); % Plotting the linear regression based on n = 3 where delta x = 0.2

fprintf("The model with n = 3 seems to have the best linear representation of the table");