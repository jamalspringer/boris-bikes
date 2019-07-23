require_relative '../lib/borris-bike.rb'

  describe DockingStation do
  it 'Instantiates a new Docking station using the DockingStation method' do
    docking_station_1 = DockingStation.new
    expect( docking_station_1).to be_kind_of(DockingStation)
  end

    it 'Attemots to execute the release bike method on the said Docking station' do
      docking_station_1 = DockingStation.new
      expect( docking_station_1).to respond_to(:release_bike)
    end

  end