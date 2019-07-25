require_relative '../lib/bike'

class DockingStation
  attr_reader :bikes
  def initialize
  @bikes = []
  end

  def release_bike
    raise 'Docking station is empty' if @bikes.size == 0
    @bikes.shift
  end

  def dock(bike)
    raise 'Docking station is full' if @bikes.size == 20
    @bikes << bike
  end
end

