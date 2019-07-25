require_relative '../lib/bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes
  def initialize
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
    if @bikes.size >= DEFAULT_CAPACITY
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

