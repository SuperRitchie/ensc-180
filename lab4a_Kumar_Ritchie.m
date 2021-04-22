%############################################################################
% <Lab 4>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: <The purpose of this program is to Generate a script that displays 
% the magnitude and phase angle in degrees of a complex number. >
% Due date: < February.7, 2020>
%
% Author: < Ritchie Kumar >
% Input: < IF ANY>
% Output: < IF ANY >
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___<Ritchie Kumar>_______
%############################################################################
realNum = input("Enter the real part of a complex number: "); % Asks user for input
imNum = input("Enter the imaginary part of a complex number: ");
z = complex(realNum, imNum); % Conversion of inputs into complex number
magnitude = abs(z); % Find radius of complex number
angle = (180/pi)*angle(z); % Find angle in radians and convert to degrees
fprintf('The magnitude and phase of %d + %di is\n',real(z),imag(z)); 
% Printing our givens
fprintf('Magnitude = %.4f Phase angle = %.4f\n',magnitude, angle); 