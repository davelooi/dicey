class HomeController < ApplicationController
  def index
    render json: how_to
  end

  private

  def how_to
    {
      'rollADice': rolls_url,
      'roll2d16Dice': rolls_url(n: 2, d: 20),
    }
  end
end
