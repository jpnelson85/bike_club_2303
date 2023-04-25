class Biker
  attr_reader :name,
              :max_distance,
              :rides,
              :acceptable_terrain

  def initialize(name, max_distance)
    @name = name
    @max_distance = max_distance
    @rides = {}
    @acceptable_terrain = []
  end

  def learn_terrain!(terrain)
    @acceptable_terrain << terrain
  end

  def eligible?(ride)
    if ride.total_distance < @max_distance && @acceptable_terrain.include?(ride.terrain)
      true
    else
      false
    end
  end

  def log_ride(ride, time)
    if eligible?(ride)
      if @rides[ride].nil?
        @rides[ride] = [time]
      else
        @rides[ride] << time
      end
    end
  end

  def personal_record(ride)
    if @rides[ride].nil?
      false
    else
      @rides[ride].min
    end
  end
end