class Turn < ActiveRecord::Base
  belongs_to :game
  belongs_to :player
  has_many :guesses

  def image_url
    'https://lh6.googleusercontent.com/QbioEL2k50AZSggAfOAPT2D2McwfLM8xexj3nKcNL1TiF135S6UQ2p_VMiwafXABln9i5g=w2504-h1170'
  end

  def guessing_players
    game.players.where.not(id: player.id)
  end

  def guessed?
    guesses.count > 0
  end
end
