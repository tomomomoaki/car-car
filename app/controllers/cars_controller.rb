class CarsController < ApplicationController

  def index
  end

  def new
    @car = CarsTagsSaver.new
  end

  def create
    binding.pry
    @car = CarsTagsSaver.new(car_params)
    if @car.valid?
      @car.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  private

  def car_params
    params.require(:cars_tags_saver).permit(:title, :image, :text, :maker_id, :car_name, :body_type_id, :name).merge(user_id:current_user.id )
  end
end
