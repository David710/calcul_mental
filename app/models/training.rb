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
    substraction = Random.rand(1...9).to_s + " - " + Random.rand(1...9).to_s
    result = eval(substraction)
    {operation: substraction, result: result}
  end
end
