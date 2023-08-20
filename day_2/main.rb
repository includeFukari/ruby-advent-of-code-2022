matches = []
scores = {
    "AX" => 4,
    "AY" => 8,
    "AZ" => 3,
    "BX" => 1,
    "BY" => 5,
    "BZ" => 9,
    "CX" => 7,
    "CY" => 2,
    "CZ" => 6
}

File.open("input.txt", 'r') do |file|
    file.each_line do |line|
        matches << scores["#{line[0]}#{line[2]}"]
    end
end

puts matches.sum