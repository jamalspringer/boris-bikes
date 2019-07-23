require_relative '../lib/docking_station.rb'

  describe DockingStation do
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

  end