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
      if biker.personal_record(ride) == Float
      biker.personal_record(ride)
      end
    end
  end


  def bikers_eligible(ride)
    @bikers.map do |biker|
      if biker.eligible?(ride)
        biker
      end
    end.compact
  end
end