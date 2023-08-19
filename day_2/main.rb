matches = []

File.open("input.txt", 'r') do |file|
    file.each_line do |line|
        matches << "#{line[0]}#{line[2]}"
    end
end

matches.map! { |element|
    case element
        when "AX" then 4
        when "AY" then 8
        when "AZ" then 3
        when "BX" then 1
        when "BY" then 5
        when "BZ" then 9
        when "CX" then 7
        when "CY" then 2
        when "CZ" then 6
    end
}

puts matches.sum