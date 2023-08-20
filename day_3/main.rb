rucksacks = []
priorities = {}
("a".."z").each_with_index { |letter, index| priorities[letter] = index+1 }
("A".."Z").each_with_index { |letter, index| priorities[letter] = index+27 }

File.open("input.txt", 'r') do |file|
    file.each_line do |line|
        rucksacks << [line.chomp[0, line.chomp.length/2], line.chomp[line.chomp.length/2, line.chomp.length]]
    end
end

rucksacks.map! { |element|
    priorities[[element[0].chars & element[1].chars].join("")]
}

puts rucksacks.sum