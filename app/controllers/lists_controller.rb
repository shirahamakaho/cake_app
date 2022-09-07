class ListsController < ApplicationController

  def new
  @data = List.new
  end

  def create
  list = List.new(list_params)
  list.save
  redirect_to chao_path(list.id)
  end

  def index
  @lists = List.all
  end

  def show
  @list = List.find(params[:id])
  end

  def edit
  @list
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to '/lists'
  end

  private
  def list_params
  params.require(:list).permit(:name,:body,:image)
  end

end
