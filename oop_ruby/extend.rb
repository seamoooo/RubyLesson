class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(args={})
    @size = args[:size]
    @chain = args[:chain] || defort_chain
    @tire_size = args[:tire_size] || defort_tire_size

    post_initialize(args)
  end

  def spares
    { tire_size: @tire_size,
      chain:     @chain}.merge(local_spares)
  end

  # raise error when don't set args by subclass
  def defort_tire_size
    raise NotImplementedError
  end

  # subclass maybe override
  def post_initialize(args)
    nil
  end

  def local_spares
    {}
  end

  def defort_chain
    '10-speed'
  end
end

class RoadBike < Bicycle
  attr_reader :tape_color

  def post_initialize(args)
    @type_color = args[:type_color]
  end

  def local_spares
    {tape_color: tape_color}
  end

  def defort_tire_size
    '23'
  end
end

class MinorsCustomer < Bicycle
  attr_reader :front_shock, :rear_shock

  def post_initialize(args)
    @front_shock = args[:front_shock]
    @rear_shock = args[:rear_shock]
  end

  def local_spares
    {rear_shock: @rear_shock}
  end

  def defort_tire_size
    '2.1'
  end
end

road_bike = RoadBike.new(size: 'M',tape_color: 'red')

pp road_bike.tire_size
pp road_bike.chain
