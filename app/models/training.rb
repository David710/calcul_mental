class Training < ApplicationRecord

  def addition
    Random.rand(1...9).to_s + " + " + Random.rand(1...9).to_s + " = "
  end
end
