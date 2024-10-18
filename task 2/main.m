% author name: samuel amery
% email: amerys34@rowan.edu
% Course: MATLAB Programming-Fall 2024
% Assignment: Homework 2
% Date:10/2/2024
%Updated by: Samuel Amery
%All Right Reserved


%this asked the qeustion and the shift value
message =  input('enter a message to encrypt (lowercase): ','s');
shift = input('enter a shift value (1-25: ');
encrypted = caesar_cipher(message, shift);
%thi prints the original
fprintf('original message: %s\n', message);
%thids prints the encryption
fprintf('encrypted message: %s\n', encrypted);