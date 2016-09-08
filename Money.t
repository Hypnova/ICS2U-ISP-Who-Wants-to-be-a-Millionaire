setscreen ("graphics:640;480")
%draw the box to show money, it will also display current money by highlighting it
for x : 1 .. 480 by 20
    drawbox (450, 180 + x, 640, 200 + x, 7)
end for
if money=0 then
elsif money=1 then
drawfillbox (450,180,640,200,2)
elsif money=2 then
drawfillbox (450,200,640,220,2)
elsif money=3 then
drawfillbox (450,220,640,240,2)
elsif money=4 then
drawfillbox (450,240,640,260,2)
elsif money=5 then
drawfillbox (450,260,640,280,2)
elsif money=6 then
drawfillbox (450,280,640,300,2)
elsif money=7 then
drawfillbox (450,300,640,320,2)
elsif money=8 then
drawfillbox (450,320,640,340,2)
elsif money=9 then 
drawfillbox (450,340,640,360,2)
elsif money=10then
drawfillbox (450,360,640,380,2)
elsif money=11 then 
drawfillbox (450,380,640,400,2)
elsif money=12 then
drawfillbox (450,400,640,420,2)
elsif money=13 then
drawfillbox (450,420,640,440,2)
elsif money=14 then
drawfillbox (450,440,640,460,2)
end if
Font.Draw ("1        $100", 490, 185, font4, 0)
Font.Draw ("2        $200", 490, 205, font4, 0)
Font.Draw ("3        $300", 490, 225, font4, 0)
Font.Draw ("4        $500", 490, 245, font4, 0)
Font.Draw ("5        $1 000", 490, 265, font4, 0)
Font.Draw ("6        $2 000", 490, 285, font4, 0)
Font.Draw ("7        $4 000", 490,305, font4, 0)
Font.Draw ("8        $8 000", 490,325, font4, 0)
Font.Draw ("9        $16 000", 490,345, font4, 0)
Font.Draw ("10       $32 000", 490,365, font4, 0)
Font.Draw ("11       $64 000", 490,385, font4, 0)
Font.Draw ("12       $125 000", 490,405, font4, 0)
Font.Draw ("13       $250 000", 490,425, font4, 0)
Font.Draw ("14       $500 000", 490,445, font4, 0)
Font.Draw ("15       $1 000 000", 490,465, font4, 0)
Font.Draw ("You have:",350,185,font2,0)
