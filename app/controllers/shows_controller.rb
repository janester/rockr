class ShowsController < ApplicationController
  def new
    @show = Show.new
    @venues = Venue.order(:name)
  end
  def create
    @show = Show.create(params[:show])
    venue = Venue.find(params[:venues])
    venue.shows << @show
    venue.shows = venue.shows.order(:date)
    @venues = Venue.order(:name)
  end
end