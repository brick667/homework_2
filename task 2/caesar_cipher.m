function encrypted_message = caesar_cipher(message, shift)
    encrypted_message = '';
    for i = 1:length(message)
        char_code = double(message(i)) - 97;
        new_code = mod(char_code + shift, 26);
        encrypted_message(i) = char(new_code+ 97);
    end
end