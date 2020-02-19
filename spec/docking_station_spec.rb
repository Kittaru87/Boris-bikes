require 'docking-station'

describe DockingStation do
  it 'has the name DockingStation' do
    expect(DockingStation).to eq DockingStation
  end

  it { is_expected.to respond_to(:release_bike) }

  it 'gets a working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  # it { is_expected.to respond_to(:dock_bike).with(1).argument }
  
  it { is_expected.to respond_to(:bike) }
  
  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end

  it 'checking a station for a bike' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end
end