class CostumesController < ApplicationController

  before_action :find_costume, only: [:show, :edit, :update, :destroy]

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    if @costume.valid?
      @costume.save
    else 
      render :new
    end
  end

  def index
    @costumes = Costume.all
  end

  def show

  end

  def edit

  end

  def update
    if @costume.update(costume_params)
      redirect_to costume_path(@costume)
    else
      render :edit
    end
  end

  def destroy
    @costume.destroy
    redirect_to costumes_path
  end

  private

  def find_costume
    @costume = Costume.find_by_id(params[:id])
    redirect_to costume_path if !@costume
  end

  def costume_params
    params.require(:costume).permit(:name, :img_url, :description)
  end

end
