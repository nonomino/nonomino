def caesar_cipher(string,shift_factor)
    asciis = string.split("").map { |e| e.ord }
    shifted = asciis.map do |ascii|
        if ascii.between?(65,90)
            if shift_factor.positive?
                ascii + shift_factor > 90 ? (ascii + shift_factor) - 26 : ascii + shift_factor
            else
                ascii + shift_factor < 65 ? (ascii + shift_factor) + 26 : ascii + shift_factor
            end
        elsif ascii.between?(97,122)
            if shift_factor.positive?
                ascii + shift_factor > 122 ? (ascii + shift_factor) - 26 : ascii + shift_factor
            else
                ascii + shift_factor < 97 ? (ascii + shift_factor) + 26 : ascii + shift_factor
            end
        else
            ascii
        end
    end

    shifted_string = shifted.map! { |a| a.chr }.join
    p shifted_string
end

print "Enter the string to encode : "
string = gets.chomp

print "Enter the shift factor for the string : "
shift_factor = gets.chomp.to_i

caesar_cipher(string,shift_factor)
