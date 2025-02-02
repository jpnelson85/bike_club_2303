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

  it 'add biker method' do
    hells_angels = BikeClub.new("Hell's Angels")
    biker = Biker.new("Kenny", 30)
    biker2 = Biker.new("Athena", 15)
    expect(hells_angels.bikers).to eq([])
    hells_angels.add_biker(biker)
    hells_angels.add_biker(biker2)
    expect(hells_angels.bikers).to eq([biker, biker2])
  end

  it 'most rides method' do
    hells_angels = BikeClub.new("Hell's Angels")
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
    biker2.learn_terrain!(:gravel)
    biker2.learn_terrain!(:hills)
    biker2.log_ride(ride2, 65.0)
    hells_angels.add_biker(biker)
    hells_angels.add_biker(biker2)
    expect(hells_angels.most_rides).to eq(biker)
  end

  it 'best time method' do
    hells_angels = BikeClub.new("Hell's Angels")
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
    biker2.learn_terrain!(:gravel)
    biker2.learn_terrain!(:hills)
    biker2.log_ride(ride2, 65.0)
    hells_angels.add_biker(biker)
    hells_angels.add_biker(biker2)
    expect(hells_angels.best_time(ride1)).to eq(biker)
    expect(hells_angels.best_time(ride2)).to eq(biker)
  end

  it 'bikers eligible method' do
    hells_angels = BikeClub.new("Hell's Angels")
    biker = Biker.new("Kenny", 30)
    biker2 = Biker.new("Athena", 15)
    ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
    biker.learn_terrain!(:gravel)
    biker.learn_terrain!(:hills)
    biker2.learn_terrain!(:gravel)
    biker2.learn_terrain!(:hills)
    hells_angels.add_biker(biker)
    hells_angels.add_biker(biker2)
    expect(hells_angels.bikers_eligible(ride1)).to eq([biker])
    expect(hells_angels.bikers_eligible(ride2)).to eq([biker, biker2])
  end
end