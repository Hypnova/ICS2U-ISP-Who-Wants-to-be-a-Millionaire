%Siavash Samiei
%Ms.Krasteva
%Thursday December 27,2013
%Final ISP, Who Wants to be A Millionaire? Game.
%This is a game based on the gameshow based on Who Wants to Be a Millionaire?. You must answer questions to win money.
%Throughout the game there are three lifelines that you can use. Once you have correctly answer all 15 levels you will become a millionaire!
%Declaration Section
import GUI
setscreen ("graphics:640;480,nocursor")
var logo : int := Pic.FileNew ("logo.jpg") %Imports the picture of the "Who Wants To Be A Millionaire" logo
var name : string (14) %Is used to get he name of the player and use it through out the program
var cash : int := 1 %This is used to determine how much cash the player has
var number : int %Used to randomize questions
randint (number, 1, 3) %^^^^^^^^^^^^^^^^^^^^^^
var mouseX, mouseY, buttonP : int %Used for mousewhere command to recognize the answer that the player chooses in the display programs
var answerRight : int := 0 %is used to determine whether the answer the play chose is right or wrong
var nextLevel : int %determines what the next level is for program flow
var fiftyfiftyUsed : boolean := false %determines if the help option fifty fifty is used or not to make sure it is only useable once
var askAudUsed : boolean := false %determines if the help option ask audience is used or not to make sure it is only useable once
var askFriendUsed : boolean := false %determines if the help option ask friend is used or not to make sure it is only useable once
var helpAnswer : int := 0 %used to see what answer was chosen but the random integer command for the help options
var letterAnswer : string := " " %is used with helpAnswer to make the random integer into a letter answer
var money : int := 0 %determines how much money the player has
var currentLevel : int := 0
var title : int := Pic.FileNew ("home.jpg")
var aniPic : int := Pic.FileNew ("aniPic.jpg")
%Fonts
var font1 := Font.New ("Century GOthic:14")
var font2 := Font.New ("Century Gothic:11")
var font3 := Font.New ("Century Gothic:30")
var font4 := Font.New ("Century Gothic:10")
var font5 := Font.New ("Century Gothic:50")
var font6 := Font.New ("Century Gothic:14")
var font7 := Font.New ("Century Gothic:9")
var font8 := Font.New ("Century Gothic:51")
var font9 := Font.New ("Century Gothic:28")
%Windows
var winIDmain := Window.Open ("graphics:640;480")
var winIDfinal := Window.Open ("graphics:320;200")
var winIDright := Window.Open ("graphics:320;200")
var winIDwrong := Window.Open ("graphics:320;200")
var winIDhelp := Window.Open ("graphics:320;200:position:top;right")


% Forward Procedure Declaration Section
forward proc loading %Introduction
forward proc animation
forward proc nameScreen %UserInput
forward proc firstMenu
forward proc mainMenu
forward proc pauseProgram
forward proc goodBye
forward proc goodByeWin
forward proc instructions
forward proc about
forward proc wrongAnswer
forward proc rightAnswer
forward proc finalRight
forward proc finalWrong
forward proc fiftyFifty
forward proc askAud
forward proc askFriend
forward proc display
forward proc display2
forward proc display3
forward proc display4
forward proc display5
forward proc display6
forward proc display7
forward proc display8
forward proc display9
forward proc display10
forward proc display11
forward proc display12
forward proc display13
forward proc display14
forward proc display15
forward proc doNothing %Used to make sure that the final answer respone "no" works as expected
%Main Window Opening
Window.Hide (winIDright)
Window.Hide (winIDwrong)
Window.Hide (winIDfinal)
Window.Hide (winIDhelp)
Window.Show (winIDmain)
Window.SetActive (winIDmain)
%Button Declaration
var next : int
var continue : int

