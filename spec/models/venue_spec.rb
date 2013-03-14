require "spec_helper"
describe Venue do
  describe ".new" do
    it "creates a new instance of Venue" do
      venue = Venue.new
      expect(venue).to be_an_instance_of(Venue)
    end
  end

  describe ".create" do
    it "creates a new venue with a name" do
      venue = Venue.create(name:"abc")
      expect(venue.name).to eq "abc"
    end

    it "has many shows" do
      venue = Venue.create
      expect(venue.shows).to eq []
    end
  end

end