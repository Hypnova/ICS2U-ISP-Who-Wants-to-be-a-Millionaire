    var mypic2: int
    mypic2:= Pic.FileNew ("ohi.jpg")
    Pic.Draw (mypic2, 0, 0, picCopy)
  include "money.t"
    %draw questions rectangle
    drawline (0, 150, 10, 150, 63)
    drawline (10, 150, 50, 180, 63)
    drawline (10, 150, 50, 120, 63)
    drawline (640, 150, 630, 150, 63)
    drawline (630, 150, 590, 180, 63)
    drawline (630, 150, 590, 120, 63)
    drawline (50, 180, 590, 180, 63)
    drawline (50, 120, 590, 120, 63)
    drawfill (550, 160, 7, 63)

    %draw box for option A + seperate line going from a to b
    drawline (90, 80, 120, 100, 63)
    drawline (90, 80, 120, 60, 63)
    drawline (0, 80, 90, 80, 63)
    drawline (560, 80, 640, 80, 63)
    drawline (290, 80, 370, 80, 63)
    drawline (260, 100, 290, 80, 63)
    drawline (260, 60, 290, 80, 63)
    drawline (260, 100, 120, 100, 63)
    drawline (260, 60, 120, 60, 63)
    drawfill (120, 65, 7, 63)

    %draw box for option B
    drawline (370, 80, 400, 100, 63)
    drawline (370, 80, 400, 60, 63)
    drawline (560, 80, 530, 100, 63)
    drawline (560, 80, 530, 60, 63)
    drawline (400, 100, 530, 100, 63)
    drawline (530, 60, 400, 60, 63)
    drawfill (400, 65, 7, 63)

    %draw box for option C and seperate line going from a to d
    drawline (0, 30, 90, 30, 63)
    drawline (640, 30, 560, 30, 63)
    drawline (90, 30, 120, 50, 63)
    drawline (90, 30, 120, 10, 63)
    drawline (290, 30, 370, 30, 63)
    drawline (290, 30, 260, 10, 63)
    drawline (290, 30, 260, 50, 63)
    drawline (260, 50, 120, 50, 63)
    drawline (260, 10, 120, 10, 63)
    drawfill (270, 40, 7, 63)

    %draw box for option D
    drawline (370, 30, 400, 10, 63)
    drawline (370, 30, 400, 50, 63)
    drawline (560, 30, 530, 50, 63)
    drawline (560, 30, 530, 10, 63)
    drawline (530, 50, 400, 50, 63)
    drawline (530, 10, 400, 10, 63)
    drawfill (400, 40, 7, 63)

    %draw life1
    if fiftyfiftyUsed=true then
    drawoval (60, 436, 32, 27, 2)
    drawfill (60, 437, 150, 2)
    Draw.Text ("X",40,409,font5,red)
    else
    drawoval (60, 436, 32, 27, 2)
    drawfill (60, 437, 150, 2)
    end if
    %drawlife2
    if askAudUsed=true then
    drawoval (60, 373, 32, 27, 2)
    drawfill (60, 373, 150, 2)
    Draw.Text ("X",40,346,font5,red)
    else
    drawoval (60, 373, 32, 27, 2)
    drawfill (60, 373, 150, 2)
    end if
    %drawlife3
    if askFriendUsed=true then
    drawoval (60, 310, 32, 27, 2)
    drawfill (60, 310, 150, 2)
    Draw.Text ("X",40,283,font5,red)
    else
    drawoval (60, 310, 32, 27, 2)
    drawfill (60, 310, 150, 2)
    end if
    %draw walkaway
    drawoval (60, 245, 32, 27, 2)
    drawfill (60, 245, 150, 2)
     

    %insert letters (text) for walkaway and the 3 lifes
    Font.Draw ("50:50", 40, 426, font1, 0)
    Font.Draw ("Ask", 40, 375, font1, 0)
    Font.Draw ("Crowd", 35, 358, font1, 0)
    Font.Draw ("Ask ", 40, 317, font1, 0)
    Font.Draw ("Friend", 34, 299, font1, 0)
    Font.Draw ("W", 43, 233, font3, 0)
    
