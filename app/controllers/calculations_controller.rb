class CalculationsController < ApplicationController

  def show
    @calculation = Training.new.addition
    @operation = @calculation[:operation]
    @result = @calculation[:result]
    puts "result : ____ " + @result.to_s
  end

  def show_answer
    @answer = params["result"]
    @good_result = params["good_result"]
    # render plain: params.inspect
  end

end