%Do Nothing
body proc doNothing
    Window.Hide (winIDfinal)
    if currentLevel = 1 then
	display
    elsif currentLevel = 2 then
	display2
    elsif currentLevel = 3 then
	display3
    elsif currentLevel = 4 then
	display4
    elsif currentLevel = 5 then
	display5
    elsif currentLevel = 6 then
	display6
    elsif currentLevel = 7 then
	display7
    elsif currentLevel = 8 then
	display8
    elsif currentLevel = 9 then
	display9
    elsif currentLevel = 10 then
	display10
    elsif currentLevel = 11 then
	display11
    elsif currentLevel = 12 then
	display12
    elsif currentLevel = 13 then
	display13
    elsif currentLevel = 14 then
	display14
    elsif currentLevel = 15 then
	display15
    end if
end doNothing

%Loading Screen
body proc loading
    var loadingPic : int := Pic.FileNew ("money.jpg")
    Pic.Draw (loadingPic, 0, 0, picCopy)
    Draw.ThickLine (220, 240, 420, 240, 120, 0)
    for x : 1 .. 180 %used to animate the loading bar
	Draw.ThickLine (230, 240, 230 + x, 240, 100, 45)
	delay (5)
    end for
    next := GUI.CreateButton (270, 240, 100, "Next", animation)
    GUI.SetColor (next, 0)
end loading

%Animation
body proc animation
    setscreen ("offscreenonly")
    for y : 1 .. 1
	for x : 1 .. 510 %used the  animate the strings and their colors
	    colorback (x div 3)
	    cls
	    Font.Draw ("THE QUESTION IS...", x, 500 - (x + 50), font5, x div 2)
	    Font.Draw ("IS THIS YOUR FINAL ANSWER?", 910 - (x + 500), 380 - (x - 255), font5, x div 2)
	    Font.Draw ("RIGHT ANSWER!!", x, 50 + (x + 50), font5, x div 2)
	    Font.Draw ("WRONG ANSWER :(", 10, 400 - (x + 50), font5, x div 2)
	    delay (10)
	    View.Update

	end for
    end for
    colorback (7)
    cls
    for y : 1 .. 10
	for x : 1 .. 5 %used to animate the raining money
	    Pic.Draw (aniPic, 0, -20, picCopy)
	    Draw.Text ("WHO WANTS TO BE A MILLIONAIRE?", 15, 420, font9, x * 50)
	    Draw.FillBox (500, 480 - x * 100, 450, 420 - x * 100, 2)
	    Draw.FillBox (100, 480 - x * 100, 150, 420 - x * 100, 2)
	    Draw.FillBox (300, 510 - x * 100, 250, 450 - x * 100, 2)
	    Draw.FillBox (400, 410 - x * 100, 350, 350 - x * 100, 2)
	    Draw.FillOval (475, 450 - x * 100, 10, 15, 25)
	    Draw.FillOval (125, 450 - x * 100, 10, 15, 25)
	    Draw.FillOval (375, 385 - x * 100, 10, 15, 25)
	    Draw.FillOval (275, 485 - x * 100, 10, 15, 25)
	    Draw.Text ("$", 472, 443 - x * 100, font2, 7)
	    Draw.Text ("$", 123, 443 - x * 100, font2, 7)
	    Draw.Text ("$", 373, 383 - x * 100, font2, 7)
	    Draw.Text ("$", 273, 475 - x * 100, font2, 7)
	    delay (100)
	    Draw.Text ("$", 373, 443 - x * 100, font2, 25)
	    Draw.Text ("$", 273, 443 - x * 100, font2, 25)
	    Draw.Text ("$", 472, 383 - x * 100, font2, 25)
	    Draw.Text ("$", 123, 475 - x * 100, font2, 25)
	    Draw.FillOval (375, 485 - x * 100, 10, 15, 2)
	    Draw.FillOval (475, 450 - x * 100, 10, 15, 2)
	    Draw.FillOval (125, 450 - x * 100, 10, 15, 2)
	    Draw.FillOval (375, 385 - x * 100, 10, 15, 2)
	    Draw.FillBox (400, 410 - x * 100, 350, 350 - x * 100, 7)
	    Draw.FillBox (300, 510 - x * 100, 250, 450 - x * 100, 7)
	    Draw.FillBox (500, 480 - x * 100, 450, 420 - x * 100, 7)
	    Draw.FillBox (100, 480 - x * 100, 150, 420 - x * 100, 7)
	    View.Update
	    setscreen ("nooffscreenonly")
	end for
    end for
    continue := GUI.CreateButton (270, 20, 100, "Continue", nameScreen)
    GUI.SetColor (continue, 0)
