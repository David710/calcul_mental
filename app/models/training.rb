class Training < ApplicationRecord

  def set_time_zone
      Time.zone = "Paris"
  end

  def addition
    set_time_zone
    addition = Random.rand(1...9).to_s + " + " + Random.rand(1...9).to_s
    result = eval(addition)
    begining = Time.current
    {operation: addition, result: result, begining: begining}
  end

  def substraction
    set_time_zone
    number1 = Random.rand(1...9)
    number2 = Random.rand(1...9)
    if number1 >= number2
      substraction = number1.to_s + " - " + number2.to_s
    else
      substraction = number2.to_s + " - " + number1.to_s
    end
    result = eval(substraction)
    begining = Time.current
    {operation: substraction, result: result, begining: begining}
  end
end
