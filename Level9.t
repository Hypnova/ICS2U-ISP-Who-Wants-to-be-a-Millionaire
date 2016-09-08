body proc display9
    Window.Hide (winIDright)
    Window.Hide (winIDwrong)
    Window.Hide (winIDfinal)
    Window.Show (winIDmain)
    Window.SetActive (winIDmain)
    include "drawingGAME.t"
    currentLevel:=9
    nextLevel := 10
    answerRight := 0
    var questionLVL9 : array 1 .. 3 of string := init ("Which two countries currently account for more than a third of Earth's population?","The angular, temporal and supraorbital veins are found in what parts of the human body?", "What are the two title cities in the Charles Dickens novel 'A Tale of Two Cities'?")
    Font.Draw (questionLVL9 (number), 63, 150, font4, 0)
    if questionLVL9 (number) = "Which two countries currently account for more than a third of Earth's population?" then
	helpAnswer := 2
	Font.Draw ("a) China and Russia", 115, 75, font7, 0)
	Font.Draw ("b) India and China", 395, 75, font7, 0)
	Font.Draw ("c) India and Pakistan", 115, 25, font7, 0)
	Font.Draw ("d) China and Brazil", 395, 25, font7, 0)
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
    elsif questionLVL9 (number) = "The angular, temporal and supraorbital veins are found in what parts of the human body?" then
	helpAnswer := 1
	Font.Draw ("a) Head and Face", 115, 75, font7, 0)
	Font.Draw ("b) Legs and Feet", 395, 75, font7, 0)
	Font.Draw ("c) Heart and Lungs", 115, 25, font7, 0)
	Font.Draw ("d) Arms and Hands", 395, 25, font7, 0)
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
    elsif questionLVL9 (number) = "What are the two title cities in the Charles Dickens novel 'A Tale of Two Cities'?" then
	helpAnswer := 2
	Font.Draw ("a) London and New York", 115, 75, font7, 0)
	Font.Draw ("b) Paris and London", 395, 75, font7, 0)
	Font.Draw ("c) Rome and London", 115, 25, font7, 0)
	Font.Draw ("d) London and Venice", 395, 25, font7, 0)
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
    end if
end display9
