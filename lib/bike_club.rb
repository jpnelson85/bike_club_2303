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
    @bikers.max_by do |biker|
      biker.total_rides
    end
  end


  def best_time(ride)

  end


  def bikers_eligible(ride)


  end
end