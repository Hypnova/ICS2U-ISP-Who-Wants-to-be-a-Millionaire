body proc display14
    Window.Hide (winIDright)
    Window.Hide (winIDwrong)
    Window.Hide (winIDfinal)
    Window.Show (winIDmain)
    Window.SetActive (winIDmain)
    include "drawingGAME.t"
    currentLevel:=14
    nextLevel := 15
    answerRight := 0
    var questionLVL14 : array 1 .. 3 of string := init ("In Norse mythology, Mjolnir was the name of what?", "In the Charles Dickens story 'A Christmas Carol,' what is the name of Ebenezer Scrooge's fiancee?", "What composer wrote the theme song for the 1960s TV series 'Mission: Impossible'?")
    Font.Draw (questionLVL14 (number), 63, 150, font7, 0)
    if questionLVL14 (number) = "In Norse mythology, Mjolnir was the name of what?" then
	helpAnswer := 1
	Font.Draw ("a) Thor's Hammer", 115, 75, font7, 0)
	Font.Draw ("b) Odin's Horse", 395, 75, font7, 0)
	Font.Draw ("c) Sigmund's Sword", 115, 25, font7, 0)
	Font.Draw ("d) Loki's Magic Necklace", 395, 25, font7, 0)
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
    elsif questionLVL14 (number) = "In the Charles Dickens story 'A Christmas Carol,' what is the name of Ebenezer Scrooge's fiancee?" then
	helpAnswer := 1
	Font.Draw ("a) Belle", 115, 75, font1, 0)
	Font.Draw ("b) Catherine", 395, 75, font1, 0)
	Font.Draw ("c) Dora", 115, 25, font1, 0)
	Font.Draw ("d) Anna", 395, 25, font1, 0)
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
    elsif questionLVL14 (number) = "What composer wrote the theme song for the 1960s TV series 'Mission: Impossible'?" then
	helpAnswer := 3
	Font.Draw ("a) Mike Post", 115, 75, font2, 0)
	Font.Draw ("b) John Williams", 395, 75, font2, 0)
	Font.Draw ("c) Lalo Schifrin", 115, 25, font2, 0)
	Font.Draw ("d) Henry Mancini", 395, 25, font2, 0)
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
	    exit when mouseX > 28 and mouseX < 92 and mouseY < 463 and mouseY > 409 and buttonP = 1 or mouseX > 28 and mouseX < 92 and mouseY < 400 and mouseY > 346 and buttonP = 1 or mouseX < 92 and mouseY < 337 and mouseY > 283 and buttonP = 1 or mouseX > 28 and mouseX < 92 and mouseY > 218 and mouseY < 273 and buttonP = 1
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
    end display14
