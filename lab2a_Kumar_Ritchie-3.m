%############################################################################
% <HW 2>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: < This program evaluates trigonometric and e functions
% and plots them in 1 plot >
% Due date: < January.24, 2020 >
%
% Author: < Ritchie Kumar >
% Input: < lab2a_Kumar_Ritchie(2) >
% Output: < 

% eq1 =

  % -0.1344


% eq2 =

   % 1.1653


% eq3 =

   % 0.5560 
   % (graph loads)
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___<Ritchie Kumar>_______
%############################################################################

function [eq1, eq2, eq3] = lab2a_Kumar_Ritchie(x)
    eq1 = cos(tan(x)) - tan(cos(x)) % Evaluating the given functions
    eq2 = exp(-0.2*x) + (1 - cos(2*x)) / (x + (tan(x^2))^2)
    eq3 = (1+x/(x-0.5))/(1+(3.1*x*exp(-x)+2)/(sin(x)-(cos(x^3)^2)))
    clear % Supress the variable ans from displaying
    x = linspace(-2*pi, 2*pi, 1000); % Creating the graph with x
    f = cos(tan(x)) - tan(cos(x)); % Defining the same functions as eq1,2 
    % and 3 using element-wise notation
    plot(x,f);
    hold on % Using the hold function to plot multiple graphs on the same
    % plot
    g = exp(-0.2.*x) + (1 - cos(2.*x)) ./ (x + (tan(x.^2)).^2);
    plot(x,g);
    h = (1+x./(x-0.5))./(1+(3.1.*x.*exp(-x)+2)./(sin(x)-(cos(x.^3).^2)));
    plot(x, h);
    xlabel('Angles (radian)', 'FontName', 'Arial') % Using the labeling 
    % functions to label the graph, x and y labeling their graphs 
    % respectively
    ylabel('Voltage (V)', 'FontName', 'Arial')
    graph_legend = legend('f(x)', 'g(x)', 'h(x)');
    set(graph_legend,'FontName', 'Arial','FontSize', 18)
    title('Voltage vs angles')
    axis tight % Making the graph look visually more appealing, only
    % showing the defined domain
    hold off % No more graphs need to be added, thus the hold function
    % is no longer needed
end