module CalculationsHelper

  def is_correct?(answer, result)
    if answer.to_i == result.to_i
      true
    else
      false
    end
  end

  def set_content_id(answer, result)
    if answer.to_i == result.to_i
      "content-correct"
    else
      "content-false"
    end
  end

  def score
    score = 0
    Training.last(10).each do |training|
      if training.correctness
        score += 1
      end
    end
    score
  end

end
