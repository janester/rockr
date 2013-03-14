class VenuesController < ApplicationController
  def new
    @venue = Venue.new
  end
  def index
    @venues = Venue.order(:name)
    @shows = Show.order(:date)
  end
  def create
    venue = Venue.create(params[:venue])
    @venues = Venue.order(:name)
  end
end