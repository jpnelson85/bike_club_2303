require './lib/ride'

RSpec.describe Ride do
  it 'exists' do
    ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    expect(ride1).to be_a(Ride)
  end

  it 'has attributes' do
    ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    expect(ride1.name).to eq("Walnut Creek Trail")
    expect(ride1.distrance).to eq(10.7)
    expect(ride1.terrain).to eq(:hills)
    expect(ride1.loop).to eq(false)
  end
end