;משחק פק מן
IDEAL
MODEL small
STACK 100h
DATASEG
p186
jumps
; --------------------------
; Your variables here
; --------------------------
count db 0;ספירה של לולאה
column db ?;מיקום בשורה
row db ?;מיקום שורה
tav db 0;תו
ten db 10;10*
len dw 8;אורך קו
div40 db 40;לחלק ב40
mul7 db 7;ב7 להכפיל
life db 3;מספר החיים
countp dw 0;ספירה של נקודות
countpoints db 0;ספירה של נקודות
pointsv db 0;ספירה של נקודות
mode db 1;מצב
modecount dw 0;ספירה של מתי לשנות את הקודם
chr2 db ?;תו
chr db 0;תו
lastlegalchr db 'w';שמירה של תו
color dw 9;צבע
pixelcolor db 0;צבע בפיקסל
ColorAtp1 dw ?;בישביל לולאה
bx_saver dw 0;שומר את :
rnd db 0;שומר מיספר רנדומלי
savexcoord dw ?;שומר את X
saveycoord dw ?;שומר את Y
x_coordinate dw 0;מיקום בX
y_coordinate dw 0;מיקום בY
x_temp dw 0;מיקום בX
y_temp dw 0;מיקום בY
px dw 80 ;pacman x cord
py dw  88 ;pacman y cord
pclastx dw 80 ;מקום אחרון בX
pclasty dw 88 ;מיקום אחרון בY
gry dw 56;red g 
grx dw 80;מיקום רוח
grlastx dw ?;מיקום אחרון של רוח
grlasty dw ?;מיקום אחרון של רוח
gpx dw 80;מיקום רוח
gpy dw 56;מיקום רוח
gplastx dw ?;מיקום אחרון של רוח
gplasty dw ?;מיקום אחרון של רוח
gbrx dw 80;מיקום רוח
gbry dw 56;מיקום רוח
gbrlastx dw ?;מיקום אחרון של רוח
gbrlasty dw ?;מיקום אחרון של רוח
gbx dw 80;מיקום רוח
gby dw 56;מיקום רוח
gblastx dw ?;מיקום אחרון של רוח
gblasty dw ?;מיקום אחרון של רוח
g5x dw 80;מיקום רוח
g5y dw 56;מיקום רוח
g5lastx dw ?;מיקום אחרון של רוח
g5lasty dw ?;מיקום אחרון של רוח
lasty dw ?;מיקום אחרון של רוח שנישלח לאלגוריתם
lastx dw ?;מיקום אחרון של רוח שנישלח לאלגוריתם
up dw ?; מרחק הרוך עם היא אולכת למלעה
down dw ?;מרחק מהמטרה
left dw ?;מרחק מהמטרה
right dw ?;מרחק מהמטרה
targety dw ?; מיקום שאליוו הרוח צריכה לעגיעה
targetx dw ?; מיקום שאליוו הרוח צריכה לעגיעה
game_over_you_lose db'                                                                              ',10,13; מסך הפסד
db'                                                                              ',10,13
db'                                                                              ',10,13
db'                                                                              ',10,13
db'                                                                              ',10,13
db'                                                                              ',10,13
db'                                                                              ',10,13 
db'              _________    _____   ____     _______  __ ___________           ',10,13         
db'             / ___\__  \  /     \_/ __ \   /  _ \  \/ // __ \_  __ \          ',10,13
db'            / /_/  > __ \|  Y Y  \  ___/  (  <_> )   /\  ___/|  | \/          ',10,13
db'            \___  (____  /__|_|  /\___  >  \____/ \_/  \___  >__|             ',10,13
db'           /_____/     \/      \/     \/                   \/                 ',10,13
db'         	    	          .__                                            ',10,13
db'             ___.__. ____  __ __  |  |   ____  ______ ____                    ',10,13
db'            <   |  |/  _ \|  |  \ |  |  /  _ \/  ___// __ \                   ',10,13
db'             \___  (  <_> )  |  / |  |_(  <_> )___ \\  ___/                   ',10,13
db'             / ____|\____/|____/  |____/\____/____  >\___  >                  ',10,13
db'             \/                                   \/     \/                   ',10,13
db'                                                                              ',10,13
db'                           a=again                                            ',10,13
db'                                                                              ',10,13
db'                                                                              ',10,13,'$'
openscreen db'                                                                              ',10,13;מסך פתיחה
db'                                                                              ',10,13
db'                                                                              ',10,13
db'                          creator: ariel rozen                                ',10,13
db'                                                                              ',10,13
db'                                                                              ',10,13
db'                  ____   ____    __  ___ ___   ____  ____                     ',10,13
db'                 |    \ /    |  /  ]|   |   | /    ||    \                    ',10,13 
db'                 |  o  )  o  | /  / | _   _ ||  o  ||  _  |                   ',10,13
db'                 |   _/|     |/  /  |  \_/  ||     ||  |  |                   ',10,13
db'                 |  |  |  _  /   \_ |   |   ||  _  ||  |  |                   ',10,13   
db'                 |  |  |  |  \     ||   |   ||  |  ||  |  |                   ',10,13
db'                 |__|  |__|__|\____||___|___||__|__||__|__|                   ',10,13
db'                                                                              ',10,13
db'                  h=help        q=quit                                        ',10,13
db'                  s=start                                                     ',10,13,'$'
helpscreen db'                                                                                   ',10,13;מסך עזרה
db'      moving mechanics:                              game:                                    ',10,13
db'         w=up                          you win when you ate all the fruits.                   ',10,13
db'         d=left                        the white fruits give you the abilite                  ',10,13
db'         s=down                                 to ate the ghost.                             ',10,13
db'         a=right                       otherwise you will lose a life                         ',10,13
db'                                       you have 3 lifes when you have 0 you die.              ',10,13
db'                                                                                              ',10,13
db'                                                    q=quit                                    ',10,13
db'                                                                                              ',10,13
db'                                                                                              ',10,13
db'                                                                                              ',10,13,'$'
winscreen db'                                                                            ',10,13;מסך ניצחון
db'                                                                                                ',10,13
db'                                                                                                ',10,13
db'                                                                                                ',10,13
db'                                                                                                ',10,13
db'                                                                                                ',10,13
db'                         __ __   ___   __ __      __    __  ____  ____                          ',10,13
db'                         |  |  | /   \ |  |  |    |  |__|  ||    ||    \                        ',10,13
db'                         |  |  ||     ||  |  |    |  |  |  | |  | |  _  |                       ',10,13
db'                         |  ~  ||  O  ||  |  |    |  |  |  | |  | |  |  |                       ',10,13
db'                         |___, ||     ||  :  |    |  `  ^  | |  | |  |  |                       ',10,13
db'                         |     ||     ||     |     \      /  |  | |  |  |                       ',10,13
db'                         |____/  \___/  \__,_|      \_/\_/  |____||__|__|                       ',10,13
db'                                                                                                ',10,13
db'                                        a=again                                                 ',10,13
db'                                                                                                ',10,13,'$'

