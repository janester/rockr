class Show < ActiveRecord::Base
  attr_accessible :artist, :date, :venue_id
  belongs_to :venue
end