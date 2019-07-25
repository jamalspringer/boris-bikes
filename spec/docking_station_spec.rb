require_relative '../lib/docking_station.rb'
require_relative '../lib/bike.rb'

describe DockingStation do
=begin
  it 'Instantiates a new Docking station using the DockingStation method' do
    docking_station = DockingStation.new
    expect( docking_station).to be_kind_of(DockingStation)
  end

  it 'Attempts to execute the release bike method on the said Docking station' do
    docking_station = DockingStation.new
    expect( docking_station).to respond_to(:release_bike)
  end

  it 'Test that the DockingStation.release_bike method creates an instance of Bike which can use the working? method' do
    bike = DockingStation.new.release_bike
    expect( bike).to be_working
  end

  it 'Tests that the release bike method returns an instance of bike class' do
    bike = DockingStation.new.release_bike
    expect( bike).to be_kind_of(Bike)
  end

  it 'Test that the docking station can dock a bike i.e. the dock method exists' do
    docking_station = DockingStation.new
    expect( docking_station).to respond_to(:dock)
  end

  it 'Attribute "bike" is set when "dock" method is called' do
    docking_station = DockingStation.new
    expect(docking_station.bike).to eq(nil)
    random_bike = Bike.new
    docking_station.dock(random_bike)
    expect(docking_station.bike).to eq(random_bike)
  end
=end

  it 'Error message should be raised when asking empty docking station to release bike' do
    docking_station = DockingStation.new
    if docking_station.bike == nil
      expect{docking_station.release_bike}.to raise_error
    end
  end

  it 'Check that error is raised when the "dock" method is executed whilst the bike capacity is already full' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    expect{docking_station.dock(bike)}.to raise_error
  end

end