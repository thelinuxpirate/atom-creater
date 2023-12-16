when isMainModule:
  echo("Welcome to Atom-Creator where you can create your very own bonds & atoms!")

type
  Element = object
    atomicNumber: int
    name: string
    symbol: string
    atomicMass: float

type
  Atom = object
    protons: int
    neutrons: int
    electrons: int

    el: string
    typeOfBond: string  

proc initPeriodicTable(): array[118, atom_creator.Element] =
  result = [
    atom_creator.Element(1, "Hydrogen", "H", 1.008),
    atom_creator.Element(2, "Helium", "He", 4.0026),
    atom_creator.Element(3, "Lithium", "Li", 6.94),
    atom_creator.Element(4, "Beryllium", "Be", 9.0122),
    atom_creator.Element(5, "Boron", "B", 10.81),
    atom_creator.Element(6, "Carbon", "C", 12.011),
    atom_creator.Element(7, "Nitrogen", "N", 14.007),
    atom_creator.Element(8, "Oxygen", "O", 15.999),
    atom_creator.Element(9, "Fluorine", "F", 18.998),
    atom_creator.Element(10, "Neon", "Ne", 20.18),
    atom_creator.Element(11, "Sodium", "Na", 22.99),
    atom_creator.Element(12, "Magnesium", "Mg", 24.305),
    atom_creator.Element(13, "Aluminum", "Al", 26.982),
    atom_creator.Element(14, "Silicon", "Si", 28.085),
    atom_creator.Element(15, "Phosphorus", "P", 30.974),
    atom_creator.Element(16, "Sulfur", "S", 32.06),
    atom_creator.Element(17, "Chlorine", "Cl", 35.45),
    atom_creator.Element(18, "Argon", "Ar", 39.948),
    atom_creator.Element(19, "Potassium", "K", 39.098),
    atom_creator.Element(20, "Calcium", "Ca", 40.078),
    atom_creator.Element(21, "Scandium", "Sc", 44.956),
    atom_creator.Element(22, "Titanium", "Ti", 47.867),
    atom_creator.Element(23, "Vanadium", "V", 50.942),
    atom_creator.Element(24, "Chromium", "Cr", 51.996),
    atom_creator.Element(25, "Manganese", "Mn", 54.938),
    atom_creator.Element(26, "Iron", "Fe", 55.845),
    atom_creator.Element(27, "Nickel", "Ni", 58.693),
    atom_creator.Element(28, "Cobalt", "Co", 58.933),
    atom_creator.Element(29, "Copper", "Cu", 63.546),
    atom_creator.Element(30, "Zinc", "Zn", 65.38),
    atom_creator.Element(31, "Gallium", "Ga", 69.723),
    atom_creator.Element(32, "Germanium", "Ge", 72.63),
    atom_creator.Element(33, "Arsenic", "As", 74.922),
    atom_creator.Element(34, "Selenium", "Se", 78.971),
    atom_creator.Element(35, "Bromine", "Br", 79.904),
    atom_creator.Element(36, "Krypton", "Kr", 83.798),
    atom_creator.Element(37, "Rubidium", "Rb", 85.468),
    atom_creator.Element(38, "Strontium", "Sr", 87.62),
    atom_creator.Element(39, "Yttrium", "Y", 88.906),
    atom_creator.Element(40, "Zirconium", "Zr", 91.224),
    atom_creator.Element(41, "Niobium", "Nb", 92.906),
    atom_creator.Element(42, "Molybdenum", "Mo", 95.95),
    atom_creator.Element(43, "Technetium", "Tc", 98),
    atom_creator.Element(44, "Ruthenium", "Ru", 101.07),
    atom_creator.Element(45, "Rhodium", "Rh", 102.91),
    atom_creator.Element(46, "Palladium", "Pd", 106.42),
    atom_creator.Element(47, "Silver", "Ag", 107.87),
    atom_creator.Element(48, "Cadmium", "Cd", 112.41),
    atom_creator.Element(49, "Indium", "In", 114.82),
    atom_creator.Element(50, "Tin", "Sn", 118.71),
    atom_creator.Element(51, "Antimony", "Sb", 121.76),
    atom_creator.Element(52, "Tellurium", "Te", 127.6),
    atom_creator.Element(53, "Iodine", "I", 126.9),
    atom_creator.Element(54, "Xenon", "Xe", 131.29),
    atom_creator.Element(55, "Cesium", "Cs", 132.91),
    atom_creator.Element(56, "Barium", "Ba", 137.33),
    atom_creator.Element(57, "Lanthanum", "La", 138.91),
    atom_creator.Element(58, "Cerium", "Ce", 140.12),
    atom_creator.Element(59, "Praseodymium", "Pr", 140.91),
    atom_creator.Element(60, "Neodymium", "Nd", 144.24),
    atom_creator.Element(61, "Promethium", "Pm", 145),
    atom_creator.Element(62, "Samarium", "Sm", 150.36),
    atom_creator.Element(63, "Europium", "Eu", 151.96),
    atom_creator.Element(64, "Gadolinium", "Gd", 157.25),
    atom_creator.Element(65, "Terbium", "Tb", 158.93),
    atom_creator.Element(66, "Dysprosium", "Dy", 162.5),
    atom_creator.Element(67, "Holmium", "Ho", 164.93),
    atom_creator.Element(68, "Erbium", "Er", 167.26),
    atom_creator.Element(69, "Thulium", "Tm", 168.93),
    atom_creator.Element(70, "Ytterbium", "Yb", 173.04),
    atom_creator.Element(71, "Lutetium", "Lu", 174.97),
    atom_creator.Element(72, "Hafnium", "Hf", 178.49),
    atom_creator.Element(73, "Tantalum", "Ta", 180.95),
    atom_creator.Element(74, "Tungsten", "W", 183.84),
    atom_creator.Element(75, "Rhenium", "Re", 186.21),
    atom_creator.Element(76, "Osmium", "Os", 190.23),
    atom_creator.Element(77, "Iridium", "Ir", 192.22),
    atom_creator.Element(78, "Platinum", "Pt", 195.08),
    atom_creator.Element(79, "Gold", "Au", 196.97),
    atom_creator.Element(80, "Mercury", "Hg", 200.59),
    atom_creator.Element(81, "Thallium", "Tl", 204.38),
    atom_creator.Element(82, "Lead", "Pb", 207.2),
    atom_creator.Element(83, "Bismuth", "Bi", 208.98),
    atom_creator.Element(84, "Polonium", "Po", 209),
    atom_creator.Element(85, "Astatine", "At", 210),
    atom_creator.Element(86, "Radon", "Rn", 222),
    atom_creator.Element(87, "Francium", "Fr", 223),
    atom_creator.Element(88, "Radium", "Ra", 226),
    atom_creator.Element(89, "Actinium", "Ac", 227),
    atom_creator.Element(90, "Thorium", "Th", 232.04),
    atom_creator.Element(91, "Protactinium", "Pa", 231.04),
    atom_creator.Element(92, "Uranium", "U", 238.03),
    atom_creator.Element(93, "Neptunium", "Np", 237),
    atom_creator.Element(94, "Plutonium", "Pu", 244),
    atom_creator.Element(95, "Americium", "Am", 243),
    atom_creator.Element(96, "Curium", "Cm", 247),
    atom_creator.Element(97, "Berkelium", "Bk", 247),
    atom_creator.Element(98, "Californium", "Cf", 251),
    atom_creator.Element(99, "Einsteinium", "Es", 252),
    atom_creator.Element(100, "Fermium", "Fm", 257),
    atom_creator.Element(101, "Mendelevium", "Md", 258),
    atom_creator.Element(102, "Nobelium", "No", 259),
    atom_creator.Element(103, "Lawrencium", "Lr", 262),
    atom_creator.Element(104, "Rutherfordium", "Rf", 267),
    atom_creator.Element(105, "Dubnium", "Db", 270),
    atom_creator.Element(106, "Seaborgium", "Sg", 271),
    atom_creator.Element(107, "Bohrium", "Bh", 270),
    atom_creator.Element(108, "Hassium", "Hs", 277),
    atom_creator.Element(109, "Meitnerium", "Mt", 276),
    atom_creator.Element(110, "Darmstadtium", "Ds", 281),
    atom_creator.Element(111, "Roentgenium", "Rg", 280),
    atom_creator.Element(112, "Copernicium", "Cn", 285),
    atom_creator.Element(113, "Nihonium", "Nh", 284),
    atom_creator.Element(114, "Flerovium", "Fl", 289),
    atom_creator.Element(115, "Moscovium", "Mc", 288),
    atom_creator.Element(116, "Livermorium", "Lv", 293),
    atom_creator.Element(117, "Tennessine", "Ts", 294),
    atom_creator.Element(118, "Oganesson", "Og", 294)
  ]
  
proc myAtomsElement(): string =
  let x = "hi"
  echo("This is my Atom's Element!")
  return x
  
proc findTypeOfBond(): string =
  let bondType: array[4, string] = [
    "Ionic Bond",
    "Covalent Bond",
    "Polar Covalent Bond",
    "Metalic Bond"
  ]
  return bondType[0]


var periodicTable = initPeriodicTable()
var elementList: seq[string] = periodicTable.map(it.name)
echo("Creating your Atom...")
