require 'docking-station'

RSpec.describe DockingStation do
  it 'has the name DockingStation' do
    expect(DockingStation).to eq DockingStation
  end

  it { is_expected.to respond_to (:release_bike) }

end