body proc display12 
    Window.Show (winIDmain)
    Window.SetActive (winIDmain)
    include "drawingGAME.t"
    currentLevel:=12
    nextLevel := 13
    answerRight := 0
    var questionLVL12:array  1..3 of  string:=init ("The horn of a rhinoceros is made up primarily of the same material as what?","What is a biretta?","The Western Wall in Jerusalem was originally part of what structure?" ) 
    Font.Draw (questionLVL12 (number), 65, 150, font4, 0)
    if questionLVL12 (number) = "The horn of a rhinoceros is made up primarily of the same material as what?" then
	helpAnswer := 4
	Font.Draw ("a) Bone", 115, 75, font1, 0)
	Font.Draw ("b) Ivory", 395, 75, font1, 0)
	Font.Draw ("c) Cartilage", 115, 25, font1, 0)
	Font.Draw ("d) Hair", 395, 25, font1, 0)
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
  exit when  mouseX > 28 and mouseX < 92 and mouseY < 463 and mouseY > 409 and buttonP = 1 or  mouseX > 28 and mouseX < 92 and mouseY <400  and mouseY > 346 and buttonP = 1 or mouseX > 28 and mouseX < 92 and mouseY <337  and mouseY > 283 and buttonP = 1 or mouseX>28 and mouseX<92 and mouseY>218 and mouseY <273 and buttonP=1 
	end loop
	       if mouseX > 28 and mouseX < 92 and mouseY < 463 and mouseY > 409 and buttonP = 1 then
		fiftyFifty
		       elsif mouseX > 28 and mouseX < 92 and mouseY <400  and mouseY > 346 and buttonP = 1 then
		askAud
		elsif mouseX > 28 and mouseX < 92 and mouseY <337  and mouseY > 283 and buttonP = 1 then
		askFriend
		elsif mouseX>28 and mouseX<92 and mouseY>218 and mouseY <273 and buttonP=1 then
		goodByeWin
		end if
    elsif questionLVL12 (number) ="What is a biretta?" then
	helpAnswer := 2
	Font.Draw ("a) Firearm", 115, 75, font1, 0)
	Font.Draw ("b) Clerical cap", 395, 75, font2, 0)
	Font.Draw ("c) Tropical bird", 115, 25, font2, 0)
	Font.Draw ("d) Lumberjack's tool", 395, 25, font7, 0)
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
  exit when  mouseX > 28 and mouseX < 92 and mouseY < 463 and mouseY > 409 and buttonP = 1 or  mouseX > 28 and mouseX < 92 and mouseY <400  and mouseY > 346 and buttonP = 1 or mouseX > 28 and mouseX < 92 and mouseY <337  and mouseY > 283 and buttonP = 1  or mouseX>28 and mouseX<92 and mouseY>218 and mouseY <273 and buttonP=1 
	end loop
	       if mouseX > 28 and mouseX < 92 and mouseY < 463 and mouseY > 409 and buttonP = 1 then
		fiftyFifty
	       elsif mouseX > 28 and mouseX < 92 and mouseY <400  and mouseY > 346 and buttonP = 1 then
		askAud
	       elsif mouseX > 28 and mouseX < 92 and mouseY <337  and mouseY > 283 and buttonP = 1 then
		askFriend
		elsif mouseX>28 and mouseX<92 and mouseY>218 and mouseY <273 and buttonP=1 then
		goodByeWin
		end if
    elsif questionLVL12 (number) = "The Western Wall in Jerusalem was originally part of what structure?" then
	helpAnswer := 4
	Font.Draw ("a) Dome of the Rick", 115, 75, font2, 0)
	Font.Draw ("b) Walled City of Jericho", 395, 75, font7, 0)
	Font.Draw ("c) Masada", 115, 25, font2, 0)
	Font.Draw ("d) The Second Temple", 395, 25, font2, 0)
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
  exit when  mouseX > 28 and mouseX < 92 and mouseY < 463 and mouseY > 409 and buttonP = 1 or  mouseX > 28 and mouseX < 92 and mouseY <400  and mouseY > 346 and buttonP = 1 or mouseX > 28 and mouseX < 92 and mouseY <337  and mouseY > 283 and buttonP = 1 or mouseX>28 and mouseX<92 and mouseY>218 and mouseY <273 and buttonP=1 
	end loop
	       if mouseX > 28 and mouseX < 92 and mouseY < 463 and mouseY > 409 and buttonP = 1 then
		fiftyFifty
		       elsif mouseX > 28 and mouseX < 92 and mouseY <400  and mouseY > 346 and buttonP = 1 then
		askAud
		elsif mouseX > 28 and mouseX < 92 and mouseY <337  and mouseY > 283 and buttonP = 1 then
		askFriend 
		elsif mouseX>28 and mouseX<92 and mouseY>218 and mouseY <273 and buttonP=1 then
		goodByeWin
		end if
    end if
end display12
