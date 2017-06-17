class CalculationsController < ApplicationController

  def show
    @operation = Training.new
  end

  def show_answer
    @answer = params["result"]
    render plain: @answer.inspect
  end
end
