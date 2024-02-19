def caesar_cipher(str, shift)
    result = []

    str.split("").each do |char|
        if char.ord.between?("A".ord, "Z".ord) || char.ord.between?("a".ord, "z".ord)
            if char.eql?(char.upcase)
                if (char.ord + shift) > "Z".ord 
                    difference = (char.ord + shift) - "Z".ord 
                    result << ("A".ord - 1) + difference
                else
                    result << char.ord + shift
                end

            elsif char.eql?(char.downcase)
                if (char.ord + shift) > "z".ord
                    difference = (char.ord + shift) - "z".ord
                    result << ("a".ord - 1) + difference
                else
                    result << char.ord + shift
                end

            else
                result << char.ord + shift
            end
        else    
            result << char
        end
    end

    result.map { |char| char.chr}.join("")
end

puts caesar_cipher("What a string!", 5)