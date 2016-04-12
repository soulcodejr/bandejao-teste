class LunchesController < ApplicationController

  before_action               :authenticate_user!, only: [:create, :update, :edit, :new]
  before_action :set_lunch, only: [:show, :edit, :update, :destroy]

  def index 
    @lunches = Lunch.week
  end

  def show
  end

 
  def new
    authorize User
    @lunch = Lunch.new
  end


  def edit
      authorize User
  end

  def create
    authorize User
    @lunch = Lunch.new(lunch_params)

    respond_to do |format|
      if @lunch.save
        format.html { redirect_to @lunch, notice: 'Lunch was successfully created.' }
        format.json { render :show, status: :created, location: @lunch }
        format.js
      else
        format.html { render :new }
        format.json { render json: @lunch.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    authorize User
    respond_to do |format|
      if @lunch.update(lunch_params)
        format.html { redirect_to @lunch, notice: 'Dinner was successfully updated.' }
        format.json { render :show, status: :ok, location: @lunch }
      else
        format.html { render :edit }
        format.json { render json: @lunch.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    authorize User
    @lunch.destroy
    respond_to do |format|
      format.html { redirect_to lunches_url, notice: 'Lunch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_lunch
      @lunch = Lunch.find(params[:id])
    end

 
    def lunch_params
      params.require(:lunch).permit(:date, :protein1, :protein2, :protein3, :accompaniment1,
		 :accompaniment2, :accompaniment3,:salad1, :salad2, :salad3, :garnish, :dessert, :juice)
    end
end
