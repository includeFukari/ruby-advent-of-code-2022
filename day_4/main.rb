assignments = []
amount = 0;

File.open("input.txt", 'r') do |file|
    file.each_line do |line|
        assignments << line.chomp.split(",").map { |element| element.split("-") }
    end
end

assignments.each { |element| 
    if (element[1][0].to_i <= element[0][0].to_i && element[0][1].to_i <= element[1][1].to_i)
        amount += 1
    elsif (element[0][0].to_i <= element[1][0].to_i && element[1][1].to_i <= element[0][1].to_i)
        amount += 1
    end
}

# puts assignments.inspect
puts amount