class AppointmentsController < ApplicationController
before_action :authenticate_user!
  def new
    @hour = flash[:hour]
    puts @hour
  end

  def pre_new
    flash[:hour] = params[:hour]
    puts session[current_user]
    redirect_to new_appointment_path
  end
end