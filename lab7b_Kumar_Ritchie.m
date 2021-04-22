%############################################################################
% <Lab 7>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: < This program graphs o vs temperature and estimates o(27) > 
% 
% Due date: < March.13, 2020 >
%
% Author: < Ritchie Kumar >
% Input: < x (temperature) and y (o or density) >
% Output: < a graph with an estimation of o(27) >
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___<Ritchie Kumar>_______
%############################################################################
temperature = [0 8 16 24 32 40]; % convert the temperature into a vector
o = [14.621 11.843 9.870 8.418 7.305 6.413]; % conver the density into a vector
templine = linspace(0,40); % linespace from 0 to 40
densint = interp1(temperature, o, templine); % creates a variable densint with the y parameter as temperature
spli = spline(temperature, o, templine); % creates a splice of the given parameters

pfit = polyfit(temperature, o, 5); % determines a polynomial of degree 5 of the given parameters
pval = polyval(pfit, templine); % creates a variable pval as the y points
hold on
plot(temperature, o, 'o', templine, pval);
plot(temperature, o, templine, densint); % plotting with the given values
% allows for multiple graphs to be plotted on the same plot
plot(temperature, o, templine, spli);

xlabel('T (degrees C)') % Labeling the axes
ylabel('o (mg/L)')

title('Density interpolations')
% Titling the plot
legend('Original','Piecewise interpolation','Fifth order polynomial', 'Splice interpolation');
% Adding a legend to the plot