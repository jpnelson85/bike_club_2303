require './lib/ride'
require './lib/biker'

RSpec.describe Biker do
  it 'exists' do
    biker = Biker.new("Kenny", 30)
    expect(biker).to be_a(Biker)
  end

  it 'has attributes' do
    biker = Biker.new("Kenny", 30)
    expect(biker.name).to eq("Kenny")
    expect(biker.max_distance).to eq(30)
    expect(biker.rides).to eq({})
    expect(biker.acceptable_terrain).to eq([])
  end

  it 'learn new terrain method' do
    biker = Biker.new("Kenny", 30)
    expect(biker.acceptable_terrain).to eq([])
    biker.learn_terrain!(:gravel)
    biker.learn_terrain!(:hills)
    expect(biker.acceptable_terrain).to eq([:gravel, :hills])
  end

  it 'log rides method' do
    biker = Biker.new("Kenny", 30)
    ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
    biker.learn_terrain!(:gravel)
    biker.learn_terrain!(:hills)
    biker.log_ride(ride1, 92.5)
    biker.log_ride(ride1, 91.1)
    biker.log_ride(ride2, 60.9)
    biker.log_ride(ride2, 61.6)
    expect(biker.rides).to eq({
                              ride1 => [92.5, 91.1],
                              ride2 => [60.9, 61.6]
                              })
  end
end