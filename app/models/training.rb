class Training < ApplicationRecord

  def addition
    addition = Random.rand(1...9).to_s + " + " + Random.rand(1...9).to_s
    result = eval(addition)
    {operation: addition, result: result}
  end

  def substraction
    substraction = Random.rand(1...9).to_s + " - " + Random.rand(1...9).to_s
    result = eval(substraction)
    {operation: substraction, result: result}
  end
end
