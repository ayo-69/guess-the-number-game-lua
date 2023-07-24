print("     -- GUESS THE NUMBER GAME --     ")
print("Choose a number between 1 and 10")
--[ Create input. ]--
guess = math.random(10)

function game()
  player = tonumber(io.read())

  --[[ Check guess. ]]--
  if player == guess then
    print("You win")
  elseif player > guess then
    print("Too high")
    game()
  elseif player < guess then
    print("Too low")
    game()
  end
  
  --[[ Try again or end the game. ]]--
  print("Do you want to play again? y/n")
  if io.read() == 'y' then
    guess = math.random(10) --[[ Makes new guess ]]--
    game()
  else
    print("  --  GAME OVER  --  ")
  end
end

game()