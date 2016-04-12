class PagesController < ApplicationController

  before_action               :authenticate_user!, except: [:dashboard]  

  def index
    if current_user
      redirect_to dash_path
    end
  end

  def dashboard
    @dinners      = Dinner.where( :date => Date.today.at_beginning_of_week..Date.today.at_end_of_week - 2)
    @dinner_today = Dinner.where(date: Date.today)
    @lunches      = Lunch.where( :date => Date.today.at_beginning_of_week..Date.today.at_end_of_week - 2) 
    @lunch_today  = Lunch.where(date: Date.today)
  end

  def create
    authorize User
    @dinner = Dinner.new
    @lunch  = Lunch.new 
  end
end