n = 1

while n == 1
  num1=nil
  loop do
    begin
      print "Enter First Number: "
      num1 = Float(gets.chomp)
      break
    rescue ArgumentError
      puts "Invalid Input! Enter Numbers Only."
    end
  end
  
  num2=nil
   loop do
    begin
      print "Enter Second Number: "
      num2 = Float(gets.chomp)
      break
    rescue ArgumentError
      puts "Invalid Input! Enter Numbers Only."
    end
  end

  print "Choose an Operator (+, -, *, /): "
  op = gets.chomp.to_s

  case op
  when "+"
    result = num1 + num2
    puts "Result = #{result}"
  when "-"
    result = num1 - num2
    puts "Result = #{result}"
  when "*"
    result = num1 * num2
    puts "Result = #{result}"
  when "/"
    if num2 == 0.0
      puts "Error: Cannot divide by 0."
    else
      result = num1 / num2
      puts "Result = #{result}"
    end
  else
    puts "Invalid Operator!"
  end

  print "Do you wanna continue? (y/n): "
  con = gets.chomp.downcase
  case con
  when "y"
    n = 1
  when "n"
    n = 0
  else
    puts "Invalid Option! Exiting..."
    n = 0
  end
end
