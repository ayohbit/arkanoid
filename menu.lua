local menu = {}

function menu.load( prev_state, ... )
end

function menu.update( dt )
end

function menu.draw()

   love.graphics.print("Pressione ENTER para iniciar.", 200, 250)
end

function menu.keyreleased( key, code )
   if key == "return" then
      gamestates.set_state( "game", { current_level = 1 } )
   elseif key == 'escape' then
      love.event.quit()
   end    
end

return menu
