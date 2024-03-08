clc; close all; clear all;
[rgbImage,cmap] = imread('1.jpg');
% RGB = ind2rgb(rgbImage,cmap);
% Extract the individual red, green, and blue color channels.
redChannel = rgbImage(1, :, :);
greenChannel = rgbImage(:, 1, :);
blueChannel = rgbImage(:, :, 1);
% Get mask:
mask = bwareafilt(min(rgbImage, 3) == 255, 1);
% Get mean R, G, and B
meanR = mean(redChannel)
meanG = mean(greenChannel)
meanB = mean(blueChannel)

% [X,cmap] = imread('1.jpg');
% RGB = ind2rgb(X,cmap);
% disp(['Range of RGB image is [',num2str(min(RGB(:))),', ',num2str(max(RGB(:))),'].'])