MAP		db 	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;מפה
		db	1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db  1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db  1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;plts
MAPPl	db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;מפה של הפירות
        db	0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 2, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 2, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 2, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 2, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		lifeleft db 'l','l','i','f','e',' ','l','e','f','t',':';תוים
		scoresting db 's','s','c','o','r','e',':';תוים
		mappl2 db  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;מפה של הפירות
        db	0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 2, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 2, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 2, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 2, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
		db	0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
CODESEG
;מדפיס סתרינג
    proc printString
    pusha
    mov ah,9h
    int 21h
    popa
    ret
    endp printString
	;מדפיס פיקסל במיקום ובצבעה
proc draw_pixel
pusha
	xor bh, bh  ; bh = 0
	mov cx, [x_temp]
	mov dx, [y_temp]
	mov ax, [color]
	mov ah, 0ch
	int 10h
popa
ret
endp draw_pixel
;מדפיס פיקסל במיקום ובצבעה
proc draw_pixelp
pusha
	xor bh, bh  ; bh = 0
	mov cx, [x_coordinate]
	mov dx, [y_coordinate]
	mov ax, [color]
	mov ah, 0ch
	int 10h
popa
ret
endp draw_pixelp
; draws a line of pixels
proc draw_line
	pusha
	; move x_coordinate to x_temp
mov ax, [x_coordinate]
	mov [x_temp], ax

	mov cx, [len]
draw:
	call draw_pixel
	inc [x_temp]
	loop draw

	popa
	ret 
endp	draw_line	
;מציר ריבוע בגודל ו ב צבעה
proc draw_rect
	pusha
mov cx, [len]
	mov ax, [y_coordinate]
	mov [y_temp], ax
rect:
	call draw_line
	inc [y_temp]		; column
	loop rect
popa
	ret 
endp	draw_rect
;בונה את המפה
proc mapbuildpanc
pusha
mov si,0

mov cx,840
mapprintloop:
cmp[MAP+si],1
jne noprint
call draw_rect
noprint:
add si,1
add [x_coordinate],8
xor ax,ax
mov ax,si
div [div40]
cmp ah,00
jne endcl
mul [mul7]
mov [y_coordinate],ax
endcl:
loop mapprintloop
popa
ret
endp mapbuildpanc
;בונה את כל הפירות
proc mapp
pusha
mov [y_coordinate],8
mov [x_coordinate],3
mov [y_temp],0
mov [x_temp],0
mov [color],65
mov [len],2
mov si,[countp]

mov cx,800
mapplloop:
cmp[MAPPl+si],0
je noprint2
cmp [MAPPl+si],1
jne bigp
call draw_rect
jmp noprint2
bigp:
mov [color],15
call draw_rect
mov [color],65
noprint2:
add si,1
add [x_coordinate],8
cmp si,40
jb endcl2
xor ax,ax
mov ax,si
div [div40]
cmp ah,00
jne endcl2
mul [mul7]
mov [y_coordinate],ax
add [y_coordinate],2
endcl2:
loop mapplloop
mov [len],8
popa
ret
endp mapp
;ףקורה תו ומכניס אותו לזיכרון
	proc readChr
    pusha
    ; waits for character
    mov ah, 0h
    int 16h
    mov [chr], al    ; save character to [chr]
    popa
    ret
