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

  def log_ride(ride, time)
    log = Hash.new(0)
    time_hash = []
    time_hash << time
    log[ride] = time_hash
  end
end