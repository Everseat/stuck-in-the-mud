require 'rails_helper'

RSpec.describe StuckInTheMudRoll, type: :model do

  describe '.dice_available_next_roll' do
    it 'counts non 2s and 5s' do
      expect(described_class.dice_available_next_roll(1,3,4,4,6)).to eq 5
      expect(described_class.dice_available_next_roll(1,2,3,4,5)).to eq 3
      expect(described_class.dice_available_next_roll(2,2,5,5,5)).to eq 0
    end
  end

  describe '#score' do
    it 'sums the dice values' do
      subject = described_class.new 1, 1, 1, 1, 1
      expect(subject.score).to eq 5
    end

    it 'doesnt count 2s and 5s' do
      subject = described_class.new 1, 1, 1, 2, 5
      expect(subject.score).to eq 3
    end

    it 'handles everything stuck' do
      subject = described_class.new 2, 2, 2, 5, 5
      expect(subject.score).to eq 0
    end
  end

  describe '#end_of_turn?' do
    it 'is not end of turn with a non 2 or 5' do
      subject = described_class.new 1,2,3,4,5
      expect(subject.end_of_turn?).to be false
    end
    it 'is end of turn with all 2s and 5s' do
      subject = described_class.new 2,2,5,5,5
      expect(subject.end_of_turn?).to be true
    end
  end
end
