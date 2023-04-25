class Ride
  attr_reader :name,
              :distance,
              :loop,
              :terrain

  def initialize(details)
    @name = details[:name]
    @distance = details[:distance]
    @loop = details[:loop]
    @terrain = details[:terrain]
  end

  def loop?
    @loop
  end

  def total_distance
    if @loop == false
      @distance * 2
    else
      @distance
    end
  end
end