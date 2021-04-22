%############################################################################
% <Lab 4>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: <The purpose of this program is to calculate
% calculates the phasor for the sum of two sinusoid represented by phasors>
% Due date: <February.7, 2020>
%
% Author: < NAME >
% Input: < IF ANY>
% Output: < IF ANY >
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___<Ritchie Kumar>_______
%############################################################################

function [A3,phi3] = PhasorAdd(A1,phi1,A2,phi2)
function1 = A1 * exp(1i*phi1*pi/180);
function2 = A2 * exp(1i*phi2*pi/180);
A3 = abs(function1 + function2);
phi3 = angle(f1 + f2) * (180/pi);
phase = linspace(0, 2*pi, 1500);
y = A3 * cos(200*pi*t+phi3);
plot(phase,y);
end
%[A3,phi3] = PhasorAdd(A1,phi1,A2,phi2);
% Calculates the phasor for the sum of two phasors.
% A1, phi1 = % magnitude and phase shift in radians of 1st sine
% wave (note the 1st phase is "phi one")
% % A2, phi2 = magnitude and phase shift in radians of 2nd sine
% wave
% A3, phi3 = magnitude and phase shift of sum of sinusoids
% Calculate the phasor sum.
% Find the magnitude of the phasor for the sum.
% Find the phase angle of the phasor for the sum.