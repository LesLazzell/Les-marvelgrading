class Admin::SeriesController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @serie = Serie.new
  end

  def create
    @serie = current_user.series.create(serie_params)
    redirect_to admin_series_path(@serie)
  end

  def show
    @serie = Serie.find(params[:id])
  end

  private

  def serie_params
    params.require(:serie).permit(:title, :description)
  end
end
