require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do 
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end


  describe '#release_bike' do # This bit ere makes the bike equal to the bike your docking, weird
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
  

  
    end
  end
  describe '#release_bike' do # then this bit ere raises an error if no bikes are available
    it 'raises error when no bikes are there' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end    
  end
end