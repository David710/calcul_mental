class CalculationsController < ApplicationController

  def show
    @calculation = Training.new.addition
    # @calculation = Training.new.substraction
    @operation = @calculation[:operation]
    @result = @calculation[:result]
  end

  def show_answer
    @answer = params["result"]
    @good_result = params["good_result"]
    # sleep(10.seconds)
    show
    render :show
  end

end
