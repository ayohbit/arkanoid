local gamefinished = {}

function gamefinished.update( dt )
end

function gamefinished.draw()
   love.graphics.print( "Parabens!\n" ..
			   "Voce finalizou o jogo!\n",
			200, 250 )
end

function gamefinished.keyreleased( key, code )
   if key == "return" then
      gamestates.set_state( "game", { current_level = 1 } )
   elseif key == 'escape' then
      love.event.quit()
   end    
end

return gamefinished
