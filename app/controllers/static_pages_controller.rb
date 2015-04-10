class StaticPagesController < ApplicationController
  def home
  end

  def booking
  	@date = Date.today
  end

  def sign_up
  end
end
