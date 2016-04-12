class DinnersController < ApplicationController

  before_action               :authenticate_user!, only: [:create, :update, :edit]
  before_action :set_dinner, only: [:show, :edit, :update, :destroy]

  def index
    @dinners = Dinner.week
  end

  def show
  end

 
  def new 
    authorize User
    @dinner = Dinner.new 
  end


  def edit
        authorize User
  end

  def create

    authorize User
    @dinner = Dinner.new(dinner_params)

    respond_to do |format|
      if @dinner.save
        format.html { redirect_to @dinner, notice: 'Dinner was successfully created.' }
        format.json { render :show, status: :created, location: @dinner }
        format.js
      else
        format.html { render :new }
        format.json { render json: @dinner.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    respond_to do |format|
      if @dinner.update(dinner_params)
        format.html { redirect_to @dinner, notice: 'Dinner was successfully updated.' }
        format.json { render :show, status: :ok, location: @dinner }
      else
        format.html { render :edit }
        format.json { render json: @dinner.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
        authorize User
    @dinner.destroy
    respond_to do |format|
      format.html { redirect_to dinners_url, notice: 'Dinner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_dinner
      @dinner = Dinner.find(params[:id])
    end

 
    def dinner_params
      params.require(:dinner).permit(:date, :soup, :accompaniment1, :accompaniment2, :accompaniment3, :garnish, :protein1, :protein2, :dessert, :juice)
    end
end