endp readChr
;מחשב את המיקום של פק מן
proc calculateCords
pusha
cmp [chr2],0000
je calculateCord
cmp [chr2],'a'
jne calcifd2
sub [x_coordinate],2
call ColorAtpacman
cmp [pixelcolor],9h
jne endifcalclegal2
add [x_coordinate],2
jmp calculateCord
calcifd2:
cmp [chr2],'d'
jne cmpifw2
add [x_coordinate],2
call ColorAtpacman
cmp [pixelcolor],9h
jne endifcalclegal2
sub [x_coordinate],2
jmp calculateCord
cmpifw2:
cmp [chr2],'w'
jne cmpss2
sub [y_coordinate],2
call ColorAtpacman
cmp [pixelcolor],9h
jne endifcalclegal2
add [y_coordinate],2
jmp calculateCord
cmpss2:
cmp [chr2],'s'
jne calculateCord
add [y_coordinate],2
call ColorAtpacman
cmp [pixelcolor],9h
jne endifcalclegal2
sub [y_coordinate],2
jmp calculateCord
xor ax,ax
xor dx,dx
calculateCord:
cmp [chr],'a'
jne calcifd
sub [x_coordinate],2
call ColorAtpacman
cmp [pixelcolor],9h
jne endifcalclegal
add [x_coordinate],2
jmp ilegalmove
calcifd:
cmp [chr],'d'
jne cmpifw
add [x_coordinate],2
call ColorAtpacman
cmp [pixelcolor],9h
jne endifcalclegal
sub [x_coordinate],2
jmp ilegalmove
cmpifw:
cmp [chr],'w'
jne cmpss
sub [y_coordinate],2
call ColorAtpacman
cmp [pixelcolor],9h
jne endifcalclegal
add [y_coordinate],2
jmp ilegalmove
cmpss:
cmp [chr],'s'
jne nochrl
add [y_coordinate],2
call ColorAtpacman
cmp [pixelcolor],9h
jne endifcalclegal
sub [y_coordinate],2
jmp ilegalmove
nochrl:
mov al,[chr]
mov [chr2],al
mov al,[lastlegalchr]
mov [chr],al
jmp calculateCord
ilegalmove:
mov al,[chr]
cmp [lastlegalchr],al
jne nochrl
jmp endifcalclegal
endifcalclegal2:
mov al,[chr2]
mov [lastlegalchr],al
mov [chr],al
mov [chr2],0000
jmp endcalculateCord
endifcalclegal:
mov al,[chr]
mov [lastlegalchr],al
endcalculateCord:
popa
ret
endp calculateCords
;עושה דילי
proc delay
pusha
mov cx,01h ;High Word
mov dx,0100h ;Low Word
mov al,0
mov ah,86h ;Wait
int 15h
popa
ret
endp delay
;שומר את המיקומים
proc savexandy
pusha
mov ax,[y_coordinate]
mov [saveycoord],ax
mov cx,[x_coordinate]
mov [savexcoord],cx
popa
ret
endp savexandy
;מחזיר את המיקומים
proc popxandy
pusha
mov ax,[saveycoord]
mov [y_coordinate],ax
mov cx,[savexcoord]
mov [x_coordinate],cx
popa
ret
endp popxandy
;color at the y and x cord 
proc ColorAtpacman
pusha
call savexandy
mov [ColorAtp1],4
startcolorAt:
xor ax,ax
mov [pixelcolor],0
mov ah,0Dh
mov cx,[x_coordinate]
mov dx,[y_coordinate]
int 10h
mov [pixelcolor],al
cmp [pixelcolor],9h
je endcolor
dec [ColorAtp1]
cmp [ColorAtp1],3
jne atbleft
add [x_coordinate],7
jmp startcolorAt
atbleft:
cmp [ColorAtp1],2
jne atbr
add [y_coordinate],7
jmp startcolorAt
atbr:
cmp [ColorAtp1],1
jne endcolor
sub [x_coordinate],7
jmp startcolorAt
endcolor:
call popxandy
popa
ret
endp ColorAtpacman
;מחשב את המיקום של הפלת בטבלעה לפי המיקום
proc pltsc
pusha
mov bx,[x_coordinate]
mov dx,[y_coordinate]
cmp [chr],'w'
jne d
add bx,3
jmp pixelcolorp
d:
cmp [chr],'d'
jne s
add dx,2
add bx,7
jmp pixelcolorp
s:
cmp [chr],'s'
jne a
add dx,7
add  bx,3 
jmp pixelcolorp
a:
add dx,2
pixelcolorp:
mov ah,0Dh
mov cx,bx
int 10h
cmp al,65
je plt
cmp al,15
je ggg
jmp endpltsc
plt:
mov ax,bx
mov bl,8
div bl
xor si,si
mov ah,00
mov si,ax
mov ax,dx
mov dl,8
div dl
mov ah,00
mov bx,40
mul bx
add si,ax
cmp [mappl+si],1
jne countpdont
mov [mappl+si],0
inc [countpoints]
jmp endpltsc
ggg:
mov ax,bx
mov bl,8
div bl
xor si,si
mov ah,00
mov si,ax
mov ax,dx
mov dl,8
div dl
mov ah,00
mov bx,40
mul bx
add si,ax
cmp [mappl+si],2
jne countpdont
mov [mappl+si],0
mov [mode],2
mov [modecount],0
inc [countpoints]
mov dx,[x_coordinate]
mov cx,[y_coordinate]
mov ax,[g5x]
mov bx,[g5y]
mov [x_coordinate],ax
mov [y_coordinate],bx
mov [color],0
call draw_rect
mov [g5x],80
mov [g5y],56
mov [x_coordinate],dx
mov [y_coordinate],cx
jmp endpltsc
countpdont:
endpltsc:
cmp [countpoints],0c3h
je End_game
popa
ret
endp pltsc
;צבעים בקצוות של פק מן
proc ColorAtg
pusha
call savexandy
startcolorAtg:
xor ax,ax
mov [pixelcolor],0
mov ah,0Dh
mov cx,[x_coordinate]
mov dx,[y_coordinate]
int 10h
mov [pixelcolor],al
cmp [pixelcolor],9h
je endcolorg
cmp [pixelcolor],14
je you_lost
add [x_coordinate],7
xor ax,ax
mov [pixelcolor],0
mov ah,0Dh
mov cx,[x_coordinate]
mov dx,[y_coordinate]
int 10h
mov [pixelcolor],al
cmp [pixelcolor],9h
je endcolorg
cmp [pixelcolor],14
je you_lost
add [y_coordinate],7
xor ax,ax
mov [pixelcolor],0
mov ah,0Dh
mov cx,[x_coordinate]
mov dx,[y_coordinate]
int 10h
mov [pixelcolor],al
cmp [pixelcolor],9h
je endcolorg
cmp [pixelcolor],14
je you_lost
sub [x_coordinate],7
xor ax,ax
mov [pixelcolor],0
mov ah,0Dh
mov cx,[x_coordinate]
mov dx,[y_coordinate]
int 10h
mov [pixelcolor],al
cmp [pixelcolor],9h
je endcolorg
cmp [pixelcolor],14
je you_lost
endcolorg:
call popxandy
popa
ret
endp ColorAtg
;moves pacman
proc movpacman
pusha
mov ax,[px]
mov [x_coordinate],ax
mov dx,[py]
mov [y_coordinate],dx
mov [pclastx],ax
mov [pclasty],dx
mov [color],0
call savexandy
call draw_rect
calca:
call popxandy
call calculateCords
call pltsc
mov [color],14
call draw_rect
xor ax,ax
xor bx,bx
mov ax,[x_coordinate]
mov [px],ax
mov bx,[y_coordinate]
mov [py],bx
jmp endmovpa
endmovpa:
add [y_coordinate],2
add [x_coordinate],2
mov [color],0
call draw_pixelp
add [x_coordinate],3
call draw_pixelp
popa
ret 
endp movpacman
;אלגוריתם
proc gmovmant
pusha
mov [count],00
call savexandy
;up
mov ax,[y_coordinate]
sub ax,2
sub ax,[targety]
mul ax
mov [up],ax
xor ax,ax
mov ax,[x_coordinate]
sub ax,[targetx]
mul ax
add [up],ax
;left
mov ax,[x_coordinate]
sub ax,2
sub ax,[targetx]
mul ax
mov [left],ax
xor ax,ax
mov ax,[y_coordinate]
sub ax,[targety]
mul ax
add [left],ax
;down
xor ax,ax
mov ax,[y_coordinate]
add ax,2
sub ax,[targety]
mul ax
mov [down],ax
xor ax,ax
mov ax,[x_coordinate]
sub ax,[targetx]
mul ax
add [down],ax
;right
mov ax,[x_coordinate]
add ax,2
sub ax,[targetx]
mul ax
mov [right],ax
xor ax,ax
mov ax,[y_coordinate]
sub ax,[targety]
mul ax
add [right],ax
;start cmp 
jmp end100i
movright100:
mov [right],1
sub [right],2
inc [count]
sub [x_coordinate],2
cmp [count],5
je inloop
jmp end100i
movleft100:
mov [left],1
sub [left],2
inc [count]
add [x_coordinate],2
cmp [count],5
je inloop
jmp end100i
movup100:
mov [up],1
sub [up],2
inc [count]
add [y_coordinate],2
cmp [count],5
je inloop
jmp end100i
movdown100:
mov [down],1
sub [down],2
inc [count]
sub [y_coordinate],2
cmp [count],5
je inloop
end100i:
xor ax,ax
mov ax,[left]
cmp [up],ax
ja cmpleft
xor ax,ax
mov ax,[down]
cmp [up],ax
ja cmpdown
xor ax,ax
mov ax,[right]
cmp [up],ax
ja cmpright
sub [y_coordinate],2
call ColorAtg
cmp [pixelcolor],9h
je movup100
mov ax,[y_coordinate]
cmp [lasty],ax
je movup100
jmp endcmprg
cmpleft:
xor ax,ax
mov ax,[down]
cmp [left],ax
ja cmpdown
xor ax,ax
mov ax,[right]
cmp [left],ax
ja cmpright
sub [x_coordinate],2
call ColorAtg
cmp [pixelcolor],9h
je movleft100
mov ax,[x_coordinate]
cmp [lastx],ax
je movleft100
jmp endcmprg
cmpdown:
mov ax,[right]
cmp [down],ax
ja cmpright
add [y_coordinate],2
call ColorAtg
cmp [pixelcolor],9h
je movdown100
mov ax,[y_coordinate]
cmp [lasty],ax
je movdown100
jmp endcmprg
cmpright:
add [x_coordinate],2
call ColorAtg
cmp [pixelcolor],9h
je movright100
mov ax,[x_coordinate]
cmp [lastx],ax
je movright100
jmp endcmprg
inloop:
endcmprg:
popa
ret
endp gmovmant
;
;
;
;
;כל הדברים שהם movg...
;הם בערך אותו דבר
;הם מחשבים את המיקום עליוו הרוח צריכה לעגיע ואז שולחים לאלגוריתם
;ואז מצירים במיקום החדש 
proc movgr
pusha
cmp [mode],0
jne mode1gr
;targetc
mov ax,[px]
mov [targetx],ax
mov ax,[py]
mov [targety],ax
jmp startmovgr
mode1gr:
mov [targetx],290
mov [targety],2
startmovgr:
mov ax,[grlastx]
mov [lastx],ax
mov ax,[grlasty]
mov [lasty],ax
mov ax,[grx]
mov [x_coordinate],ax
mov bx,[gry]
mov [y_coordinate],bx
mov [color],0
call draw_rect
call gmovmant
mov ax,[grx]
mov [grlastx],ax
mov dx,[gry]
mov [grlasty],dx
mov ax,[x_coordinate]
mov [grx],ax
mov bx,[y_coordinate]
mov [gry],bx
mov [color],12
call draw_rect
add [y_coordinate],2
add [x_coordinate],2
mov [color],0
call draw_pixelp
add [x_coordinate],3
call draw_pixelp
popa
ret
endp movgr
proc movgp
pusha
;target
cmp [mode],0
jne mode1gp
mov ax,[px]
mov [targetx],ax
mov ax,[py]
mov [targety],ax
mov ax,[pclastx]
cmp [targetx],ax
je cmpy
ja addx4
sub [targetx],4
jmp endtargetc
addx4:
add [targetx],4
jmp endtargetc
cmpy:
mov ax,[pclasty]
cmp [targety],ax
je endtargetc
ja addy4
sub [targety],4
sub [targetx],4
jmp endtargetc
addy4:
add [targety],4
jmp startmovpr
mode1gp:
mov [targetx],1
mov [targety],1
endtargetc:
startmovpr:
mov ax,[gplastx]
mov [lastx],ax
mov ax,[gplasty]
mov [lasty],ax
mov ax,[gpx]
mov [x_coordinate],ax
mov bx,[gpy]
mov [y_coordinate],bx
mov [color],0
call draw_rect
call gmovmant
mov ax,[gpx]
mov [gplastx],ax
mov dx,[gpy]
mov [gplasty],dx
mov ax,[x_coordinate]
mov [gpx],ax
mov bx,[y_coordinate]
mov [gpy],bx
mov [color],13
call draw_rect
add [y_coordinate],2
add [x_coordinate],2
mov [color],0
call draw_pixelp
add [x_coordinate],3
call draw_pixelp
popa
ret
endp movgp
proc movgbr
pusha
cmp [mode],0
jne mode1gbr

