class PizzasController < ApplicationController

  def create
    @pizza = Pizza.create(pizza_params)
    redirect_to pizzerias_path(@pizza)
  end

  def new
    @pizza = Pizza.new
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :pizzeria_id, :description)
  end

end