end animation
colorback (0)
cls
%Winner Animation
process winAnim
    var numFrames := Pic.Frames ("winner.gif")
    % Load the picture
    var delayTime : int
    var pics : array 1 .. numFrames of int
    Pic.FileNewFrames ("winner.gif", pics, delayTime)
    var stopGif : boolean := false
    loop
	Pic.DrawFrames (pics, 0, 0, picCopy, numFrames, 50, false)
	exit when stopGif
    end loop
end winAnim
%Pause Program
body proc pauseProgram
    var reply : string (1)
    Font.Draw ("Press any key to continue", 215, 130, font1, black)
    getch (reply)
end pauseProgram
%Logo
proc logoProc %Title
    var back : int
    back := Pic.FileNew ("640x480.jpg")
    Pic.Draw (back, 0, 0, picCopy)
    var x, y : int := 65
    Pic.Draw (logo, 240, 330, picMerge)
    loop
	Draw.Oval (315, 400, x, y, 53)
	x += 1
	y += 1
	exit when x = 95 and y = 95
    end loop
end logoProc
%Play First Song File
process playmusic1
    Music.PlayFile ("Who_Wants_To_Be_A_Millionaire.mp3")
end playmusic1
%Play Second Song File
process playmusic2
    Music.PlayFileStop
    Music.PlayFileLoop ("Who Wants to be a Millionaire Full Theme Song.mp3")
end playmusic2

%User Input
body proc nameScreen
    GUI.Disable (next)
    GUI.Disable (continue)
    fork playmusic1
    colorback (0)
    cls
    Window.SetActive (winIDmain)
    fiftyfiftyUsed := false
    askAudUsed := false
    askFriendUsed := false
    Pic.Draw (title, 0, 0, picCopy)
    Font.Draw ("Hello and welcome to Who Wants to Be a Millionaire!", 95, 430, font1, white)
    Font.Draw ("Please enter your name below to continue:", 135, 100, font1, white)
    locate (26, 34)
    Draw.FillBox (260, 85, 380, 60, 0)
    Draw.Box (260, 85, 380, 60, 7)
    get name : 14
    if name = name then
	var proceed1 : int := GUI.CreateButton (270, 20, 100, "Proceed", firstMenu)
	GUI.SetColour (proceed1, 0)
	loop
	    exit when GUI.ProcessEvent
	end loop
    end if

end nameScreen

%First Menu
body proc firstMenu
    cls
    logoProc
    Font.Draw ("Hello contestant! This is a game based on the game show: ", 100, 300, font2, white)
    Font.Draw ("Who Wants to be a Millionaire?", 100, 270, font2, white)
    Font.Draw ("Where you answer questions and make in-game money.", 100, 240, font2, white)
    Font.Draw ("This game will test your knowledge and logic.", 100, 210, font2, white)
    Font.Draw ("How would you like to proceed?", 100, 180, font2, white)
    var mainMenuButton1 : int := GUI.CreateButton (270, 100, 100, "Main Menu", mainMenu)
    GUI.SetColor (mainMenuButton1, 0)
    var exit1 : int := GUI.CreateButton (270, 75, 100, "Exit", GUI.Quit)
    GUI.SetColor (exit1, 0)
    loop
	exit when GUI.ProcessEvent
    end loop
end firstMenu

%Main Menu
body proc mainMenu
    cls
    logoProc
    var instructionsB : int := GUI.CreateButton (220, 270, 200, "Instructions", instructions)
    GUI.SetColor (instructionsB, 0)
    var playB : int := GUI.CreateButton (220, 230, 200, "Play", display)
    GUI.SetColor (playB, 0)
    var aboutB : int := GUI.CreateButton (220, 190, 200, "About Game and Creator", about)
    GUI.SetColor (aboutB, 0)
    var exit2 : int := GUI.CreateButton (270, 75, 100, "Exit", GUI.Quit)
    GUI.SetColor (exit2, 0)
    loop
	exit when GUI.ProcessEvent
    end loop
end mainMenu

