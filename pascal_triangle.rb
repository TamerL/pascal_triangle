  puts "Please enter a level for the pascalpyramid to be printed:"
  level = gets.chomp(level).to_i
  # puts "level #{level}"
  iterator = 0
  tobe_printed = []
  while iterator < level do
    tobe_printed[iterator] = "1"
    if iterator > 1
      horiz = 1
      while horiz < tobe_printed[iterator - 1].split("").length do
        tobe_printed[iterator] << (tobe_printed[iterator - 1].split("")[horiz-1].to_i + tobe_printed[iterator - 1].split("")[horiz].to_i).to_s
        horiz += 1
      end
    end
    tobe_printed[iterator] << "1" if iterator > 0
    puts tobe_printed[iterator].chars.join(" ").center(2 * level)
    iterator += 1
  end
