% author name: samuel amery
% email: amerys34@rowan.edu
% Course: MATLAB Programming-Fall 2024
% Assignment: Homework 2
% Date:10/11/2024
%Updated by: Samuel Amery
%All Right Reserved


% Reading from a text file
data = load('stock_data.txt');

%these are findin gth eaveages and max, min, and the price increase
average_price = mean(data);
highest_price = max(data);
lowest_price = min(data);
price_increase_days = sum(diff(data) > 0);
%this is printing off the data into averages, max, min, and price increase
fprintf('Average Closing Price: %.2f\n', average_price);%this is printing the average
fprintf('Highest Closing Price: %.2f\n', highest_price);%this is printing thethe highest
fprintf('Lowest Closing Price: %.2f\n', lowest_price);%this is printing the lower 
fprintf('Number of Days Price Increased: %d\n', price_increase_days);%this is printing thethe increase per day
%this is creating the graph 
figure;
plot(data, 'b-', 'LineWidth', 2);
hold on;
yline(average_price, 'r--', 'Average Price', 'LabelVerticalAlignment', 'bottom', 'LabelHorizontalAlignment', 'right');
yline(highest_price, 'g--', 'Highest Price', 'LabelVerticalAlignment', 'bottom', 'LabelHorizontalAlignment', 'right');
yline(lowest_price, 'm--', 'Lowest Price', 'LabelVerticalAlignment', 'bottom', 'LabelHorizontalAlignment', 'right');
xlabel('Day');
ylabel('Closing Price');
title('Daily Closing Prices of Stock');
legend('Closing Prices', 'Average Price', 'Highest Price', 'Lowest Price');
grid on;

saveas(gcf, 'stock_analysis.png');
%this is putting the data we got into its own file
fileID = fopen('stock_summary.txt', 'w');
fprintf(fileID, 'Stock Analysis Summary:\n');
fprintf(fileID, 'Average Closing Price: %.2f\n', average_price);
fprintf(fileID, 'Highest Closing Price: %.2f\n', highest_price);
fprintf(fileID, 'Lowest Closing Price: %.2f\n', lowest_price);
fprintf(fileID, 'Number of Days Price Increased: %d\n', price_increase_days);
fclose(fileID);