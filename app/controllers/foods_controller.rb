class FoodsController < ApplicationController

  def index
    @foods = Food.all
    @foodlist = Food.all.order('name ASC')
    @random = Food.all.sort_by{rand}.slice(0,1).first
  end

  def show
    @food = Food.find(params[:id])
    @random = Food.all.sort_by{rand}.slice(0,1).first
    @years = @food.years.split(",")
  end

  def new
    @random = Food.all.sort_by{rand}.slice(0,1).first
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      flash[:notice] = "Food created"
      redirect_to(:action=>'index')
    else
      render('new')
    end
  end

  def edit
    @food = Food.find(params[:id])
    @random = Food.all.sort_by{rand}.slice(0,1).first
  end

  def update
    @food = Food.find(params[:id])
    if @food.update_attributes(food_params)
      flash[:notice] = "Food was updated"
      redirect_to(:action=>'show', :id=>@food.id)
    else
      render('edit')
    end
  end

  def delete
    @food = Food.find(params[:id])
    @random = Food.all.sort_by{rand}.slice(0,1).first
  end

  def destroy
    food = Food.find(params[:id]).destroy
    flash[:notice] = "Food was deleted"
    redirect_to(:action=>'index')
  end

  def about
    @random = Food.all.sort_by{rand}.slice(0,1).first
  end

  private

  def food_params
    params.require(:food).permit(:name, :sciname, :origin, :classification, :description, :map1, :map2, :map3, :map4, :map5, :back1, :icon1, :years, :source)
  end

end
