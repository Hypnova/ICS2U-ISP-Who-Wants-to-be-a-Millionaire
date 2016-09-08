body proc display13
    Window.Hide (winIDright)
    Window.Hide (winIDwrong)
    Window.Hide (winIDfinal)
    Window.Show (winIDmain)
    Window.SetActive (winIDmain)
    include "drawingGAME.t"
    currentLevel:=13
    nextLevel := 14
    answerRight := 0
    var questionLVL13 : array 1 .. 3 of string := init ("The rococo style of art originated in what country?", "The name of the German news magazine 'Der Spiegel' means what in English?", "The word 'algebra' comes from what language?")
    Font.Draw (questionLVL13 (number), 64, 150, font4, 0)
    if questionLVL13 (number) = "The rococo style of art originated in what country?" then
	helpAnswer := 1
	Font.Draw ("a) France", 115, 75, font1, 0)
	Font.Draw ("b) Italy", 395, 75, font1, 0)
	Font.Draw ("c) Austria", 115, 25, font1, 0)
	Font.Draw ("d) Spain", 395, 25, font1, 0)
	loop
	    mousewhere (mouseX, mouseY, buttonP)
	    if mouseX > 90 and mouseX < 290 and mouseY > 60 and mouseY < 120 and buttonP = 1 then
		finalRight
	    elsif mouseX > 370 and mouseX < 560 and mouseY > 60 and mouseY < 120 and buttonP = 1 then
		finalWrong
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
	elsif questionLVL13 (number) = "The name of the German news magazine 'Der Spiegel' means what in English?" then
	    helpAnswer := 2
	    Font.Draw ("a) The Obeserver", 115, 75, font1, 0)
	    Font.Draw ("b) The Mirror", 395, 75, font1, 0)
	    Font.Draw ("c) The Sun", 115, 25, font1, 0)
	    Font.Draw ("d) The Times", 395, 25, font1, 0)
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
	elsif questionLVL13 (number) = "The word 'algebra' comes from what language?" then
	    helpAnswer := 1
	    Font.Draw ("a) Arabic", 115, 75, font1, 0)
	    Font.Draw ("b) Greek", 395, 75, font1, 0)
	    Font.Draw ("c) Sanskirt", 115, 25, font1, 0)
	    Font.Draw ("d) Hebrew", 395, 25, font1, 0)
	    loop
		mousewhere (mouseX, mouseY, buttonP)
		if mouseX > 90 and mouseX < 290 and mouseY > 60 and mouseY < 120 and buttonP = 1 then
		    finalRight
		elsif mouseX > 370 and mouseX < 560 and mouseY > 60 and mouseY < 120 and buttonP = 1 then
		    finalWrong
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
	    end if
end display13
