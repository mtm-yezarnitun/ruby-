class Person
  def initialize(name="")
    @name =name
  end
  def print_name 
    puts "Your Name is : #{@name}"
  end
end

class Student < Person
  def initialize(name="",roll="")
    @name = name
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

  newperson = Person.new(pname)

  newperson.print_name

when "student"
  print "Enter Your Name : "
  sname=gets.chomp.to_s

  print "Enter Your Roll Number : "
  sroll=gets.chomp.to_s

  newstudent= Student.new(sname,sroll)

  newstudent.print_name
  newstudent.print_roll

end
