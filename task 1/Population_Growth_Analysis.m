% author name: samuel amery
% email: amerys34@rowan.edu
% Course: MATLAB Programming-Fall 2024
% Assignment: Homework 2
% Date:10/2/2024
%Updated by: Samuel Amery
%All Right Reserved


% 1 - Population Growth Analysis 
%population over five years
population =  [5000, 5200, 5350, 5600, 5800]
%this is how you calulate the growth rate
growth_rate = (population(2:end) - population(1:end-1)) ./ population(1:end-1);

pop_data = [population; [0 growth_rate]];
%population
%growth rate
for i = 1:length(population)
%thisisi printing a sentance withthe growth rate and population
        fprintf('For year %d population was %d growth rate was %f \n', i, pop_data(1,i), pop_data(2, i))
end