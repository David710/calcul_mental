class CalculationsController < ApplicationController
  before_action :set_time_zone

  def set_time_zone
      Time.zone = "Paris"
  end


  def show
    @calculation = Training.new.addition
    # @calculation = Training.new.substraction
    @operation = @calculation[:operation]
    @result = @calculation[:result]
    @begining = @calculation[:begining]

    @calculation_save = Training.new
    @calculation_save.begining = Time.current
    @calculation_save.save
  end

  def show_answer
      @answer = params["result"]
      @good_result = params["good_result"]
      show
      render :show
  end

end
