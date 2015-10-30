class StaticPagesController < ApplicationController
  def home
  end

  def booking
  	@date = Date.today
    @week = (@date.beginning_of_week..@date.end_of_week).to_a
    @days = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    @times = ["10:00AM","12:00PM","1:00PM","2:00PM","3:00PM","4:00PM"]
    @option = params[:option]
  end

  def sign_up
  end

  def about
  end

  def pricing
  end

  def contact
  end

  def benefits
  end

  def gallery
  end
end
