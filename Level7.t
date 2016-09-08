body proc display7
    Window.Hide (winIDright)
    Window.Hide (winIDwrong)
    Window.Show (winIDmain)
    Window.Hide (winIDfinal)
    Window.SetActive (winIDmain)
    include "drawingGAME.t"
    currentLevel:=7
    nextLevel := 8
    answerRight := 0
    var questionLVL7 : array 1 .. 3 of string := init ("In what part of the human body would you find the temporal and zygomatic bones?", "How many pawns are set up on a chessboard at the start of a game?", "Which of the following is an Ivy League school?")
    Font.Draw (questionLVL7 (number), 65, 150, font4, 0)
    if questionLVL7 (number) = "In what part of the human body would you find the temporal and zygomatic bones?" then
	helpAnswer := 4
	Font.Draw ("a) Chest", 115, 75, font1, 0)
	Font.Draw ("b) Hand", 395, 75, font1, 0)
	Font.Draw ("c) Leg", 115, 25, font1, 0)
	Font.Draw ("d) Skull", 395, 25, font1, 0)
	loop
	    mousewhere (mouseX, mouseY, buttonP)
	    if mouseX > 90 and mouseX < 290 and mouseY > 60 and mouseY < 120 and buttonP = 1 then
		finalWrong
	    elsif mouseX > 370 and mouseX < 560 and mouseY > 60 and mouseY < 120 and buttonP = 1 then
		finalWrong
	    elsif mouseX > 90 and mouseX < 290 and mouseY > 10 and mouseY < 50 and buttonP = 1 then
		finalWrong
	    elsif mouseX > 370 and mouseX < 560 and mouseY > 10 and mouseY < 50 and buttonP = 1 then
		finalRight
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
    elsif questionLVL7 (number) = "How many pawns are set up on a chessboard at the start of a game?" then
	helpAnswer := 4
	Font.Draw ("a) 8", 115, 75, font1, 0)
	Font.Draw ("b) 10", 395, 75, font1, 0)
	Font.Draw ("c) 12", 115, 25, font1, 0)
	Font.Draw ("d) 16", 395, 25, font1, 0)
	loop
	    mousewhere (mouseX, mouseY, buttonP)
	    if mouseX > 90 and mouseX < 290 and mouseY > 60 and mouseY < 120 and buttonP = 1 then
		finalWrong
	    elsif mouseX > 370 and mouseX < 560 and mouseY > 60 and mouseY < 120 and buttonP = 1 then
		finalWrong
	    elsif mouseX > 90 and mouseX < 290 and mouseY > 10 and mouseY < 50 and buttonP = 1 then
		finalWrong
	    elsif mouseX > 370 and mouseX < 560 and mouseY > 10 and mouseY < 50 and buttonP = 1 then
		finalRight
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
    elsif questionLVL7 (number) = "Which of the following is an Ivy League school?" then
	helpAnswer := 4
	Font.Draw ("a) MIT", 115, 75, font1, 0)
	Font.Draw ("b) Stanford", 395, 75, font1, 0)
	Font.Draw ("c) Duke", 115, 25, font1, 0)
	Font.Draw ("d) Cornell", 395, 25, font1, 0)
	loop
	    mousewhere (mouseX, mouseY, buttonP)
	    if mouseX > 90 and mouseX < 290 and mouseY > 60 and mouseY < 120 and buttonP = 1 then
		finalWrong
	    elsif mouseX > 370 and mouseX < 560 and mouseY > 60 and mouseY < 120 and buttonP = 1 then
		finalWrong
	    elsif mouseX > 90 and mouseX < 290 and mouseY > 10 and mouseY < 50 and buttonP = 1 then
		finalWrong
	    elsif mouseX > 370 and mouseX < 560 and mouseY > 10 and mouseY < 50 and buttonP = 1 then
		finalRight
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
end display7
