require 'rails_helper'

RSpec.describe DiceRoller do
  describe '.roll' do
    let(:roll) { DiceRoller.roll(number_of_dices: n, faces_of_die: d) }

    context 'a single d6 die' do
      let(:n) { 1 }
      let(:d) { 6 }

      it { expect(roll.size).to eq 1 }
      it { expect(1..d).to include roll[0] }
    end

    context '2 d6 dice' do
      let(:n) { 2 }
      let(:d) { 6 }

      it { expect(roll.size).to eq 2 }
      it { expect(1..d).to include roll[0] }
      it { expect(1..d).to include roll[1] }
    end
  end
end
