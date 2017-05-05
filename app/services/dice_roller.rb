class DiceRoller
  def self.roll(number_of_dices:, faces_of_die:)
    (1..number_of_dices.to_i).map { rand(faces_of_die.to_i) + 1 }
  end
end
