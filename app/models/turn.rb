class Turn < ActiveRecord::Base
  belongs_to :game
  belongs_to :player

  def image_url
    'http://www.poochieheaven.com/images/products/1pamp0129SC.jpg'
  end

  def guessing_players
    game.players.where.not(id: player.id)
  end
end
