class Person
  attr_accessor :name

  def initialize(name="")
    @name =name
  end

  def print_name 
    puts "Your Name is : #{@name}"
  end
end

class Student < Person
  attr_accessor :roll

  def initialize(name="", roll="")
    super(name)
    @roll = roll
  end

  def print_roll 
    puts "Roll Number is : #{@roll}"
  end
end

print " Enter as Person or Student : (person / student ) : "
choice = gets.chomp.to_s

case choice
when "person"
  print "Enter Your Name : "
  pname = gets.chomp.to_s

  newperson= Person.new(pname)

  newperson.print_name

when "student"
  print "Enter Your Name : "
  sname=gets.chomp.to_s

  sroll=nil
   loop do
    begin
      print "Enter Your Roll Number : "
      sroll = Integer(gets.chomp)
      break
    rescue ArgumentError
      puts "Invalid Input! Enter Numbers Only."
    end
  end

  newstudent= Student.new(sname,sroll)

  newstudent.print_name
  newstudent.print_roll
else 
  print "Invalid Input! Exiting....."
end
