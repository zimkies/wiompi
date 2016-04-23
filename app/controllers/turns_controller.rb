class TurnsController < ApplicationController
  before_action :set_game, only: [:new]
  before_action :set_turn, only: [:show, :update]

  # GET /games/new
  def new
    @turn = @game.turns.new
    @turn.player = @game.players.first
  end

  # GET /turns/1
  # GET /turns/1.json
  def show
  end

  # POST /turns
  # POST /turns.json
  def create
    @turn = Turn.new(turn_params)

    respond_to do |format|
      if @turn.save
        format.html { redirect_to @turn }
        format.json { render :show, status: :created, location: @turn }
      else
        format.html { render :new }
        format.json { render json: @turn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turns/1
  # PATCH/PUT /turns/1.json
  def update
    respond_to do |format|
      # Booleans need to be set manually
      if !turn_params['lie']
        modified_turn_params = turn_params.merge(lie: false)
      else
        modified_turn_params = turn_params
      end

      if @turn.update(modified_turn_params)
        format.html { redirect_to turn_guesses_path(@turn), notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @turn }
      else
        format.html { render :edit }
        format.json { render json: @turn.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def set_turn
    @turn = Turn.find(params[:id])
  end

  def turn_params
    params.required(:turn).permit(:game_id, :player_id, :image, :lie)
  end
end
