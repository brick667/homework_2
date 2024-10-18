% author name: samuel amery
% email: amerys34@rowan.edu
% Course: MATLAB Programming-Fall 2024
% Assignment: Homework 2
% Date:10/11/2024
%Updated by: Samuel Amery
%All Right Reserved

planet_distances = [0.39, 0.72, 1.00, 1.52, 5.20, 9.54, 19.22, 30.06]
planet_sizes = [0.38, 0.95, 1.00, 0.53, 11.21, 9.45, 4.01, 3.88]

x = planet_distances;
y = planet_sizes;
scatter(x, y);
title('planet distances vs. planet sizes');
xlabel('planet distances');
ylabel('planet sizes');