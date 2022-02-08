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
 
  private
  
  def generate_next_row(row)
    ([0] + row).zip(row + [0]).collect { |a, b| a + b }
  end
  
end
