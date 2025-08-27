require 'date'

print "Enter Your BirthDate : (dd/mm/YYYY) "
input = gets.chomp

bd = Date.strptime(input, "%d/%m/%Y")
age = Time.now.year - bd.year

if age <= 18
  print " Age is #{age} , Child"
else 
  print " Age is #{age} , Adult"
end