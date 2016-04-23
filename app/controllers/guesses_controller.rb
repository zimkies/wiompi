class GuessesController < ApplicationController
  before_action :set_turn, only: [:index]
  # GET /guesses
  # GET /guesses.json
  def index
  end

  def create
  end

  private

  def set_turn
    @turn = Turn.find(params[:turn_id])
  end
end
