print "Enter Title : "
ttl = gets.chomp.to_s

print "Enter Notes : "
notes = gets.chomp.to_s

print "Save or Cancel : "
var = gets.chomp.to_s

class Save
  def initialize(ttl="",notes="")
    @ttl = ttl
    @notes = notes
    @file_name ="notes.txt"

  end

  def to_s
    "Title : #{@ttl} , Notes : #{@notes}"
  end
  def save_to_file 
    begin
      File.open(@file_name,'a') do |file|
        file.puts "#{@ttl} : #{@notes}"
      end
      puts "Data saved to #{@file_name}."
    rescue => e 
      puts "Cannot Save File : #{e.message}"
    end
    
  end

  def open_file 
    begin 
    system("notepad #{@file_name}") 
    rescue => e 
      puts "File not Found on Screen :  #{e.message}"
    end
  end
end

case var 
when "save"
  data = Save.new(ttl,notes)
puts data.save_to_file
puts data.open_file

when "cancel"
  puts "Cancelled !"
else 
  puts "Invalid !"
end
