require 'pp'
# N line: Times Square, 34th, 28th, 23rd, Union Square,8th
# L line: 8th, 6th, Union Square, 3rd 1st
# 6 line: Grand Central, 33rd, 28th, 23rd, Union Square,Astor Place.
class Lines
    attr_accessor :name, :stops, :line_name, :line_stops

    def initialize(name, stops)
        @line_name = name
        @line_stops = stops
    end
end

class Subway
    attr_accessor :all_lines

    def initialize()
        @all_lines = []
    end

    def show_lines
        @all_lines.each do |line|
            pp line.line_name
        end
    end

    def add(line_name)
        @all_lines.push(line_name)
    end 

end