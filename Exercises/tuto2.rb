require 'date'

print "Enter Your BirthDate : (dd/mm/YYYY) "
bdate = gets.chomp

bd = Date.strptime(bdate, "%d/%m/%Y")
age = Time.now.year - bd.year

if age <= 18
  print " Age is #{age} , Child"
else 
  print " Age is #{age} , Adult"
end