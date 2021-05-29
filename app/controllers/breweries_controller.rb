class BreweriesController < ApplicationController

  before_action :set_brewery, only: :show

  def index
    @breweries = Brewery.limit(20)

    render partial: 'breweries', object: @breweries
  end

  def show
    render partial: 'brewery', object: @brewery
  end

  private

  def set_brewery
    @brewery ||= Brewery.find(params[:id])
  end
end
