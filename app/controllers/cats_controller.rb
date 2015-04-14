class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find(params[:id])
    render :show
  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
    cat = Cat.new(cat_params)
    if cat.save
      redirect_to cat_url(cat.id)
    else
      # @attributes = cat_params
      render :new
    end
  end

  def update
    cat = Cat.find(params[:id])
    cat.update(cat_params)
    redirect_to cat_url(cat)
  end

  def edit
    @cat = Cat.find(params[:id])
    render :edit
  end

  def destroy
    Cat.find(params[:id]).destroy
    redirect_to cats_url
  end
  
  private

  def cat_params
    params[:cat].permit(:birth_date, :description, :sex, :name, :color)
  end
end
