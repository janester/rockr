require 'spec_helper'

describe Show do
  describe '.new' do
    it 'creates a new instance of show' do
      show = Show.new
      expect(show).to be_an_instance_of(Show)
    end
    it 'has artist, date, venue_id' do
      show = Show.new(artist:'Prince', date:'2013-10-10', venue_id:1)
      expect(show.artist).to eq 'Prince'
      expect(show.date.to_s).to eq '2013-10-10'
      expect(show.venue_id).to eq 1
    end
  end


  describe '.create' do
    it 'creates show instance with artist, date, and venue_id' do
      show = Show.create(artist:'Prince', date:'2013-10-10', venue_id:1)
      expect(show.id).to eq 1
      expect(show.artist).to eq 'Prince'
      expect(show.date.to_s).to eq '2013-10-10'
    end

    it 'belongs to a venue' do
      show = Show.create
      expect(show.venue).to eq nil
    end
  end

end
