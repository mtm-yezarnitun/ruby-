require 'date'

today = Date.today
count = 1
thisday = today.strftime("%A")
lastdays=[]

puts "Today is  #{thisday}"

while count < 6
    day = today - count
    lastdays << day.strftime("%A")
    count += 1
end

print lastdays
