class ChaosController < ApplicationController
  def new
    @chao = Chao.new
  end

  def create
    @chao = Chao.new(chao_params)
    @chao.save
    redirect_to new
  end

  private

  def chao_params
    params.require(:chao).permit(:name)
  end
end
