% author name: samuel amery
% email: amerys34@rowan.edu
% Course: MATLAB Programming-Fall 2024
% Assignment: Homework 2
% Date:10/2/2024
%Updated by: Samuel Amery
%All Right Reserved
% Read data from file

% Read data from file
data = readcell('weather_data.txt', 'Delimiter', ',');

% Extract numerical data (skipping header row)
temperature = cell2mat(data(2:end, 2));
humidity = cell2mat(data(2:end, 3));
precipitation = cell2mat(data(2:end, 4));

%this is finding the average temp, average humidity, and total
%precipitation
ave_temp = mean(temperature)
ave_humidity= mean(humidity)
Total_precipitation = sum(precipitation)


data = [ave_temp ave_humidity Total_precipitation];

% Writing to a text file
fileID = fopen('weather_summary.txt', 'w');
fprintf(fileID, '%f %f %f\n', data');
fclose(fileID);