;targetc
mov ax,[px]
mov dx,[py]
mov cx,[gbrx]
mov bx,[gbry]
sub ax,cx
sub dx,bx
add ax,dx
cmp ax,16
jb target1
;target2
mov ax,[px]
mov dx,[py]
mov [targetx],ax
mov [targety],dx
jmp startmovbr
target1:
mov [targety],152
mov [targetx],16
jmp startmovbr
mode1gbr:
mov [targetx],16
mov [targety],152
startmovbr:
mov ax,[gbrlastx]
mov [lastx],ax
mov ax,[gbrlasty]
mov [lasty],ax
mov ax,[gbrx]
mov [x_coordinate],ax
mov bx,[gbry]
mov [y_coordinate],bx
mov [color],0
call draw_rect
call gmovmant
mov ax,[gbrx]
mov [gbrlastx],ax
mov dx,[gbry]
mov [gbrlasty],dx
mov ax,[x_coordinate]
mov [gbrx],ax
mov bx,[y_coordinate]
mov [gbry],bx
mov [color],6
call draw_rect
add [y_coordinate],2
add [x_coordinate],2
mov [color],0
call draw_pixelp
add [x_coordinate],3
call draw_pixelp
popa
ret
endp movgbr
proc movgbl
pusha
cmp [mode],0
jne mode1gb
;targetc
mov ax,[px]
mov [targetx],ax
mov ax,[py]
mov [targety],ax
jmp startmovgb
mode1gb:
mov [targetx],290
mov [targety],152
startmovgb:
mov ax,[gblastx]
mov [lastx],ax
mov ax,[gblasty]
mov [lasty],ax
mov ax,[gbx]
mov [x_coordinate],ax
mov bx,[gby]
mov [y_coordinate],bx
mov [color],0
call draw_rect
call gmovmant
mov ax,[gbx]
mov [gblastx],ax
mov dx,[gby]
mov [gblasty],dx
mov ax,[x_coordinate]
mov [gbx],ax
mov bx,[y_coordinate]
mov [gby],bx
mov [color],11
call draw_rect
add [y_coordinate],2
add [x_coordinate],2
mov [color],0
call draw_pixelp
add [x_coordinate],3
call draw_pixelp
popa
ret
endp movgbl
;מצייר את הניקוד
proc printNumber
pusha
; sets cursor on  the corner
mov dh, 9 ; row
mov dl, 32  ; column
mov bh, 0   ; page number
mov ah, 2
int 10h
mov al, [countpoints]
add al,[pointsv]
mov ah, 0
div  [ten]	
add  ax, '00'
mov dx, ax
mov ah, 2h
int 21h
mov dl, dh
mov ah, 2h
int 21h
popa
ret
endp printNumber
;הצבעה אצל הרוחות במצב שתיים
proc coloratgmode2
pusha
call savexandy
xor ax,ax
mov [pixelcolor],0
mov ah,0Dh
mov cx,[x_coordinate]
mov dx,[y_coordinate]
int 10h
mov [pixelcolor],al
cmp [pixelcolor],9h
je endcolorgmode2
cmp [pixelcolor],14
je endcolorgmode2
add [x_coordinate],7
xor ax,ax
mov [pixelcolor],0
mov ah,0Dh
mov cx,[x_coordinate]
mov dx,[y_coordinate]
int 10h
mov [pixelcolor],al
cmp [pixelcolor],9h
je endcolorgmode2
cmp [pixelcolor],14
je endcolorgmode2
add [y_coordinate],7
xor ax,ax
mov [pixelcolor],0
mov ah,0Dh
mov cx,[x_coordinate]
mov dx,[y_coordinate]
int 10h
mov [pixelcolor],al
cmp [pixelcolor],9h
je endcolorg
cmp [pixelcolor],14
je endcolorgmode2
sub [x_coordinate],7
xor ax,ax
mov [pixelcolor],0
mov ah,0Dh
mov cx,[x_coordinate]
mov dx,[y_coordinate]
int 10h
mov [pixelcolor],al
cmp [pixelcolor],9h
je endcolorgmode2
cmp [pixelcolor],14
je endcolorgmode2
endcolorgmode2:
call popxandy
popa
ret
endp coloratgmode2
;מזיז את  הרוח במצב 2
proc movgmode2
pusha
mov [color],0
call draw_rect
mov ax,[x_coordinate]
mov bx,[y_coordinate]
mov [up],bx
mov [down],ax
call random
cmp [rnd],0
jne cmp1
upmode2:
mov bx,[up]
mov ax,[down]
mov [x_coordinate],ax
mov [y_coordinate],bx
dec [y_coordinate]
mov ax,[y_coordinate]
cmp [lasty],ax
je leftmode2
call coloratgmode2
cmp [pixelcolor],9h
je leftmode2
cmp [pixelcolor],14
je killg
mov [color],1
call draw_rect
jmp endmovgmode2
cmp1:
cmp [rnd],1
jne cmp2
leftmode2:
mov bx,[up]
mov ax,[down]
mov [x_coordinate],ax
mov [y_coordinate],bx
dec [x_coordinate]
mov ax,[x_coordinate]
cmp [lastx],ax
je downmode2
call coloratgmode2
cmp [pixelcolor],9h
je downmode2
cmp [pixelcolor],14
je killg
mov [color],1
call draw_rect
jmp endmovgmode2
cmp2:
cmp [rnd],2
jne cmp3
downmode2:
mov bx,[up]
mov ax,[down]
mov [x_coordinate],ax
mov [y_coordinate],bx
inc [y_coordinate]
mov ax,[y_coordinate]
cmp [lasty],ax
je rightmode2
call coloratgmode2
cmp [pixelcolor],9h
je rightmode2
cmp [pixelcolor],14
je killg
mov [color],1
call draw_rect
jmp endmovgmode2
cmp3:
rightmode2:
mov bx,[up]
mov ax,[down]
mov [x_coordinate],ax
mov [y_coordinate],bx
inc [x_coordinate]
mov ax,[x_coordinate]
cmp ax,[lastx]
je upmode2
call coloratgmode2
cmp [pixelcolor],9h
je upmode2
cmp [pixelcolor],14
je killg
mov [color],1
call draw_rect
jmp endmovgmode2
killg:
mov [y_coordinate],56
mov [x_coordinate],80
mov [color],1
call draw_rect
add [pointsv],10
endmovgmode2:
mov ax,[x_coordinate]
mov bx,[y_coordinate]
mov [lastx],ax
mov [lasty],bx
add [y_coordinate],2
add [x_coordinate],2
mov [color],0
call draw_pixelp
add [x_coordinate],3
call draw_pixelp
mov ax,[lastx]
mov bx,[lasty]
mov [x_coordinate],ax
mov [y_coordinate],bx
popa
ret
endp movgmode2
;מוזיז את הרוחות במצב 2
proc movallcmode2
;gr
pusha
mov ax,[grlasty]
mov bx,[grlastx]
mov [lastx],bx
mov [lasty],ax
mov ax,[gry]
mov bx,[grx]
mov [y_coordinate],ax
mov [x_coordinate],bx
mov [grlastx],bx
mov [grlasty],ax
call movgmode2
mov ax,[y_coordinate]
mov bx,[x_coordinate]
mov [gry],ax
mov [grx],bx
;gp
xor ax,ax
xor bx,bx
mov ax,[gplasty]
mov bx,[gplastx]
mov [lastx],bx
mov [lasty],ax
mov ax,[gpy]
mov bx,[gpx]
mov [y_coordinate],ax
mov [x_coordinate],bx
mov [gplastx],bx
mov [gplasty],ax
call movgmode2
mov bx,[y_coordinate]
mov ax,[x_coordinate]
mov [gpy],bx
mov [gpx],ax
;gbr
xor ax,ax
xor bx,bx
mov ax,[gbrlasty]
mov bx,[gbrlastx]
mov [lastx],bx
mov [lasty],ax
mov ax,[gbry]
mov bx,[gbrx]
mov [y_coordinate],ax
mov [x_coordinate],bx
mov [gbrlastx],bx
mov [gbrlasty],ax
call movgmode2
mov bx,[y_coordinate]
mov ax,[x_coordinate]
mov [gbry],bx
mov [gbrx],ax
;gbl
xor ax,ax
xor bx,bx
mov ax,[gblasty]
mov bx,[gblastx]
mov [lastx],bx
mov [lasty],ax
mov ax,[gby]
mov bx,[gbx]
mov [y_coordinate],ax
mov [x_coordinate],bx
mov [gblastx],bx
mov [gblasty],ax
call movgmode2
mov bx,[y_coordinate]
mov ax,[x_coordinate]
mov [gby],bx
mov [gbx],ax
popa
ret
endp movallcmode2
;מדפיס סתרינג
proc stringscore
pusha
mov [row],9
mov cx,6
mov [column],32
stringscoreloop:
dec [column]
mov si,cx
mov al,[scoresting+si]
mov [tav],al
call darwcharacterandsetc
loop stringscoreloop
popa
ret
endp stringscore
;מדפיס סתרינג
proc darwcharacterandsetc
pusha
; sets cursor on  the corner
mov dh, [row] ; row
mov dl, [column]  ; column
mov bh, 0   ; page number
mov ah, 2
int 10h
mov ah, 9 
mov al,[tav]    ; al = character to display 
mov bx,00Fh     ; bh = Background   bl = Foreground 
mov cx,1        ; cx = number of times to write character 
int 10h
popa
ret 
endp darwcharacterandsetc
;מדפיס סתרינג
proc stringlife
pusha
mov [row],11
mov cx,10
mov [column],34
stringlifeloop:
dec [column]
mov si,cx
mov al,[lifeleft+si]
mov [tav],al
call darwcharacterandsetc
loop stringlifeloop
popa
ret
endp stringlife
;נותן מיספר רנדומלי ואז בןדק שהו קתן מ4 ועם לא מגריל עוד אחד ואז בודק שוה וכן העלה
proc random
;generates a random number and keeps it in rnd
    pusha
    mov bx,[bx_saver]
