colorback(black)
cls
%1
process two
var q:=1
loop
var y:int:=100
for x:5..150 by 50  
for g:1..75 by 50
y-=g
q+=1
drawfilloval (x,y ,10,10,q)
delay(10)
if q=255 then q:=1
end if
end for
end for
end loop
end two
%2
process one
var q:=1
loop
var y:int:=400
for decreasing x:150..5 by 50  
for g:1..100 by 50
y-=g
q+=1
drawfilloval (x-50,y+50 ,10,10,q)
delay(10)
if q=255 then q:=1
end if
end for
end for
end loop
end one
%3
process three
var q:=1
loop
var y:int:=400
for x:5..550 by 50  
for g:1..100 by 50
y-=g
q+=1
drawfilloval (x+525,y+50 ,10,10,q)
delay(10)
if q=255 then q:=1
end if
end for
end for
end loop
end three
%4
process four
var q:=1
loop
var y:int:=400
for decreasing x:550..5 by 50  
for g:1..100 by 50
y-=g
q+=1
drawfilloval (x+385,y+25 ,10,10,q)
delay(10)
if q=255 then q:=1
end if
end for
end for
end loop
end four
%Fill

fork two
fork one 
fork three
fork four
