require 'docking-station'

describe DockingStation do
  it 'has the name DockingStation' do
    expect(DockingStation).to eq DockingStation
  end

  it { is_expected.to respond_to(:release_bike) }

  it 'releases a working bike' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.release_bike).to eq bike
  end

  it 'throws up an error if there are no bikes' do
    expect{subject.release_bike}.to raise_error "no bikes here"
  end
  
  it { is_expected.to respond_to(:dock_bike).with(1).argument }
  

  it { is_expected.to respond_to(:bike) }
  
  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end

  it 'checking a station for a bike' do
    bike = Bike.new
    subject.dock_bike(bike)
    # expect {raise subject.bike}.to raise_error
    expect(subject.bike).to eq bike

  end



end