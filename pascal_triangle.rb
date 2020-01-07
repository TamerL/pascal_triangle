def build_Pascal_triangle(level)
  iterator = 0
  pascal_triangle = []
  while iterator < level do
    pascal_triangle[iterator] = [1]
    if iterator > 1
      horiz = 1
      while horiz < pascal_triangle[iterator - 1].length do
        pascal_triangle[iterator] << pascal_triangle[iterator - 1][horiz-1] + pascal_triangle[iterator - 1][horiz]
        horiz += 1
      end
    end
    pascal_triangle[iterator] << 1 if iterator > 0
    iterator += 1
  end

  return pascal_triangle
end


def print_pascal_triangle
  puts "Please enter a level for the pascalpyramid to be printed:"
  level = gets.chomp(level).to_i
  pascal_triangle = build_Pascal_triangle(level)
  iterator = 0
  # puts "pascal #{pascal_triangle}"
  max_width = pascal_triangle[-1].max.to_s.length
  # join().split().length
  # puts max_width + 1
  pascal_triangle.map!{|row| row.map{|i| i.to_s.center(max_width*2)}.join }
  max_length = pascal_triangle[-1].length

  pascal_triangle.each do |i|
    puts i.center(max_length)
  end
  # while iterator < level do
  #   puts pascal_triangle[iterator].map{|i| i.center(max_width * 2)}.join().center(max_length +  level)
  #   iterator += 1
  # end
end

print_pascal_triangle
