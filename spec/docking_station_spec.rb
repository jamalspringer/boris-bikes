require_relative '../lib/borris-bike.rb'

describe 'DockingStation' do
it 'Instantiates a new Docking station using the DockingStation method' do
  docking_station_1 = DockingStation.new
  expect (docking_station_1).release_bike
end
end
