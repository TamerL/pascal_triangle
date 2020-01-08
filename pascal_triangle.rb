def build_Pascal_triangle(level)
  pascal_triangle = [[1]]
  (1..level).each do
    pascal_triangle << pascal_triangle[-1].inject([0]) { |inj,val| inj[-1] = inj[-1] + val ; inj << val ; inj }
  end
  return pascal_triangle
end


def print_pascal_triangle
  puts "Please enter a level for the pascalpyramid to be printed:"
  level = gets.chomp(level).to_i
  pascal_triangle = build_Pascal_triangle(level)
  iterator = 0
  max_width = pascal_triangle[-1].max.to_s.length
  pascal_triangle.map!{|row| row.map{|i| i.to_s.center(max_width*2)}.join }
  max_length = pascal_triangle[-1].length
  pascal_triangle.each do |i|
    puts i.center(max_length)
  end
end

print_pascal_triangle
