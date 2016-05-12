class Turn < ActiveRecord::Base
  belongs_to :game
  belongs_to :player
  has_many :guesses

  def image_url
    image
  end

  def all_images
    [
      "http://i.imgur.com/OvcVXWs.png",
      "http://i.imgur.com/f3fGIdN.jpg",
      "http://i.imgur.com/aqypouN.gif",
      "http://images.mtvnn.com/6fbf76d7619ed69fecab2d3a85ef3dad/630x354_",
      "http://i.imgur.com/5yAaA.gif",
      "http://i3.kym-cdn.com/photos/images/newsfeed/000/639/371/38d.gif",
      "http://i.imgur.com/OMYZDXZ.gif",
      "http://i.imgur.com/jxY7Ywz.gif",
      "http://i.imgur.com/6SwrGlJ.gif",
      "http://i.imgur.com/TnmlzlU.gif",
      "http://i.imgur.com/JBJn8Ub.gif",
      "http://i.imgur.com/mGMbe8Z.gif",
      "http://giant.gfycat.com/SleepyThisGreendarnerdragonfly.gif",
      "http://i.imgur.com/SYoHIJs.gif",
      "http://i.imgur.com/wokJbxx.gif",
      "http://i.imgur.com/My1Dqvg.gif",
      "http://i.imgur.com/Xsu770n.jpg",
      "http://i.imgur.com/DjCHGiU.gif",
      "http://i.imgur.com/feJySi4.gif",
      "http://i.imgur.com/yyZwINK.jpg",
      "http://i.imgur.com/47Ef2vQ.jpg",
      "http://buylaughs.com/wp-content/uploads/2014/01/Funny-Babies-Pictures-2.jpg",
      "http://www.hdquotesvsmemes.com/wp-content/uploads/2014/08/funny-photo-pics-2-500x487.jpg",
    ]
  end

  def guessing_players
    game.players.where.not(id: player.id)
  end

  def guessed?
    guesses.count > 0
  end
end
