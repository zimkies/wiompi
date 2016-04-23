class Turn < ActiveRecord::Base
  belongs_to :game
  belongs_to :player
  has_many :guesses

  def image_url
    image
  end

  def all_images
    ["https://lh5.googleusercontent.com/r2M9Kz3mD8Pl2ZticIw4kAuNN3XrOMAp2LQB443_fd2Ewj7_FCiexjSUZhNvkluyNXvQtg=w1879-h835",
   "https://lh3.googleusercontent.com/QZZGfULT4JwR90tQM4cfm9eAfeuLAfVPRQP6v09A7o5UYmHXaTgfacbXAkz1hHmxeKygjg=w1879-h835",
   "https://lh4.googleusercontent.com/wxP5ySK_jqKgvFGBmcLUniD2_lJ_5ZvtF3YuaFNZXT21PYJx-JP4k1GOFhxcrVEyNDRZVQ=w1879-h835",
   "https://lh6.googleusercontent.com/OwgbJAcVjd9axBLS-pOndUhFOCSOlKgN4eJQSBONLCnACVR8j-ea6N_75DNg941ZyX7xfQ=w1879-h835",
   "https://lh6.googleusercontent.com/Lb-sMZ5wgdHFI_g6ZpjU8vytPiOcF1o2FJModrmiFc9O3RHJoJShwpC5rPkIFX3zF1jwdQ=w1879-h835",
   "https://lh5.googleusercontent.com/J3l3k6chbwR_tdEleaA64OqwBYmIX9kwbGxWSmMxVY5hzSB0Z5HCXwEYJxqUEG7yiiPkeA=w1879-h835",
   "https://lh4.googleusercontent.com/RWLJTlE-4EOWkMBfRyVQL5Craeyi5c-yiAp0lHPv1WhZtEjZ2RYeg0891egNINa6z92DVA=w1879-h835",
   "https://lh4.googleusercontent.com/ETEdoym7wBoNS1MdFqJo-ClpqgX45N5llYESv-5N4Um6pXY0RBTLNW2D5FdiSxPhYluDBA=w1879-h835",
   "https://lh4.googleusercontent.com/jHNpZDwYSvSjx1mZrhPobBInP11Ei2kTKbu6sDcmJsUIo7CXhi3sO26VI-kMII1n-5V2-w=w1879-h835",
   "https://lh6.googleusercontent.com/8Bt-1mr2FB3Z992IwGhPREwD1qVyHl54eQjs9eqbwquSzmEEVTXSyd34Q1u0qtFSMO2coQ=w1879-h835",
   "https://lh5.googleusercontent.com/LUHQ-735Fi1ZVhXmFGI2y4_NA2Lk1xJ0CZiyaBTQ1CfP766GN6CJ1_O_-OeADaV78EeTqg=w1879-h835",
   "https://lh5.googleusercontent.com/3d8Cq4dMsdn5FRtdcM8Ncu_J9kCVbyXSA0XQxtEGDUW28CPelIjY_MEEjCHg_R7M1l-uGg=w1879-h835",
   "https://lh6.googleusercontent.com/yQlS2OooQGVG-j_bdVbb8E_Glq0Rwo4gIF6msi8uL0xLewcgCE5rHUJarbr-rW1AY0vjug=w1879-h835" ]
  end

  def guessing_players
    game.players.where.not(id: player.id)
  end

  def guessed?
    guesses.count > 0
  end
end
