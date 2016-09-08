body proc display11
    Window.Hide (winIDright)
    Window.Hide (winIDwrong)
    Window.Hide (winIDfinal)
    Window.Show (winIDmain)
    Window.SetActive (winIDmain)
    include "drawingGAME.t"
    currentLevel:=11
    nextLevel := 12
    answerRight := 0
    var questionLVL11 : array 1 .. 3 of string := init ("Which of these French dignitaries is the principal villain in the 1844 novel 'The Three Musketeers'?","In Ray Bradbury's short-story collection 'The Martian Chronicles,' who are the invaders?", "Which of the following artists is most famous for his still life paintings?")
    Font.Draw (questionLVL11 (number), 63, 150, font4, 0)
    if questionLVL11 (number) = "Which of these French dignitaries is the principal villain in the 1844 novel 'The Three Musketeers'?" then
	helpAnswer := 2
	Font.Draw ("a) King Louis XVI", 115, 75, font7, 0)
	Font.Draw ("b) Cardinal Richelieu", 395, 75, font7, 0)
	Font.Draw ("c) King Louse XIV", 115, 25, font7, 0)
	Font.Draw ("d) Cardinal Mazarin", 395, 25, font7, 0)
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
    elsif questionLVL11 (number) = "In Ray Bradbury's short-story collection 'The Martian Chronicles,' who are the invaders?" then
	helpAnswer := 2
	Font.Draw ("a) Martians", 115, 75, font1, 0)
	Font.Draw ("b) Earthlings", 395, 75, font1, 0)
	Font.Draw ("c) Robots", 115, 25, font1, 0)
	Font.Draw ("d) Giant Sandworms", 395, 25, font2, 0)
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
    elsif questionLVL11 (number) = "Which of the following artists is most famous for his still life paintings?" then
	helpAnswer := 4
	Font.Draw ("a) Winslow Homer", 115, 75, font2, 0)
	Font.Draw ("b) Norman Rockwell", 395, 75, font2, 0)
	Font.Draw ("c) Wassily Kandinsky", 115, 25, font2, 0)
	Font.Draw ("d) Paul Cezanne", 395, 25, font2, 0)
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
end display11
