require_relative '../lib/bike.rb'

describe Bike do
  it 'Creates Bike instance then tests that the bike instances responds to the working? method' do
    new_bike = Bike.new
    expect( new_bike).to respond_to(:working?)
  end
end