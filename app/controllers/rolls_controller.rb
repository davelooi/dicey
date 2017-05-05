class RollsController < ApplicationController
  def index
    render json: result
  end

  private

  def result
    {
      number_of_dices: params[:n],
      faces_of_die: params[:d],
    }
  end

  def number_of_dices
    params[:n] || 1
  end

  def faces_of_die
    params[:d] || 6
  end
end
