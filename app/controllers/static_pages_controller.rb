class StaticPagesController < ApplicationController
  def home
  end

  def booking
  	@date = Date.today
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
