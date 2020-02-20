require 'docking-station'

# used to remove duplication (bike = Bike.new) - allows you to 
# test without calling a new bike each time.
shared_context "common" do
  let(:bike) {Bike.new}
end

describe DockingStation do
  # calling "common" for entire DockingStation tests
  include_context "common"
  it 'has the name DockingStation' do
    expect(DockingStation).to eq DockingStation
  end
  # testing to see if bike initializes with an empty array
  it 'checking bike is an empty array' do
    expect(subject).to have_attributes(bikes: [])
  end

  it { is_expected.to respond_to(:release_bike) }

  it 'releases a working bike/checking station for bike' do
    subject.dock_bike(bike)
    expect(subject.release_bike).to respond_to{subject.bikes.length}
  end

  it 'throws up an error if there are no bikes' do
    expect{subject.release_bike}.to raise_error "no bikes here"
  end
  
  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it { is_expected.to respond_to(:bikes) }
  
  it 'docks a bike' do
    # expecting a docked bike to change the length of the bike array by 1
    expect{subject.dock_bike(bike)}.to change{subject.bikes.length}.by(1)
  end

  it 'sets a max limit of 20 bikes per docking station' do
    20.times {subject.dock_bike(bike)}
    expect{subject.dock_bike(bike)}.to raise_error("full - no more bikes thanks")
  end
  
  it 'raises error if private full? method called' do
    expect(subject).not_to respond_to(:full?)
  end
  # allows a user to set a docking station capacity
  it 'set docking station capacity to 5' do
    docking_station = DockingStation.new(5)
    expect(docking_station).to have_attributes(capacity: 5) 
  end

  it 'docking station has default capacity of 20' do
    expect(subject).to have_attributes(capacity: 20) 
  end

end