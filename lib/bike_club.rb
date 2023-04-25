class BikeClub
  attr_reader :name,
              :bikers

  def initialize(name)
    @name = name
    @bikers = []
  end


  def add_biker(biker)
    @bikers << biker
  end


  def most_rides
    @bikers.map do |biker|
      biker.rides.values.count
      require 'pry'; binding.pry
    end
  end


  def best_time(ride)

  end


  def bikers_eligible(ride)


  end
end