; put segment number in register es
    mov ax, 40h
    mov es, ax
; move random number to ax
    mov ax, [es:6Ch]
    xor ax, [bx]
    add [bx_saver],ax
    and al,3h   ; check if number is < 15
    mov [rnd], al
    popa    
    ret
endp random
;מעפס מה שצריך כאשר פק מן מת ועוד מצבים
proc t2p
pusha
mov [px],80
mov [py],88
mov [grx],80
mov [gry],56
mov [gbrx],80
mov [gbry],56
mov [gpy],56
mov [gpx],80
mov [gbx],80
mov [gby],56
mov [g5x],80
mov [g5y],56
mov [x_coordinate],0000
mov [y_coordinate],0000
mov [y_temp],0000
mov [x_temp],0000
mov [color],9h
mov [modecount],0
mov [mode],1
mov [chr],00
mov [lastlegalchr],'w'
mov [chr2],0000
popa
ret
endp t2p
;מדפיס מספר הפעמים שנישאר לשחקן למות
proc printlifec
pusha
; sets cursor on  the corner
mov dh, 11 ;row
mov dl,35;column
mov bh, 0   ; page number
mov ah, 2
int 10h
mov al,[life]
mov ah, 0
div  [ten]	
add  ax, '00'
mov dx, ax
mov ah, 2h
int 21h
mov dl, dh
mov ah, 2h
int 21h
popa
ret
endp printlifec
;ניחנס למצב גרפי ומוחק את הלוח
proc clearscreen
pusha
	;clear screen by entering graphic mode 40*25
	mov ax,13h
    int 10h
