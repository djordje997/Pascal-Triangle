#!/usr/bin/env ruby

require_relative '../lib/triangle.rb'

def user_input 
  puts 'This is Pascal triangle how many rows would you like to generate:'
  get_user_input = gets.chomp.to_i
  get_user_input
end

def print_triangle(triangle_generator)
  puts triangle_generator.to_s
end

if ARGV[0] == nil
  number_of_rows = user_input
else
  number_of_rows = ARGV[0].to_i
end

triangle_generator = PascalTriangle.new(number_of_rows)
print_triangle(triangle_generator)



