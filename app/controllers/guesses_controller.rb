class GuessesController < ApplicationController
  before_action :set_turn, only: [:index, :create]
  # GET /guesses
  # GET /guesses.json
  def index
  end

  def create
    @turn.guessing_players.each do |player|
      if params[:player][player.id.to_s]
        Guess.create!(turn: @turn, player_id: player.id, lie: true)
      else
        Guess.create!(turn: @turn, player_id: player.id, lie: false)
      end
    end

    redirect_to turn_path(@turn)
  end

  private

  def set_turn
    @turn = Turn.find(params[:turn_id])
  end
end
