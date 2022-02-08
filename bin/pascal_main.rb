#!/usr/bin/env ruby

require_relative '../lib/triangle.rb'

def user_input ()
  puts 'This is Pascal triangle how many rows would you like to generate:'
  get_user_input = gets.chomp.to_i
  get_user_input
end

def print_triangle(triangle)
  last_row = triangle[-1].join(" ")
  longest_row = last_row.length
  triangle.each do |current|
    current_lenght = current.join(" ").length
    (longest_row / 2 - current_lenght / 2).times {print " "}
    print current.join(" ")
    puts
  end
end

number_of_rows = user_input()
triangle_generator = PascalTriangle.new(number_of_rows)
triangle = triangle_generator.create_triangle()
print_triangle(triangle)



