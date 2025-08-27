print "Enter Array Size : "
size = gets.chomp.to_i

animal_array=Array.new(size)
  n=0
  while n < size
    print "Enter Animal Name ##{n+1}: "
    name= gets.chomp.to_s
    animal_array[n] = name
    n += 1
  end
  puts "Animals are " 
    animal_array.each_with_index do |animal , i|
      puts "#{i} : #{animal}"
    end

  animal_array = animal_array.uniq
  puts "Without duplicates (keeping first) : "
   animal_array.each_with_index do |animal , i|
    puts "#{i} : #{animal}"
   end
  
  puts "Reverse Orders " 
  animal_array.reverse.each_with_index do |animal , i |
    puts "#{i} : #{animal}"
  end
