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
    @bikers.min_by do |biker|
      if biker.personal_record(ride) == Integer
      biker.personal_record(ride)
      end
    end
  end


  def bikers_eligible(ride)


  end
end