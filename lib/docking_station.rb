require_relative '../lib/bike'

class DockingStation
  attr_reader :bike
  def initialize
  @bike = nil
  end
  def release_bike
    return Bike.new
  end

  def dock(bike)
    @bike = bike
  end
end

