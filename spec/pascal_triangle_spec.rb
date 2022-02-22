require_relative '../lib/triangle.rb'

describe "to_a method" do
  it "returns an array " do
    triangle = PascalTriangle.new(5)
    to_a_value = triangle.to_a
    expect(to_a_value).to be_an_instance_of(Array)
  end

  context "Generates different length triangles" do
    it "returns single row triangle" do
      triangle = PascalTriangle.new(1)
      triangle_row = triangle.to_a
      expect(triangle_row).to eq([[1]])
    end
    it "returns five row triangle" do
      triangle = PascalTriangle.new(5)
      triangle_row = triangle.to_a
      expect(triangle_row).to eq([[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]])
    end
    it "returns ten row triangle" do
      triangle = PascalTriangle.new(10)
      triangle_row = triangle.to_a
      expect(triangle_row).to eq([[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1], [1, 5, 10, 10, 5, 1], [1, 6, 15, 20, 15, 6, 1], [1, 7, 21, 35, 35, 21, 7, 1], [1, 8, 28, 56, 70, 56, 28, 8, 1], [1, 9, 36, 84, 126, 126, 84, 36, 9, 1]])
    end
  end
end

describe "to_s method" do
  it "returns printable version of triangle" do
    triangle = PascalTriangle.new(5)
    printable_triangle = to_s
    expect(printable_triangle).to be_an_instance_of(String)
  end
  context "retuns printable version of triangle with certain number of rows" do
    it "generates printable triangle with four rows" do
      triangle = PascalTriangle.new(4)
      print_triangle = triangle.to_s
      expect(print_triangle).to eq("   1\n  1 1\n 1 2 1\n1 3 3 1\n")
    end
    it "generates printable triangle with sixrows" do
      triangle = PascalTriangle.new(6)
      print_triangle = triangle.to_s
      expect(print_triangle).to eq("      1\n     1 1\n    1 2 1\n   1 3 3 1\n  1 4 6 4 1\n1 5 10 10 5 1\n")
    end
  end
end
