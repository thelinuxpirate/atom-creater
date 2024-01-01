#[ Atom Creator Mini-Game:
This application provides a togglable minigame where you can create your atom \
then try to match it to an existing element from the periodic table.
]#

import atom_creator

proc runGame(x: bool) =
  if x == true:
    echo("In this minigame you will provide us the name of what\nelement you believe your Atom is. You get 3 tries...\n\nGOOD LUCK!\n")
  else:
    echo("MiniGame!")

  echo(atom_creator.Atom.p) # doesnt fucking work for some reason...
    
proc runMain*() =
  while true:
    echo("\nYou have chosen to run the minigame!\nWould you like to read the instructions? [Y/n]")
    let status: string = readLine(stdin)
    if status.len == 0 or status == "y":
      runGame(true)
      break
    elif status == "n":
      runGame(false)
      break
    else:
      echo("Invalid character please input either \'y\' or \'n\'")
      break
