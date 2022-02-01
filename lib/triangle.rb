class PascalTriangle

  def initialize(number_of_rows)
    @number_of_rows = number_of_rows
  end

  def create_triangle()
    row = [1]
    triangle = []
    @number_of_rows.times do
      triangle << row
      row = generate_next_row(row)
    end
     triangle
  end

  def print_triangle()
    returned_triangle = create_triangle()
    returned_triangle.each do |current|
      (@number_of_rows -=1).times {print " "}
      print current
      puts
    end
  end

  def generate_next_row(row)
    ([0] + row).zip(row + [0]).collect { |a, b| a + b }
  end
  


end
