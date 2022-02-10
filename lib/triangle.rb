class PascalTriangle
  
  def initialize(number_of_rows)
    @number_of_rows = number_of_rows
    @triangle = []
  end

  def to_a
    if @triangle == []
      @triangle = create_triangle
    end
   @triangle
  end

  def to_s
    triangle = to_a
    string_triangle = ""
    last_row = triangle[-1].join(" ")
    longest_row = last_row.length
    triangle.each do |current|
      current_lenght = current.join(" ").length
      (longest_row / 2 - current_lenght / 2).times {string_triangle += " "}
      string_triangle += current.join(" ")
      string_triangle += "\n"
      
    end
    string_triangle
  end

  private

    def create_triangle
    triangle = []
    row = [1]
    @number_of_rows.times do
      triangle << row
      row = generate_next_row(row)
    end
    triangle
    end
  
    def generate_next_row(row)
      ([0] + row).zip(row + [0]).collect { |a, b| a + b }
    end
end
