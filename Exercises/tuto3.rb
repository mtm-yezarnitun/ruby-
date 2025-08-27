n=1
  while n == 1
    print "Enter First Number : "
    num1 = gets.chomp.to_f
    
    print "Chose an Operator : (+ , - , * , / ) "
    op = gets.chomp.to_s
    
    print "Enter Second Number : "
    num2 = gets.chomp.to_f
    
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
      result = num1 / num2
      puts "Result = #{result}"
    end
    
    print "Do you wanna continue ? ( y/ n ) "
    con = gets.chomp.to_s
      case con 
      when "y"
        n = 1
      when "n"
        n = 0
      end
  end