%Instructions
body proc instructions
    cls
    logoProc
    %line underneath instructions for display
    Draw.ThickLine (200, 309, 430, 309, 3, 7)
    Font.Draw ("INSTRUCTIONS", 260, 311, font2, 7)
    Font.Draw ("This game involves a series of difficult questions. There are a total of 15 questions", 60, 290, font4, 0)
    Font.Draw ("that you are required to answer. The difficulty level of the questions gradually increase", 60, 270, font4, 0)
    Font.Draw ("as you advance. You must attempt to answer all 15 questions and win the 1", 60, 250, font4, 0)
    Font.Draw ("MILLION dollar cash prize! Throughout the game you have three lifelines that you can use ", 60, 230, font4, 0)
    Font.Draw ("You can view your lifelines which include 50/50, ask a friend, and ask the audience", 60, 210, font4, 0)
    Font.Draw ("on the top left. This game also provides an option for you to walkaway.", 60, 190, font4, 0)
    Font.Draw ("I wish you luck on your journey to becoming a millionaire!", 60, 170, font4, 0)
    var back1 : int := GUI.CreateButton (220, 50, 100, "Back", mainMenu)
    GUI.SetColor (back1, 0)
    var play2 : int := GUI.CreateButton (330, 50, 100, "Play", display)
    GUI.SetColor (play2, 0)
    loop
	exit when GUI.ProcessEvent
    end loop
end instructions

%About
body proc about
    cls
    logoProc
    Font.Draw ("About the Game and Programmer", 175, 305, font1, 9)
    Font.Draw ("Game:", 175, 285, font2, 9)
    locate (12, 1)
    Font.Draw ("Who wants to be a millionaire is an international television game show franchise", 70, 265, font4, white)
    Font.Draw ("of British origin, created in 1998 by David Briggs, Mike Whitehill, and Steven  Knight.", 70, 245, font4, white)
    Font.Draw ("It is currently owned and licensed by Sony Pictures Television", 70, 225, font4, white)
    Font.Draw ("Programmer:", 175, 195, font2, 9)
    Font.Draw ("Siavash Samiei is a grade 9 student at William Lyon Mackenzie C.I.. He has a", 70, 165, font4, white)
    Font.Draw ("love of programming and enjoys spending his free time learning new programming", 70, 145, font4, white)
    Font.Draw ("languages, reading, and playing video games.", 70, 125, font4, white)
    var back2 : int := GUI.CreateButton (270, 50, 2, "Back", mainMenu)
    GUI.SetColor (back2, 0)
    loop
	exit when GUI.ProcessEvent
    end loop
end about

%Display
fork playmusic2
include "Level1.t"
include "Level2.t"
include "Level3.t"
include "Level4.t"
include "Level5.t"
include "Level6.t"
include "Level7.t"
include "Level8.t"
include "Level9.t"
include "Level10.t"
include "Level11.t"
include "Level12.t"
include "Level13.t"
include "Level14.t"
include "Level15.t"

%Final Answer Right
body proc finalRight
    answerRight := 2
    Window.Hide (winIDright)
    Window.Close (winIDfinal)
    winIDfinal := Window.Open ("graphics:320;200")
    Window.Show (winIDfinal)
    Window.SetActive (winIDfinal)
    var back : int
    back := Pic.FileNew ("640x480.jpg")
    Pic.Draw (back, 0, 0, picCopy)
    Font.Draw (name, 75, 120, font1, 0)
    Font.Draw ("Is this your final answer?", 45, 100, font1, 0)
    var yes : int := GUI.CreateButton (30, 50, 100, "Yes", rightAnswer)
    var no : int := GUI.CreateButton (180, 50, 100, "No", doNothing)
    GUI.SetColor (no, 0)
    GUI.SetColor (yes, 0)
    loop
	exit when GUI.ProcessEvent
    end loop
end finalRight

