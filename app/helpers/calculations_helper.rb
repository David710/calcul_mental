module CalculationsHelper

  def is_correct?(answer, result)
    if answer == result
      true
    else
      false
    end
  end

  def set_content_id(answer, result)
    if answer == result
      "content-correct"
    else
      "content-false"
    end
  end

end
