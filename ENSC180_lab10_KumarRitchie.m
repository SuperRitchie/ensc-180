%############################################################################
% <Lab 10>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: < This program performs image-processing for a given image>
% Due date: < April.3, 2020 >
%
% Author: < Ritchie Kumar >
% Input: < an image >
% Output: < various changes and actions performed on the image, then displayed as a figure >
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: ___<Ritchie Kumar>_______
%############################################################################
%% ------------- Task 1 -------------
% Figures 1 and 2
X = imread('4.1.04.tiff'); % imread function reads the given image to type uint8
X = double(X); % redeclare/convert the uint8 image file to a double (of pixels)
Y = wextend('2D', 'sym', X, [1,1]); % adds one pixel symmetrically to each side 
% of the image, allowing for pixel averaging of the entire image
[r,c,p] = size(Y); % Assigns the rows, columns, and planes of the image Y to the
% the r, c and p variables respectively

% for loop structure to average out each individual pixel with its neighbours, rendering the
% image blurry
for k = 1:p % the number of pages (R, G, B)
    for i = 2:r-1 % Number of rows (i)
        for j = 2:c-1 % Number of columns (j)
            Y(i,j,k) = (Y(i - 1, j - 1, k) + Y(i, j - 1, k) ...
                + Y(i + 1, j - 1, k) + Y(i - 1, j, k) + Y(i, j, k) + ...
                Y(i + 1, j, k) + Y(i - 1, j + 1, k) + Y(i, j + 1, k) + Y(i + 1, j + 1, k))/9;
        end
    end
end
X1 = Y(2:257,2:257,:); % Assigning X1 to the same dimensions
Xb = X1; % Assigning the variables as per the lab, Xb for blurred version of x

Xb = uint8(Xb); % Converting the (double arrays) back to displayable image formats (uint8 image file)
X = uint8(X);

% Note: The images are printed directly on top of each other
% Displays the 2 images compared simutaneously
figure, imshow(X);
figure, imshow(Xb);
% Analyzing the images, Xb or X1 is more blurry than X (the original image)
% this implies that taking the average of the images pixels makes it less
% clear

%% ------------- Task 2 -------------
% Figure 3
X = double(X); % Repeating processes from Task 1
Y = wextend('2D', 'sym', X, [2,2]); % Adds 2 pixels to each edge of the image
[r,c,p] = size(Y); % Assign the size variables accordingly
for k = 1:p % The image is still RGB
    for i = 3:r-2 % Symmetrically, the middle of the starting 5 x 5 array would be (3, 3)
        % Upper bound at (i,j) - 2 as we would run out of space calculating
        % the average, 25 expressions, one for each element of the array
        for j = 3:c-2 
            Y(i,j,k) = (Y(i - 2, j - 2, k) + Y(i - 1, j - 2, k) ...
                + Y(i, j - 2, k) + Y(i + 1, j - 2, k) + Y(i + 2, j - 2, k) + ...
                Y(i - 2, j - 1, k) + Y(i - 1, j - 1, k) ...
                + Y(i, j - 1, k) + Y(i + 1, j - 1, k) + Y(i + 2, j - 1, k) + ...
                Y(i - 2, j - 1, k) + Y(i - 1, j - 1, k) ...
                + Y(i, j, k) + Y(i + 1, j, k) + Y(i + 2, j, k) + ...
                Y(i - 2, j, k) + Y(i - 1, j, k) ...
                + Y(i, j + 1, k) + Y(i + 1, j + 1, k) + Y(i + 2, j + 1, k) + ...
                Y(i - 2, j + 2, k) + Y(i - 1, j + 2, k) ...
                + Y(i, j + 2, k) + Y(i + 1, j + 2, k) + Y(i + 2, j + 2, k))/25; 
                % /25 as there are 25 elements in a 5 x 5 array
        end
    end
end
X2 = Y(3:258,3:258,:); % Assigning the centralized version of X2 (256 x 256 x 3)
X = uint8(X);
X2 = uint8(X2);
figure, imshow(X2); % Display X2
% Similar to Task 1, the image is significantly more blurry than the
% original X image, and a little more blurry than X1

%% ------------- Task 3 -------------
% Figures 4, 5, and 6 respectively
% fspecial creates a filter for a 2 x 2 array, so it automates the
% processes we went through in Tasks 1 and 2
% imfilter implicates the filtration process with the given/specified h
% filter and array
H1 = fspecial('average',[3 3]); % Constructs a 3 x 3 averaging kernel
% Nearly the same results as Task 1
X3_1 = imfilter(X,H1, 'symmetric', 'same'); 
% Takes the same parameters and adds symmetrically to the dimensions
% for averaging to produce the same image, but a little blurrier
figure,imshow(X3_1)
% This produces an image similar to Figure 2 from Task 1, but a little less
% blurrier

H2 = fspecial('average',[5 5]); % 5 x 5 averaging kernal
X3_2 = imfilter(X,H2, 'symmetric', 'same');
figure,imshow(X3_2)
% Again, similar to Figure 3 from Task 1 but a little less blurrier

H3 = fspecial('gaussian',[5 5], 2); % 5 x 5 averaging kernel
% fspecial can accept a Gaussian and sigma parameter in the argument
X3_3 = imfilter(X,H3, 'symmetric', 'same');
figure,imshow(X3_3) % (Figure 6)
% Compared with Figures 3 (image from Task 2) and 5 (X3_2)
% Figure 3 looks the blurriest and Figures 5 and 6 looks nearly 
% identical to the naked eye, but X3_3 looks slightly less blurry than
% X3_2

%% ------------- Task 4 -------------
Xb = X2; % Declaring Xb as X2 from Task 2 to be the blurred image
H4 = fspecial('gaussian',[5 5], 2); % 5 x 5 averaging kernel with the 
% Gaussian filter & sigma = 2 we found in Task 3
Xg = imfilter(X,H4, 'symmetric', 'same'); % Declaring Xg as the blurred
% image with the Gaussian kernel
c = 0.7;
X4 = (c/(2*c-1))*Xb - ((1-c)/(2*c-1))*Xg; % Declaring X4 with the given 
% variables and formula
% c is a variable and is a customizable with range 0.51 - 0.7
figure,imshow(X4) % Figure 7
% The resulting image does look sharper than X2, but not sharper than the
% original, also, the color scheme is off