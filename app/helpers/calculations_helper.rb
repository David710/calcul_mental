module CalculationsHelper

  def is_correct?(answer, result)
    if answer == result
      true
    else
      false
    end
  end

end
