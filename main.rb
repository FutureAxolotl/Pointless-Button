require 'ruby2d'

sound = Sound.new('Pointless-Sound.mp3')

set title: 'Useless Button', background: 'random', width: 100, height: 100

Text.new('Click Me', x: 13, y: 45, color: 'black', size: 15)

on :mouse_down do |event|

  case event.button
  when :left
    sound.volume = 100
    sound.play
    set background: 'random' 
  end
end

on :key_down do |event|
  if event.key = 'escape'
    close
  end
end

show