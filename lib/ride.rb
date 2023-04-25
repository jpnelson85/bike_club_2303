class Ride
  attr_reader :name,
              :distrance,
              :loop,
              :terrain

  def initialize(details)
    @name = details[:name]
    @distance = details[:distance]
    @loop = details[:loop]
    @terrain = details[:terrain]
  end
end