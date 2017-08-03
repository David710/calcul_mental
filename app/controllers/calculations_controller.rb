class CalculationsController < ApplicationController
  before_action :set_time_zone

  def set_time_zone
      Time.zone = "Paris"
  end

  def welcome
  end

  def show
    if params[:rang].to_i == 1
      rang = params[:rang].to_i
    else
      rang = Training.last(1)[0].rang + 1
    end

    if params[:operation] == "addition"
      @operation_sign = "addition"
    else
      if params[:operation] == "soustraction"
        @operation_sign = "substraction"
      else
        @operation_sign = Training.last(1)[0].operation
      end
    end

    if @operation_sign == "addition"
      @calculation = Training.new.addition
    else
      if @operation_sign == "substraction"
        @calculation = Training.new.substraction
      else
        @calculation = Training.new.addition
      end
    end

    @operation = @calculation[:operation]
    @result = @calculation[:result]
    @begining = @calculation[:begining]

    @calculation_save = Training.new
    @calculation_save.begining = Time.current
    @calculation_save.rang = rang
    @calculation_save.correctness = is_correct?(@answer, @good_result)
    @calculation_save.operation = @operation_sign
    @calculation_save.save

    if rang <= 10
      true
    else
      false
    end
  end

  def show_answer
      @answer = params["result"]
      @good_result = params["good_result"]
      if show
        render :show
      else
        render :welcome
      end
  end

  private

    def is_correct?(answer, result)
      if answer == result
        true
      else
        false
      end
    end

end
