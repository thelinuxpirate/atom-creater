import strutils
import minigame

when isMainModule:
  echo("Welcome to Atom-Creator where you can create your very own bonds & atoms!")
  echo("Then we will match your created Atom to an element from the periodic table!\n")

#[ Variable Explanation:
p = protons; n = neutrons; e = electrons,
el = element; typeOfBond = self-explanatory ]#
type
  Atom* = object
    p*, n*, e*: int
    el*, typeOfBond*: string

proc createUsrAtom(usrAtom: var Atom) =
  while true:
    echo("Please enter the number of protons for your atom (an integer under 119):")
    let userInput: string = readLine(stdin)
    let protons: int = parseInt(userInput)

    if protons <= 118:
      usrAtom.p = protons 
      break
    elif protons > 118:
      echo("Your Atom cannot surpass 118 protons! Please enter a valid integer under 119.")
    else:
      echo("Invalid input. Please enter a valid integer without a decimal.")

proc myAtomsElement(): string =
  var periodicTable: array[118, string] = [
    "Hydrogen", "Helium", "Lithium", "Beryllium", "Boron",
    "Carbon", "Nitrogen", "Oxygen", "Fluorine", "Neon",
    "Sodium", "Magnesium", "Aluminum", "Silicon", "Phosphorus",
    "Sulfur", "Chlorine", "Argon", "Potassium", "Calcium",
    "Scandium", "Titanium", "Vanadium", "Chromium", "Manganese",
    "Iron", "Nickel", "Cobalt", "Copper", "Zinc",
    "Gallium", "Germanium", "Arsenic", "Selenium", "Bromine",
    "Krypton", "Rubidium", "Strontium", "Yttrium", "Zirconium",
    "Niobium", "Molybdenum", "Technetium", "Ruthenium", "Rhodium",
    "Palladium", "Silver", "Cadmium", "Indium", "Tin",
    "Antimony", "Tellurium", "Iodine", "Xenon", "Cesium",
    "Barium", "Lanthanum", "Cerium", "Praseodymium", "Neodymium",
    "Promethium", "Samarium", "Europium", "Gadolinium", "Terbium",
    "Dysprosium", "Holmium", "Erbium", "Thulium", "Ytterbium",
    "Lutetium", "Hafnium", "Tantalum", "Tungsten", "Rhenium",
    "Osmium", "Iridium", "Platinum", "Gold", "Mercury",
    "Thallium", "Lead", "Bismuth", "Polonium", "Astatine",
    "Radon", "Francium", "Radium", "Actinium", "Thorium",
    "Protactinium", "Uranium", "Neptunium", "Plutonium", "Americium",
    "Curium", "Berkelium", "Californium", "Einsteinium", "Fermium",
    "Mendelevium", "Nobelium", "Lawrencium", "Rutherfordium", "Dubnium",
    "Seaborgium", "Bohrium", "Hassium", "Meitnerium", "Darmstadtium",
    "Roentgenium", "Copernicium", "Nihonium", "Flerovium", "Moscovium",
    "Livermorium", "Tennessine", "Oganesson"
  ]
  echo("This is my Atom's Element!")
  return periodicTable[40]
  
proc findTypeOfBond(usrAtom: Atom): string =
  let bondType: array[4, string] = [
    "Ionic Bond",
    "Covalent Bond",
    "Polar Covalent Bond",
    "Metalic Bond"
  ]
  return bondType[0]

proc toggleMiniGame(): bool =
  while true:
    echo("Would you like to play Atom Creator's minigame? [Y/n]")
    let status: string = readLine(stdin)
    if status.len == 0 or status == "y":
      return true
      break
    elif status == "n":
      return false
      break
    else:
      echo("Invalid character please input either \'y\' or \'n\'")
      break

proc returnAtomData(usrAtom: Atom) =
  echo("Here is the final result of your Atom's data!")
    
# Program's main source starts here
echo("Starting to create your Atom...")
var usrAtom: Atom
createUsrAtom(usrAtom)
echo("Your atom now has " & $usrAtom.p & " protons.")
let val: bool = toggleMiniGame()
if val == true:
  minigame.runMain()
else:
 echo("Ok") 
