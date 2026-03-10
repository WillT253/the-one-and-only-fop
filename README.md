# the-one-and-only-fop
This is a silly command I made whose sole purpose is to print an image of a fox in the terminal. 

Seriously, that's it. Enjoy.

   \- Will

## Installation
There are two ways to install the script. The first, and easiest, is to use the provided install script:

    curl github.com/WillT253/the-one-and-only-fop/install.sh | bash

Please read the install script file before running this command to ensure you're happy with what it will do.

The other way is to run `git clone` manually if you aren't comfortable with running random commands without knowing what they do. This produces the same result (hopefully) but the install script has some surrounding logic to ensure you don't clone twice or install to the wrong directories, etc. 

## Updating

This project is very unlikely to be updated on a friendly schedule but I do plan to add more features when I get the time (shocking, I know!), so it may be wise to check in every once in a while to see if anything has improved. 

The project can be updated in the standard way using `git pull`, but the install script also doubles as a way to update it. For this reason, it is recommended to keep all the files in the cloned directory rather than moving them to a location in the scope of your `$PATH`. This is so that the scripts can be properly updated on a `git pull` invocation.
