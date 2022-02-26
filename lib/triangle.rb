class PascalTriangle
  
  def initialize(number_of_rows)
    @number_of_rows = number_of_rows
    @triangle = nil
  end

  def to_a
    @tringle || create_triangle
  end

  def to_s
    triangle = to_a
    string_triangle = ""
    longest_row_length = triangle.last.join(" ").length
    triangle.each do |current|
      current_row_formated = current.join(" ")
      current_length = current_row_formated.length
      spacing = (longest_row_length - current_length) / 2
      string_triangle << " " * spacing
      string_triangle += current_row_formated
      string_triangle += "\n"
    end
    string_triangle
  end

  private

    def create_triangle
    @triangle = []
    row = [1]
    @number_of_rows.times do
      @triangle << row
      row = generate_next_row(row)
    end
    @triangle
    end
  
    def generate_next_row(row)
      ([0] + row).zip(row + [0]).collect { |a, b| a + b }
    end
end
