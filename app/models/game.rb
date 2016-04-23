class Game < ActiveRecord::Base
  has_many :players
  has_many :turns

  def next_player_up
    turns_count = turns.count
    players.all[turns_count % players.count]
  end
end
