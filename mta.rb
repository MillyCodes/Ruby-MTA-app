require './structure.rb'
mta = Subway.new

l = Lines.new("L", ["8th", "6th", "Union Square", "3rd", "1st"])
n = Lines.new("N",["Times Square", "34th", "28th", "23rd","Union Square","8th"])
six = Lines.new("6", ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"])

mta.add(l)
mta.add(n)
mta.add(six)

input = ARGV

if input[0] == "lines"
    mta.show_lines
end

if input[0] == "stops"
    user_input = input[1].downcase
    mta.all_lines.each { |line|
    # put in the array that matched the input1
        if line.line_name.downcase == user_input
            puts line.line_stops
        end
    }
end

pp mta

# pp mta.all_lines