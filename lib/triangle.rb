class PascalTriangleg
  attr_accessor :triangle

  def initialize(number_of_rows)
    @number_of_rows = number_of_rows
    @triangle = []
  end

  def create_triangle
    row = [1]
    @number_of_rows.times do
      @triangle << row
      row = generate_next_row(row)
    end
  end
 
  private
  
  def generate_next_row(row)
    ([0] + row).zip(row + [0]).collect { |a, b| a + b }
  end
end
