class ReviewsController < ApplicationController

  before_action :set_brewery, on: :index

  attr_reader :brewery

  def index
    @reviews = brewery.reviews

    render partial: 'reviews', object: @reviews
  end

  private

  def set_brewery
    @brewery ||= Brewery.find(params[:brewery_id])
  end
end
