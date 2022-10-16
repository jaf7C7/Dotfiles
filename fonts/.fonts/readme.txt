Source: http://genunix.com/termingus/readme.txt
-----------------------------------------------

These few steps will get you the sweet terminus modified for code
work and sanity that we kow and love as termingus. A vastly 
improved looking font for life.

styx$ date -u
Sun 05 Jun 2022 05:14:37 PM UTC

Do this stuff in you home dir on any decent linux.

styx$ cd $HOME
styx$ rm -rf $HOME/.fonts/ $HOME/.cache/fontconfig
styx$ mkdir .fonts
styx$ rm -rf termingus
styx$ git clone git@github.com:neutaaaaan/termingus.git
Cloning into 'termingus'...
remote: Enumerating objects: 222, done.
remote: Counting objects: 100% (222/222), done.
remote: Compressing objects: 100% (148/148), done.
remote: Total 222 (delta 141), reused 155 (delta 74), pack-reused 0
Receiving objects: 100% (222/222), 466.98 KiB | 4.10 MiB/s, done.
Resolving deltas: 100% (141/141), done.

go into that directory 

styx$ cd termingus/


copy all the good stuff into the new  $HOME/.fonts

styx$ cp -p termingus* $HOME/.fonts

Get into that new .fonts dir 

styx$ cd $HOME/.fonts

do this majic and read the manpages some day 

styx$ mkfontscale
styx$ mkfontdir

Ensure the $HOME/.fonts is in your current fontpath

styx$ xset +fp $HOME/.fonts
styx$ 

run this magic : 

styx$ fc-cache -fv 2>&1 | grep `( whoami )`
/home/dclarke/.local/share/fonts: skipping, no such directory
/home/dclarke/.fonts: caching, new cache contents: 12 fonts, 0 dirs
/home/dclarke/.cache/fontconfig: cleaning cache directory
/home/dclarke/.fontconfig: not cleaning non-existent cache directory
styx$ 


However in the above you will see your username ... not mine.

Check the count of availible termingus font sizes etc 

styx$ xlsfonts -l | grep -c 'termingus'
14
styx$ 


Then to test you can fire up an XTerm with pretty colors using
the new font :

/usr/bin/xterm +ai -aw -bc -cu +dc +hold -ie -lc +pob -rw +si -wf \
-bd red -fg rgb:ff/af/00 -bg rgb:00/00/00 \
-fb '-xos4-termingus-bold-r-normal--32-320-72-72-c-160-iso10646-1' \
-fn '-xos4-termingus-medium-r-normal--32-320-72-72-c-160-iso10646-1' \
-geometry 80x24+20+60 &


That will pop up a big amber XTerm with big easy to see font




-------------- also this just in .. the ttf fonts -----------

29 Aug 2022
15:22 <@moshe> blastwave: https://github.com/scuderia666/terminuss slap
the files in ~/.fonts/  run fc-cache -fv  restart firefox, click the
hamburger thing, settings, scroll down a bit, find the font thing, click
advanced, chose terminuss as the default monospace on, it seems to take
the proper pixel sizes instead of pointsizes so until the guy ports my
changes to the 28px version, 24 and 32 are probably the 


see https://github.com/scuderia666/terminuss



