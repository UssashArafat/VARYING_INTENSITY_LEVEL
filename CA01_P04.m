%------------------------------------------------------------------
% Semester: FALL 2020
% Course: ECE 551
% Designer: Ussash Arafat

% Computer Assignment 1
% Problem 4
%          (256x256 matrix of continuous varying intensity levels)
%------------------------------------------------------------------

VALUE = 256;                                 %Initialize the primary intensity value (maximum white)
MATRIX = zeros(256,256);                     %Creating 256x256 matrix with all zero value

for COLUMN = 1:256
    VALUE = VALUE-1;                         %Decrimenting intensity value by one (from white to black)
    for ROW = 1:256
        MATRIX(ROW,COLUMN) = VALUE;                
    end
end
IMAGE = mat2gray(MATRIX);                    %Matrix to gray imgae conversion

imshow(IMAGE, 'InitialMagnification', 'fit') %Initial magnification of image display which set to -
                                             %'fit' to scale the image to fit in the window