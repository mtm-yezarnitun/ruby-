class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    timeleft = EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
    puts "Remaining Minutes in Oven #{timeleft} minutes"
  end

  def preparation_time_in_minutes(layers)
    timetaken_in_minutes = layers * 2 
    puts "Preparation took #{timetaken_in_minutes} Minutes"
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    layertime = number_of_layers * 2 
    preptime = layertime + actual_minutes_in_oven 
    leftime = EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
    puts "Lasagna was in oven for  #{preptime} minutes."
    puts "Need to keep in oven for #{leftime} more minutes."
  end
end

lasagna = Lasagna.new

lasagna.preparation_time_in_minutes(3)

lasagna.total_time_in_minutes(number_of_layers: 3, actual_minutes_in_oven: 25)