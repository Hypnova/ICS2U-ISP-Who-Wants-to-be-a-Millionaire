body proc display3
    Window.Hide (winIDright)
    Window.Hide (winIDwrong)
    Window.Hide (winIDfinal)
    Window.Show (winIDmain)
    Window.SetActive (winIDmain)
    include "drawingGAME.t"
    currentLevel:=3
    nextLevel := 4
    answerRight := 0
    var questionLVL3 : array 1 .. 3 of string := init ("Which of the following beverages is carbonated water?","In the film 'The Wizard of Oz,' what message is written in the sky by the Wicked Witch?", "The ability to see outside your central area of focus is called what?")
    Font.Draw (questionLVL3 (number), 65, 150, font4, 0)
    if questionLVL3 (number) = "Which of the following beverages is carbonated water?" then
	helpAnswer := 2
	Font.Draw ("a) Coffee", 115, 75, font1, 0)
	Font.Draw ("b) Seltzer", 395, 75, font1, 0)
	Font.Draw ("c) Tea", 115, 25, font1, 0)
	Font.Draw ("d) Scotch", 395, 25, font1, 0)
	loop
	    mousewhere (mouseX, mouseY, buttonP)
	    if mouseX > 90 and mouseX < 290 and mouseY > 60 and mouseY < 120 and buttonP = 1 then
		finalWrong
	    elsif mouseX > 370 and mouseX < 560 and mouseY > 60 and mouseY < 120 and buttonP = 1 then
		finalRight
	    elsif mouseX > 90 and mouseX < 290 and mouseY > 10 and mouseY < 50 and buttonP = 1 then
		finalWrong
	    elsif mouseX > 370 and mouseX < 560 and mouseY > 10 and mouseY < 50 and buttonP = 1 then
		finalWrong
	    end if
	    exit when mouseX > 28 and mouseX < 92 and mouseY < 463 and mouseY > 409 and buttonP = 1 or mouseX > 28 and mouseX < 92 and mouseY < 400 and mouseY > 346 and buttonP = 1 or mouseX > 28 and mouseX < 92 and mouseY < 337 and mouseY > 283 and buttonP = 1 or mouseX > 28 and mouseX < 92 and mouseY > 218 and mouseY < 273 and buttonP = 1
	end loop
	if mouseX > 28 and mouseX < 92 and mouseY < 463 and mouseY > 409 and buttonP = 1 then
	    if fiftyfiftyUsed = true then
	    else
		fiftyFifty
	    end if
	elsif mouseX > 28 and mouseX < 92 and mouseY < 400 and mouseY > 346 and buttonP = 1 then
	    if askAudUsed = true then
	    else
		askAud
	    end if
	elsif mouseX > 28 and mouseX < 92 and mouseY < 337 and mouseY > 283 and buttonP = 1 then
	    if askFriendUsed = true then
	    else
		askFriend
	    end if
	elsif mouseX > 28 and mouseX < 92 and mouseY > 218 and mouseY < 273 and buttonP = 1 then
	    goodByeWin
	end if
    elsif questionLVL3 (number) = "In the film 'The Wizard of Oz,' what message is written in the sky by the Wicked Witch?" then
	helpAnswer := 3
	Font.Draw ("a) Off to see the wizard", 115, 75, font2, 0)
	Font.Draw ("b) I'm melting", 395, 75, font2, 0)
	Font.Draw ("c) Surrender Dorothy", 110, 25, font2, 0)
	Font.Draw ("d) Toto phone home", 395, 25, font2, 0)
	loop
	    mousewhere (mouseX, mouseY, buttonP)
	    if mouseX > 90 and mouseX < 290 and mouseY > 60 and mouseY < 120 and buttonP = 1 then
		finalWrong
	    elsif mouseX > 370 and mouseX < 560 and mouseY > 60 and mouseY < 120 and buttonP = 1 then
		finalWrong
	    elsif mouseX > 90 and mouseX < 290 and mouseY > 10 and mouseY < 50 and buttonP = 1 then
		finalRight
	    elsif mouseX > 370 and mouseX < 560 and mouseY > 10 and mouseY < 50 and buttonP = 1 then
		finalWrong
	    end if
	    exit when mouseX > 28 and mouseX < 92 and mouseY < 463 and mouseY > 409 and buttonP = 1 or mouseX > 28 and mouseX < 92 and mouseY < 400 and mouseY > 346 and buttonP = 1 or mouseX > 28 and mouseX < 92 and mouseY < 337 and mouseY > 283 and buttonP = 1 or mouseX > 28 and mouseX < 92 and mouseY > 218 and mouseY < 273 and buttonP = 1
	end loop
	if mouseX > 28 and mouseX < 92 and mouseY < 463 and mouseY > 409 and buttonP = 1 then
	    if fiftyfiftyUsed = true then
	    else
		fiftyFifty
	    end if
	elsif mouseX > 28 and mouseX < 92 and mouseY < 400 and mouseY > 346 and buttonP = 1 then
	    if askAudUsed then
	    else
		askAud
	    end if
	elsif mouseX > 28 and mouseX < 92 and mouseY < 337 and mouseY > 283 and buttonP = 1 then
	    if askFriendUsed = true then
	    else
		askFriend
	    end if
	elsif mouseX > 28 and mouseX < 92 and mouseY > 218 and mouseY < 273 and buttonP = 1 then
	    goodByeWin
	end if
    elsif questionLVL3 (number) = "The ability to see outside your central area of focus is called what?" then
	helpAnswer := 2
	Font.Draw ("a) Tunnel Vision", 115, 75, font1, 0)
	Font.Draw ("b) Peripheral Vision", 395, 75, font2, 0)
	Font.Draw ("c) Double Vision", 115, 25, font1, 0)
	Font.Draw ("d) X-Ray Vision", 395, 25, font1, 0)
	loop
	    mousewhere (mouseX, mouseY, buttonP)
	    if mouseX > 90 and mouseX < 290 and mouseY > 60 and mouseY < 120 and buttonP = 1 then
		finalWrong
	    elsif mouseX > 370 and mouseX < 560 and mouseY > 60 and mouseY < 120 and buttonP = 1 then
		finalRight
	    elsif mouseX > 90 and mouseX < 290 and mouseY > 10 and mouseY < 50 and buttonP = 1 then
		finalWrong
	    elsif mouseX > 370 and mouseX < 560 and mouseY > 10 and mouseY < 50 and buttonP = 1 then
		finalWrong
	    end if
	    exit when mouseX > 28 and mouseX < 92 and mouseY < 463 and mouseY > 409 and buttonP = 1 or mouseX > 28 and mouseX < 92 and mouseY < 400 and mouseY > 346 and buttonP = 1 or mouseX > 28 and mouseX < 92 and mouseY < 337 and mouseY > 283 and buttonP = 1 and mouseX > 28 and mouseX < 92 and mouseY > 218 and mouseY < 273 and buttonP = 1
	end loop
	if mouseX > 28 and mouseX < 92 and mouseY < 463 and mouseY > 409 and buttonP = 1 then
	    if fiftyfiftyUsed = true then
	    else
		fiftyFifty
	    end if
	elsif mouseX > 28 and mouseX < 92 and mouseY < 400 and mouseY > 346 and buttonP = 1 then
	    if askAudUsed = true then
	    else
		askAud
	    end if
	elsif mouseX > 28 and mouseX < 92 and mouseY < 337 and mouseY > 283 and buttonP = 1 then
	    if askFriendUsed = true then
	    else
		askFriend
	    end if
	elsif mouseX > 28 and mouseX < 92 and mouseY > 218 and mouseY < 273 and buttonP = 1 then
	    goodByeWin
	end if
    end if
end display3