%Final Answer Wrong
body proc finalWrong
    answerRight := 1
    Window.Close (winIDfinal)
    winIDfinal := Window.Open ("graphics:320;200")
    Window.SetActive (winIDfinal)
    Window.Show (winIDfinal)
    var back : int
    back := Pic.FileNew ("640x480.jpg")
    Pic.Draw (back, 0, 0, picCopy)
    Font.Draw (name, 75, 120, font1, 0)
    Font.Draw ("Is this your final answer?", 45, 100, font1, 0)
    var yes : int := GUI.CreateButton (30, 50, 100, "Yes", wrongAnswer)
    var no : int := GUI.CreateButton (180, 50, 100, "No", doNothing)
    GUI.SetColor (no, 0)
    GUI.SetColor (yes, 0)
    loop
	exit when GUI.ProcessEvent
    end loop
end finalWrong

%Right Answer
body proc rightAnswer
    Window.Hide (winIDwrong)
    winIDright := Window.Open ("graphics:320;200")
    Window.Show (winIDright)
    Window.SetActive (winIDright)
    logoProc
    if answerRight = 2 then
	Font.Draw ("Congratulations! You answered correctly!", 0, 100, font2, white)
	if nextLevel = 2 then
	    money := 1
	    var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display2)
	    GUI.SetColor (continue, 0)
	elsif nextLevel = 3 then
	    money := 2
	    var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display3)
	    GUI.SetColor (continue, 0)
	elsif nextLevel = 4 then
	    money := 3
	    var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display4)
	    GUI.SetColor (continue, 0)
	elsif nextLevel = 5 then
	    money := 4
	    var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display5)
	    GUI.SetColor (continue, 0)
	elsif nextLevel = 6 then
	    money := 5
	    var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display6)
	    GUI.SetColor (continue, 0)
	elsif nextLevel = 7 then
	    money := 6
	    var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display7)
	    GUI.SetColor (continue, 0)
	elsif nextLevel = 8 then
	    money := 7
	    var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display8)
	    GUI.SetColor (continue, 0)
	elsif nextLevel = 9 then
	    money := 8
	    var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display9)
	    GUI.SetColor (continue, 0)
	elsif nextLevel = 10 then
	    money := 9
	    var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display10)
	    GUI.SetColor (continue, 0)
	elsif nextLevel = 11 then
	    money := 10
	    var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display11)
	    GUI.SetColor (continue, 0)
	elsif nextLevel = 12 then
	    money := 11
	    var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display12)
	    GUI.SetColor (continue, 0)
	elsif nextLevel = 13 then
	    money := 12
	    var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display13)
	    GUI.SetColor (continue, 0)
	elsif nextLevel = 14 then
	    money := 13
	    var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display14)
	    GUI.SetColor (continue, 0)
	elsif nextLevel = 15 then
	    money := 14
	    var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display15)
	    GUI.SetColor (continue, 0)
	elsif nextLevel = 16 then
	    money := 15
	    goodByeWin
	end if
    else
	wrongAnswer
    end if
    var exit3 : int := GUI.CreateButton (180, 50, 100, "Walk Away", goodByeWin)
    GUI.SetColor (exit3, 0)
    loop
	exit when GUI.ProcessEvent
    end loop
end rightAnswer

%Wrong Answer
body proc wrongAnswer
    Window.Hide (winIDright)
    Window.Hide (winIDfinal)
    Window.Show (winIDwrong)
    Window.SetActive (winIDwrong)
    logoProc
    if answerRight = 1 then
	Font.Draw ("Sorry but that is the wrong answer.", 20, 100, font2, white)
    else
	rightAnswer
    end if
    var playAgain : int := GUI.CreateButton (30, 50, 100, "Play Again", nameScreen)
    GUI.SetColor (playAgain, 0)
    var exit3 : int := GUI.CreateButton (180, 50, 100, "Exit", goodBye)
    GUI.SetColor (exit3, 0)
    loop
	exit when GUI.ProcessEvent
    end loop
end wrongAnswer

