require_relative '../lib/bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes
  attr_reader :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise 'Docking station is empty' if empty?
    @bikes.shift
  end

  def dock(bike)
    raise 'Docking station is full' if full?
    @bikes << bike
  end

  private

  def full?
    if @bikes.size >= @capacity
      return true
    else
      return false
    end
  end

  def empty?
    if @bikes.size == 0
      return true
    else
      return false
    end
  end
end

