class RollsController < ApplicationController
  def index
    render json: results
  end

  private

  def results
    {
      roll: "#{number_of_dices}d#{faces_of_die}",
      results: dice_results,
    }
  end

  def dice_results
    DiceRoller.roll(number_of_dices: number_of_dices, faces_of_die: faces_of_die)
  end

  def number_of_dices
    params[:n] || 1
  end

  def faces_of_die
    params[:d] || 6
  end
end
