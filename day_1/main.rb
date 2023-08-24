unfiltered_calories_amount = []
filtered_calories_amount = []
index = 0
greatest_amount_of_calories = 0

File.open("input.txt", 'r') do |file|
    file.each_line do |line|
        (line == "\n") ? unfiltered_calories_amount << line : unfiltered_calories_amount << line.to_i
    end
end

unfiltered_calories_amount.each do |element|
    if (filtered_calories_amount[index].nil?)
        filtered_calories_amount[index] = []
    end
    (element != "\n") ? filtered_calories_amount[index] << element : index += 1
end

filtered_calories_amount.map! { |element|
    element.reduce { |a, e| a + e }
}

filtered_calories_amount.sort!.reverse!

puts filtered_calories_amount.slice(0, 3).sum