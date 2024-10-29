# Refactor the Tank class to use the State pattern

class Tank
  attr_accessor :state

  def initialize
    state = :full
  end

  def fill_gas
    case state
    when :full
      "Gas tank is already full"
    else
      "Gas tank is now full"
    end
  end

  def low_gas_indicator
    case state
    when :low
      "Low gas indicator is on"
    when :empty
      "Low gas indicator is on"
    else
      "Low gas indicator is off"
    end
  end

  def move_vehicle
    case state
    when :empty
      "Cannot move vehicle because tank is empty"
    else
      "Moving vehicle"
    end
  end
end

require 'rspec'

RSpec.describe Tank do
  subject { Tank.new }

  describe '#fill_gas' do
    context 'when state is full' do
      it 'returns a message indicating the tank is already full' do
        subject.state = FullState.new
        expect(subject.fill_gas).to eq("Gas tank is already full")
      end
    end

    context 'when state is not full' do
      it 'returns a message indicating gas is being filled' do
        subject.state = LowState.new
        expect(subject.fill_gas).to eq("Gas tank is now full")

        subject.state = EmptyState.new
        expect(subject.fill_gas).to eq("Gas tank is now full")
      end
    end
  end

  describe '#low_gas_indicator' do
    context 'when state is low' do
      it 'returns that the low gas indicator is on' do
        subject.state = LowState.new
        expect(subject.low_gas_indicator).to eq("Low gas indicator is on")
      end
    end

    context 'when state is empty' do
      it 'returns that the low gas indicator is on' do
        subject.state = EmptyState.new
        expect(subject.low_gas_indicator).to eq("Low gas indicator is on")
      end
    end

    context 'when state is full' do
      it 'returns that the low gas indicator is off' do
        subject.state = FullState.new
        expect(subject.low_gas_indicator).to eq("Low gas indicator is off")
      end
    end
  end

  describe '#move_vehicle' do
    context 'when state is empty' do
      it 'returns a message indicating the vehicle cannot move' do
        subject.state = EmptyState.new
        expect(subject.move_vehicle).to eq("Cannot move vehicle because tank is empty")
      end
    end

    context 'when state is not empty' do
      it 'returns a message indicating the vehicle is moving' do
        subject.state = FullState.new
        expect(subject.move_vehicle).to eq("Moving vehicle")

        subject.state = LowState.new
        expect(subject.move_vehicle).to eq("Moving vehicle")
      end
    end
  end
end