popa
ret
endp clearscreen
;מעפס את mappl
proc pltsre
pusha
xor ax,ax
xor dx,dx
looppltsre:
mov dl,[mappl2+si]
mov [MAPPl+si],dl
inc ax
mov si,ax
cmp ax,798
jne looppltsre
popa
ret
endp pltsre
;הרוח הלבנה במצב 2
proc movg5mode2
pusha
;targetc
mov ax,[px]
mov [targetx],ax
mov ax,[py]
mov [targety],ax
startmovg5:
mov ax,[g5lastx]
mov [lastx],ax
mov ax,[g5lasty]
mov [lasty],ax
mov ax,[g5x]
mov [x_coordinate],ax
mov bx,[g5y]
mov [y_coordinate],bx
mov [color],0
call draw_rect
call gmovmant
mov ax,[g5x]
mov [g5lastx],ax
mov dx,[g5y]
mov [g5lasty],dx
mov ax,[x_coordinate]
mov [g5x],ax
mov bx,[y_coordinate]
mov [g5y],bx
mov [color],15
call draw_rect
add [y_coordinate],2
add [x_coordinate],2
mov [color],0
call draw_pixelp
add [x_coordinate],3
call draw_pixelp
mov [mode],2
popa
ret
endp movg5mode2
;הרוח הלבנה במצב 1
proc movg5
pusha
;gbr
xor ax,ax
xor bx,bx
mov ax,[g5lasty]
mov bx,[g5lastx]
mov [lastx],bx
mov [lasty],ax
mov ax,[g5y]
mov bx,[g5x]
mov [y_coordinate],ax
mov [x_coordinate],bx
mov [g5lastx],bx
mov [g5lasty],ax
call movgmode2
mov bx,[y_coordinate]
mov ax,[x_coordinate]
mov [g5y],bx
mov [g5x],ax
popa
ret
endp movg5
start:
	mov ax, @data
	mov ds, ax
