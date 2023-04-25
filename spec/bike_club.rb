require './lib/ride'
require './lib/biker'
require './lib/bike_club'

RSpec.describe BikeClub do
  it 'exists' do
    hells_angels = BikeClub.new("Hell's Angels")
    expect(hells_angels).to be_a(BikeClub)
  end

  it 'has attributes' do
    hells_angels = BikeClub.new("Hell's Angels")
    expect(hells_angels.name).to eq("Hell's Angels")
    expect(hells_angels.bikers).to eq([])
  end


end


biker = Biker.new("Kenny", 30)
    biker2 = Biker.new("Athena", 15)
    ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
    biker.learn_terrain!(:gravel)
    biker.learn_terrain!(:hills)
    biker.log_ride(ride1, 92.5)
    biker.log_ride(ride1, 91.1)
    biker.log_ride(ride2, 60.9)
    biker.log_ride(ride2, 61.6)
    biker2.log_ride(ride1, 97.0)
    biker2.log_ride(ride2, 67.0)
    biker2.learn_terrain!(:gravel)
    biker2.learn_terrain!(:hills)
    biker2.log_ride(ride1, 95.0)
    biker2.log_ride(ride2, 65.0)