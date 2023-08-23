class Stack
    def initialize
        @items = []
    end

    def push(*items)
        @items.concat(items)
    end

    def pop
        @items.pop()
    end 

    # TESTING PURPOSES ONLY
    # def peek
    #     @items[@items.length-1]
    # end
    # 
    # def size
    #     @items.length
    # end
end

def move(amount, source_stack, destination_stack)
        cargo = []
        amount.times { cargo << source_stack.pop()}
        destination_stack.push(*cargo)
end

# Decided to hardcode the stacks instead of parsing. May update in the future.
stacks = {}
(1..9).each { |index| stacks["#{index}"] = Stack.new }
stacks["1"].push("R", "P", "N", "G")
stacks["2"].push("T", "J", "B", "L", "C", "S", "V", "H")
stacks["3"].push("T", "D", "B", "M", "N", "L")
stacks["4"].push("R", "V", "P", "S", "B")
stacks["5"].push("G", "C", "Q", "S", "W", "M", "V", "H")
stacks["6"].push("W", "Q", "S", "C", "D", "B", "J")
stacks["7"].push("F", "Q", "L")
stacks["8"].push("W", "M", "H", "T", "D", "L", "F", "V")
stacks["9"].push("L", "P", "B", "V", "M", "J", "F")
input = []
output = []

File.open("input.txt", 'r') do |file|
    file.each_line do |line|
        input << line.chomp
    end
end

input.map! { |element|
    element.split(" ").map { |subelement| subelement.to_i }.select { |character| character != 0 }
}

input.each { |element|
    move(element[0], stacks[element[1].to_s], stacks[element[2].to_s])
}

(1..9).each { |iteration| output << stacks[iteration.to_s].peek }

puts output.join('')