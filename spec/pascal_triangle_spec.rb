require_relative '../lib/triangle.rb'

describe "PascalTriangle create triangle of 5 rows" do
  triangle = PascalTriangle.new(5).to_a()
  it "first row is [1]" do
    first_row = triangle[0]
    expected_first_row = [1]
    expect(triangle[0]).to eq([1])
  end

  it "second row is [1, 1]" do
    second_row = triangle[1]
    expected_second_row = [1, 1]
    expect(second_row).to eq(expected_second_row)
  end

  it "third row is [1, 2, 1]" do
    third_row = triangle[2]
    expected_third_row = [1, 2, 1]
    expect(third_row).to eq(expected_third_row)
  end

  it "fourth row is [1, 3, 3, 1]" do
    forth_row = triangle[3]
    expected_fourth_row = [1, 3, 3, 1]
    expect(forth_row).to eq(expected_fourth_row)
  end

  it "fifth row is [1, 4, 6, 4, 1]" do
    fifth_row = triangle[4]
    expected_fifth_row = [1, 4, 6, 4, 1]
    expect(fifth_row).to eq(expected_fifth_row)
  end
end
