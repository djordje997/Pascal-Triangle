class PascalTriangle
  def initialize(number_of_rows)
    @number_of_rows = number_of_rows
    @triangle = nil
  end

  def to_a
    triangle
  end
  
  def to_s
    formated_triangle = ""
    longest_row_length = triangle.last.join(" ").length
    triangle.each do |current|
      formated_triangle += formated_triangle_row(current, longest_row_length)
    end
    formated_triangle
  end

  private

  def formated_triangle_row(current, longest_row_length)
    current_row_formated = current.join(" ")
    spacing = (longest_row_length - current_row_formated.length) / 2
    formated_triangle = " " * spacing
    formated_triangle += current_row_formated
    formated_triangle += "\n"
    formated_triangle
  end

  def triangle
    @triangle ||= create_triangle
  end

  def create_triangle
    triangle = [[1]]
    (@number_of_rows-1).times do
      triangle <<  generate_next_row(triangle.last)
    end
    triangle
  end
  
  def generate_next_row(row)
    ([0] + row).zip(row + [0]).collect { |a, b| a + b }
  end
end
