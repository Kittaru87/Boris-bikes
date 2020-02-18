require 'docking-station'

RSpec.describe DockingStation do
  it 'has the name DockingStation' do
    expect(DockingStation).to eq DockingStation
  end

  it { is_expected.to respond_to(:release_bike) }

end


  # RSpec.describe DockingStation do
  # it { is_expected.to respond_to(:release_bike) }
  #   # expect(DockingStation).to respond_to(:release_bike)
  # end
  # it 'working method' do
  #   expect(bike.working?).to eq true
  # end
