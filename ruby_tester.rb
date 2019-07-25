require './lib/docking_station.rb'

docking_station = DockingStation.new(5)

6.times{docking_station.dock(Bike.new)}
