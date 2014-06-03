learn-yesod
===========

Project for learning yesod and Haskell[See Yesold tutorial][]

[See Yesold tutorial]: http://yannesposito.com/Scratch/en/blog/Yesod-tutorial-for-newbies/


Speed Start
=================

Run the following command on Linux:


    cabal update
	cabal install yesod yesod-bin cabal-dev
	

Take a long american-coffe because this command will compile a lot of stuff taking some time to complete.
Ensure to include

    /home/jj/.cabal/bin/

in your PATH.


Not working stuff
===================

# cd DaitanSkell && cabal sandbox init && cabal install --enable-tests . yesod-platform yesod-bin --max-backjumps=-1 --reorder-goals && yesod devel