%Fifty Fifty
body proc fiftyFifty
    Window.Show (winIDhelp)
    Window.SetActive (winIDhelp)
    var back : int
    back := Pic.FileNew ("640x480.jpg")
    Pic.Draw (back, 0, 0, picCopy)
    Font.Draw ("Help option: Fifty Fifty.", 20, 100, font2, white)
    var AIAnswer : int := Rand.Int (1, 4)
    loop
	if AIAnswer = helpAnswer then
	    AIAnswer := Rand.Int (1, 4)
	end if
	if helpAnswer > AIAnswer then
	    var fiftyFiftyAnswer : int := Rand.Int (AIAnswer, helpAnswer)
	    if fiftyFiftyAnswer = 1 then
		letterAnswer := "A"
	    elsif fiftyFiftyAnswer = 2 then
		letterAnswer := "B"
	    elsif fiftyFiftyAnswer = 3 then
		letterAnswer := "C"
	    elsif fiftyFiftyAnswer = 4 then
		letterAnswer := "D"
	    end if
	    Draw.Text ("Fifty Fifty answered: " + letterAnswer, 20, 70, font2, white)
	elsif AIAnswer > helpAnswer then
	    var fiftyFiftyAnswer : int := Rand.Int (helpAnswer, AIAnswer)
	    if fiftyFiftyAnswer = 1 then
		letterAnswer := "A"
	    elsif fiftyFiftyAnswer = 2 then
		letterAnswer := "B"
	    elsif fiftyFiftyAnswer = 3 then
		letterAnswer := "C"
	    elsif fiftyFiftyAnswer = 4 then
		letterAnswer := "D"
	    end if
	    Draw.Text ("Fifty Fifty answered: " + letterAnswer, 20, 70, font2, white)
	end if
	exit when AIAnswer not= helpAnswer
    end loop
    fiftyfiftyUsed := true
    if nextLevel = 2 then
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 3 then
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display2)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 4 then
	money := 3
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display3)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 5 then
	money := 4
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display4)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 6 then
	money := 5
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display5)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 7 then
	money := 6
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display6)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 8 then
	money := 7
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display7)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 9 then
	money := 8
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display8)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 10 then
	money := 9
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display9)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 11 then
	money := 10
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display10)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 12 then
	money := 11
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display11)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 13 then
	money := 12
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display12)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 14 then
	money := 13
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display13)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 15 then
	money := 14
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display14)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 16 then
	money := 14
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display15)
	GUI.SetColor (continue, 0)
    end if
    loop
	exit when GUI.ProcessEvent
    end loop
end fiftyFifty
%Ask Audience
body proc askAud
    Window.Hide (winIDright)
    Window.Hide (winIDwrong)
    Window.Show (winIDhelp)
    Window.SetActive (winIDhelp)
    var back : int
    back := Pic.FileNew ("640x480.jpg")
    Pic.Draw (back, 0, 0, picCopy)
    Font.Draw ("Help option: Ask the Audience.", 20, 150, font1, white)
    var ans : int := Rand.Int (1, 4)
    if ans = 1 then
	Font.Draw ("The Audience answered A.", 20, 100, font2, white)
    elsif ans = 2 then
	Font.Draw ("The Audience answered B.", 20, 100, font2, white)
    elsif ans = 3 then
	Font.Draw ("The Audience answered C.", 20, 100, font2, white)
    elsif ans = 4 then
	Font.Draw ("The Audience answered D.", 20, 100, font2, white)
    end if
    askAudUsed := true
    if nextLevel = 2 then
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 3 then
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display2)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 4 then
	money := 3
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display3)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 5 then
	money := 4
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display4)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 6 then
	money := 5
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display5)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 7 then
	money := 6
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display6)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 8 then
	money := 7
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display7)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 9 then
	money := 8
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display8)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 10 then
	money := 9
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display9)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 11 then
	money := 10
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display10)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 12 then
	money := 11
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display11)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 13 then
	money := 12
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display12)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 14 then
	money := 13
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display13)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 15 then
	money := 14
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display14)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 16 then
	money := 14
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display15)
	GUI.SetColor (continue, 0)
    end if
end askAud