; --------------------------
; Your code here
; -----; enter graphic mode---------------------

    loopstart:
call pltsre
mov [countpoints],0000
mov [pointsv],00
mov [countp],0000
	call t2p
    ; back to text mode  80*25
	mov ax, 2
		int 10h
	mov dx,offset openscreen
    call printString
	call readChr
	cmp [chr],'q'
	je gameover
	cmp [chr],'s'
	je not2
    cmp [chr],'h'
    jne loopstart
    ; back to text mode  80*25
	mov ax, 2
		int 10h
	mov dx,offset helpscreen
	call printString
	call readChr
	cmp [chr],'q'
	je gameover	
	call clearscreen
	jmp loopstart
	   t2:
	   call t2p
	   not2:
    call clearscreen
    call stringscore
	call mapbuildpanc
	call stringlife
	;הלולאה המרקזית של המשחק
	mainloopgame:
	;מדפיס את הפירות שנימחקו ואת החיים שנותרו
	call printlifec
	call mapp
	;חישוב העם צריך לעביר מצב
cmp [mode],2
je mode2
cmp [modecount],80
jne loopc
cmp [mode],0
je mode0
mov [mode],0
mov [modecount],00
jmp loopc
mode0:
cmp [modecount],160
jne loopc
mov [mode],1
mov [modecount],00
loopc:
;הוזזה של פק מן
call movpacman
call printNumber
cmp [mode],2
jne mode0or1c
mov [modecount],0
jmp mode2
mode0or1c:
;הוזזה של הרוחות במצב 1/0
call movgr
call movgp
call movgbr
call movgbl
call movg5
inc [modecount]
jmp readChronloop
mode2:
;כאשר הרוחות בורחות מהשחקן
call movpacman
call printNumber
call movallcmode2
call movg5mode2
inc [modecount]
cmp [modecount],170
jne readChronloop
mov [mode],0
mov [modecount],0
;  check if thre is a charcter to read
readChronloop:
    mov ah,1h
    int 16h
    jz Nokey
    ;waits for character
    call readChr
    ;chek if user asks to quit
    cmp[chr],'q'
    je End_game

    Nokey:
    call delay
	
    jmp mainloopgame
    End_game:
	jmp win 
	;לא באמת
	you_lost:
	dec [life]
	cmp [life],0
	jne t2
		; back to text mode  80*25
	mov ax, 2
		int 10h
	mov dx,offset game_over_you_lose
	call printString
	mov [life],3
call readChr
cmp [chr],'a'
je loopstart
	jmp gameover
  win:
  cmp [countpoints],0c3h
  jne gameover
  	; back to text mode  80*25
	mov ax, 2
		int 10h
		mov dx,offset winscreen
		call printString
		mov [life],3
  call readChr
  cmp [chr],'a'
  je loopstart
	  gameover:
	; back to text mode  80*25
	mov ax, 2
		int 10h
exit:
	mov ax, 4c00h
	int 21h
END start


