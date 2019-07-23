require_relative '../lib/docking_station.rb'

  describe DockingStation do
  it 'Instantiates a new Docking station using the DockingStation method' do
    docking_station = DockingStation.new
    expect( docking_station).to be_kind_of(DockingStation)
  end

    it 'Attemots to execute the release bike method on the said Docking station' do
      docking_station = DockingStation.new
      expect( docking_station).to respond_to(:release_bike)
    end

  end