%Ask Friend
body proc askFriend
    Window.Hide (winIDright)
    Window.Hide (winIDwrong)
    Window.Show (winIDhelp)
    Window.SetActive (winIDhelp)
    var back : int
    back := Pic.FileNew ("640x480.jpg")
    Pic.Draw (back, 0, 0, picCopy)
    Font.Draw ("Help option: Ask a Friend.", 20, 150, font2, white)
    var ans : int := Rand.Int (1, 4)
    if ans = 1 then
	Font.Draw ("Your friend answered A.", 20, 100, font2, white)
    elsif ans = 2 then
	Font.Draw ("Your friend answered B.", 20, 100, font2, white)
    elsif ans = 3 then
	Font.Draw ("Your friend answered C.", 20, 100, font2, white)
    elsif ans = 4 then
	Font.Draw ("Your friend answered D.", 20, 100, font2, white)
    end if
    askFriendUsed := true
    if nextLevel = 2 then
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 3 then
	var continue : int := GUI.CreateButton (30, 25, 100, "Continue", display2)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 4 then
	money := 3
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display3)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 5 then
	money := 4
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display4)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 6 then
	money := 5
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display5)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 7 then
	money := 6
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display6)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 8 then
	money := 7
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display7)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 9 then
	money := 8
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display8)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 10 then
	money := 9
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display9)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 11 then
	money := 10
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display10)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 12 then
	money := 11
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display11)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 13 then
	money := 12
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display12)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 14 then
	money := 13
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display13)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 15 then
	money := 14
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display14)
	GUI.SetColor (continue, 0)
    elsif nextLevel = 16 then
	money := 14
	var continue : int := GUI.CreateButton (30, 50, 100, "Continue", display15)
	GUI.SetColor (continue, 0)
    end if
end askFriend
%Winner
body proc goodByeWin
    Window.Hide (winIDfinal)
    Window.Hide (winIDwrong)
    Window.Hide (winIDright)
    Window.Show (winIDmain)
    Window.SetActive (winIDmain)
    cls
    logoProc
    var winnings : string := " "
    if money = 1 then
	winnings := "$100"
    elsif money = 2 then
	winnings := "$200"
    elsif money = 3 then
	winnings := "$300"
    elsif money = 4 then
	winnings := "$500"
    elsif money = 5 then
	winnings := "$1 000"
    elsif money = 6 then
	winnings := "$2 000"
    elsif money = 7 then
	winnings := "$4 000"
    elsif money = 8 then
	winnings := "$8 000"
    elsif money = 9 then
	winnings := "$16 000"
    elsif money = 10 then
	winnings := "$32 000"
    elsif money = 11 then
	winnings := "$64 000"
    elsif money = 12 then
	winnings := "$125 000"
    elsif money = 13 then
	winnings := "$250 000"
    elsif money = 14 then
	winnings := "$500 000"
    end if
    if money not= 0 and money not= 15 then
	Font.Draw ("YOU ARE A WINNER!", 250, 270, font1, white)
	Draw.Text ("You won:" + winnings, 250, 250, font1, white)
	Font.Draw ("By:Siavash Samiei", 250, 270, font1, white)
	Font.Draw ("Thank you for playing! Come again!", 180, 250, font1, white)
	var exit4 : int := GUI.CreateButton (180, 50, 100, "Exit", GUI.Quit)
	GUI.SetColor (exit4, 0)
    elsif money = 0 then
	goodBye
    elsif money = 15 then
	fork winAnim
	fork playmusic1
	loop
	    Font.Draw ("CONGRATULATIONS!", 0, 300, font5, 7)
	    Font.Draw ("YOU ARE A MILLIONAIRE!", 0, 250, font3, 7)
	    Font.Draw ("By:Siavash Samiei", 210, 270, font1, white)
	    Font.Draw ("Thank you for playing! Come again!", 180, 180, font1, white)
	    var exit5 : int := GUI.CreateButton (180, 50, 100, "Exit", GUI.Quit)
	    GUI.SetColor (exit5, 0)
	end loop
    end if
    delay (4000)
    Window.Close (winIDmain)
end goodByeWin

%Good Bye
body proc goodBye
    Window.Hide (winIDwrong)
    Window.Close (winIDwrong)
    Window.Show (winIDmain)
    Window.SetActive (winIDmain)
    cls
    logoProc
    Font.Draw ("By:Siavash Samiei", 250, 270, font1, white)
    Font.Draw ("Thank you for playing! Come again!", 180, 250, font1, white)
    delay (4000)
    Window.Close (winIDmain)
end goodBye


%Main Program
loading
loop
    exit when GUI.ProcessEvent
end loop
goodBye
%End Program
