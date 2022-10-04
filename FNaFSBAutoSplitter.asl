//Five Nights at Freddy's: Security Breach | v1.0.0
//Autosplitter created by Daltone#2617 and NintenDude#0447

//Roxy P&S elevator warp
//xr = -759.5329559
//yr = 52935.373045
//zt = 2654.88693
//x2 = 2(xr) - x1
//y2 = 2(yr) - y1
//z2 = zt + z1

//~225u present collection range (300 just to be safe)
//200u as generator range

//To Do List:
//fix pq starting
//MORE POSITIONAL SPLITS?
//AOB SCANNING?
//UPDATE VERSION DETECTION?

state("fnaf9-Win64-Shipping", "v1.04"){
	//Keeps track of Freddy's power
	int freddyPower: 0x0441B738, 0x8, 0x10, 0x38, 0xB8;

	//Counter pointers
	int FBFlags: 0x03FF7308, 0x230, 0x8, 0x2C8, 0x3A0, 0x28, 0x30, 0x290;
	int DGens: 0x0441C5C8, 0x50, 0x98, 0x40, 0x128, 0xA8, 0x50, 0x53C;
	int MGBucket: 0x0441FCB0, 0x98, 0x70, 0x128, 0x98, 0x490, 0x228, 0x158;

	//Player information
	float posX: 0x0441C570, 0x10, 0x120, 0x128, 0x318, 0x138, 0x1D0;
	float posY: 0x0441C570, 0x10, 0x120, 0x128, 0x318, 0x138, 0x1D4;
	float posZ: 0x0441C570, 0x10, 0x120, 0x128, 0x318, 0x138, 0x1D8;

	//Keeps track of when the game has ended (end = 1)
	int end: 0x0441C5C8, 0xC0, 0x40, 0x8, 0x18, 0x2D0;

	//Afton's health (starts at 750, -100 per button)
	float aftonHealth: 0x042DCC78, 0xF50, 0x0, 0xAD0, 0xA0, 0xE8, 0x258, 0x800;

	//PQ Player Positions
	float pq1X: 0x0441C570, 0x8, 0x8, 0x200, 0x70, 0x260, 0x138, 0x1D4;
	float pq1Y: 0x0441C570, 0x8, 0x8, 0x200, 0x70, 0x260, 0x138, 0x1D0;
	float pq2X: 0x0441C570, 0x8, 0x8, 0x200, 0x70, 0xE60, 0x138, 0x1D4;
	float pq2Y: 0x0441C570, 0x8, 0x8, 0x200, 0x70, 0xE60, 0x138, 0x1D0;
	float pq3X: 0x0441C570, 0x8, 0x8, 0x200, 0x200, 0x38, 0x138, 0x1D4;
	float pq3Y: 0x0441C570, 0x8, 0x8, 0x200, 0x200, 0x38, 0x138, 0x1D0;
	int pq3Attack: 0x0441C570, 0x8, 0x8, 0x200, 0x200, 0x38, 0x120, 0x3F9;

	//Keeps track of items (splashSreen = 4)
	int splashScreen: 0x04002230, 0x420, 0xA8, 0x128, 0x328, 0x3DC;
	int securityBadgeCount: 0x0441B738, 0x8, 0x10, 0x38, 0xC0;
	int itemCount: 0x0441B738, 0x8, 0x10, 0x38, 0x138;
	int hippoMagnetUsed: 0x0441FCB0, 0xB8, 0x128, 0xA8, 0xA0, 0x338;

	//Keeps count of the time
	int hourTimer: 0x04409AF0, 0x30, 0x670, 0x230, 0x258;
	int minuteTimer: 0x04409AF0, 0x30, 0x670, 0x230, 0x25C;

	//Used to pause the timer (pause = 3, menu = 0)
 	int pause: 0x0441C584;
	int menu: 0x0441EB78, 0xB4;

	//Elevator pointers (elevator in motion = 1)
	int kitElev: 0x0441FCB0, 0x98, 0x7D0, 0x128, 0xA8, 0xB8, 0x2E8;
	int monGElev: 0x0441FCB0, 0x98, 0x808, 0x128, 0xA8, 0x68, 0x2D8, 0x4;
	int foy2Elev: 0x0441FCB0, 0x98, 0x818, 0x128, 0xA8, 0x60, 0x2D8, 0x4;
	int foy1Elev: 0x0441FCB0, 0x98, 0x818, 0x128, 0xA8, 0xB8, 0x2D8, 0x4;
	int bonBElev: 0x0441FCB0, 0x98, 0x828, 0x128, 0xA8, 0x58, 0x2D8, 0x4;
	int fazerElev: 0x0441FCB0, 0x98, 0x830, 0x128, 0xA8, 0x50, 0x2E8;
	int WAElev: 0x0441FCB0, 0x98, 0x838, 0x128, 0xA8, 0xB0, 0x2D8, 0x4;
	int roxyElev: 0x0441FCB0, 0x98, 0x848, 0x128, 0xA8, 0x288, 0x2E8;
	int aftonElev: 0x0441FCB0, 0x98, 0x890, 0x128, 0xA8, 0xB8, 0x2D8, 0x4;
}

startup {
	settings.CurrentDefaultParent = null;
	settings.Add("Split Settings", false);
	settings.Add("Timer Settings", true);

	settings.CurrentDefaultParent = "Split Settings";
	settings.Add("Counting Splits", false);
	settings.Add("Deload Splits", false);
	settings.Add("Ending Splits", false);
	settings.Add("Item Splits", false);
	settings.Add("Positional Splits", false);
	settings.Add("Time Splits", false);

	settings.CurrentDefaultParent = "Counting Splits";
	settings.Add("Daycare Generators", false);
	settings.Add("Fazerblast Flags", false);
	settings.Add("Monty Bucket Count", false);
	settings.Add("Sewer Generators", false);

	settings.CurrentDefaultParent = "Daycare Generators";
	settings.Add("D_Generator 1", false, "Generator 1");
	settings.Add("D_Generator 2", false, "Generator 2");
	settings.Add("D_Generator 3", false, "Generator 3");
	settings.Add("D_Generator 4", false, "Generator 4");
	settings.Add("D_Generator 5", false, "Generator 5");

	settings.CurrentDefaultParent = "Fazerblast Flags";
	settings.Add("Flag 1", false);
	settings.Add("Flag 2", false);
	settings.Add("Flag 3", false);

	settings.CurrentDefaultParent = "Monty Bucket Count";
	settings.Add("10 Balls", false);
	settings.Add("20 Balls", false);
	settings.Add("25 Balls", false);

	settings.CurrentDefaultParent = "Sewer Generators";
	settings.Add("S_Generator 1", false, "Generator 1");
	settings.Add("S_Generator 2", false, "Generator 2");
	settings.Add("S_Generator 3", false, "Generator 3");

	settings.CurrentDefaultParent = "Deload Splits";
	settings.Add("Balloon Deload", false);
	settings.Add("Curtain Deload", false);
	settings.Add("Daycare Arcade Deload", false);
	settings.Add("Daycare Theatre Deload", false);
	settings.Add("Roxy Salon Deload", false);
	settings.Add("Roxy's Eye Deload", false);

	settings.CurrentDefaultParent = "Ending Splits";
	settings.Add("Afton Ending", false);
	settings.Add("Car Battery Ending", false);
	settings.Add("Escape Ending", false);
	settings.Add("Fire Escape Ending", false);
	settings.Add("Princess Quest Ending", false);
	settings.Add("Vanny Ending", false);

	settings.CurrentDefaultParent = "Afton Ending";
	settings.Add("Button 1", false);
	settings.Add("Button 2", false);
	settings.Add("Button 3", false);
	settings.Add("Button 4", false);
	settings.Add("Button 5", false);
	settings.Add("Button 6", false);
	settings.Add("Button 7", false);
	settings.Add("Button 8 / End", false);

	settings.CurrentDefaultParent = "Princess Quest Ending";
	settings.Add("Princess Quest 1", false);
	settings.Add("Princess Quest 2", false);
	settings.Add("Princess Quest 3", false);

	settings.CurrentDefaultParent = "Princess Quest 1";
	settings.Add("pq1_start", false, "Start Arcade");
	settings.Add("pq1_1", false, "Exit Starting Room");
	settings.Add("pq1_2", false, "2nd Room");
	settings.Add("pq1_3", false, "3rd Room");
	settings.Add("pq1_4", false, "Key Door");
	settings.Add("pq1_5", false, "Crossroads");
	settings.Add("pq1_6", false, "Right Door");
	settings.Add("pq1_7", false, "Enter Graveyard");
	settings.Add("pq1_8", false, "Staircase");
	settings.Add("pq1_9", false, "Final Room");
	settings.Add("pq1_end", false, "Finish Arcade");
	
	settings.CurrentDefaultParent = "Princess Quest 2";
	settings.Add("pq2_start", false, "Start Arcade");
	settings.Add("pq2_1", false, "Exit Starting Room");
	settings.Add("pq2_2", false, "2nd Room");
	settings.Add("pq2_3", false, "Balls Room");
	settings.Add("pq2_4", false, "4th Room");
	settings.Add("pq2_5", false, "Split Puzzle Room");
	settings.Add("pq2_6", false, "Big Torch Room");
	settings.Add("pq2_7", false, "Hallway");
	settings.Add("pq2_8", false, "Big Split Puzzle Room");
	settings.Add("pq2_9", false, "Bedroom");
	settings.Add("pq2_10", false, "Enter Final Room");
	settings.Add("pq2_end", false, "Finish Arcade");

	settings.CurrentDefaultParent = "Princess Quest 3";
	settings.Add("pq3_start", false, "Start Arcade");
	settings.Add("pq3_1", false, "Hallway");
	settings.Add("pq3_2", false, "Hub Room");
	settings.Add("pq3_3", false, "Conveyor Room");
	settings.Add("pq3_4", false, "Split Puzzle Room (Glitchtrap Plush)");
	settings.Add("pq3_5", false, "Flamin' Hot Foxy");
	settings.Add("pq3_6", false, "Prize Counter");
	settings.Add("pq3_7", false, "Enter Final Area");
	settings.Add("pq3_end", false, "Princess Quest Use Key");
	settings.Add("pq3_endCutscene", false, "Princess Quest End Cutscene");

	settings.CurrentDefaultParent = "Item Splits";
	settings.Add("Item List", false);
	settings.Add("Security Badges", false);
	
	settings.CurrentDefaultParent = "Item List";
	settings.Add("Collectables", false);
	settings.Add("Equipment", false);
	settings.Add("Retro CDs", false);

	settings.CurrentDefaultParent = "Collectables";
	settings.Add("C_Backstage", false, "Backstage");
	settings.Add("C_Basement Kitchen", false, "Basement Kitchen");
	settings.Add("C_Bonnie Bowl", false, "Bonnie Bowl");
	settings.Add("C_Chica's Bakery", false, "Chica's Bakery");
	settings.Add("C_Daycare", false, "Daycare");
	settings.Add("C_El Chips", false, "El Chips");
	settings.Add("C_Fazerblast", false, "Fazerblast");
	settings.Add("C_Fazerblast Sublobby", false, "Fazerblast Sublobby");
	settings.Add("C_Kids Cove Sublobby", false, "Kids Cove Sublobby");
	settings.Add("C_Laundry", false, "Laundry");
	settings.Add("C_Lobby", false, "Lobby");
	settings.Add("C_Main Atrium", false, "Main Atrium");
	settings.Add("C_Monty Golf", false, "Monty Golf");
	settings.Add("C_Monty Golf Sublobby", false, "Monty Golf Sublobby");
	settings.Add("C_Parts & Service", false, "Parts & Service");
	settings.Add("C_Prize Counter", false, "Prize Counter");
	settings.Add("C_Rockstar Row", false, "Rockstar Row");
	settings.Add("C_Roxy Raceway", false, "Roxy Raceway");
	settings.Add("C_Roxy Raceway Sublobby", false, "Roxy Raceway Sublobby");
	settings.Add("C_Roxy Salon", false, "Roxy Salon");
	settings.Add("C_Salads & Sides", false, "Salads & Sides");
	settings.Add("C_Sewers", false, "Sewers");
	settings.Add("C_Utility Tunnels", false, "Utility Tunnels");
	settings.Add("C_Warehouse", false, "Warehouse");
	settings.Add("C_West Arcade", false, "West Arcade");

	settings.CurrentDefaultParent = "C_Backstage";
	settings.Add("El Chip Piñata", false);
	settings.Add("Freddy Icon Shirt", false);
	settings.Add("Glam Chica Figure", false);

	settings.CurrentDefaultParent = "C_Basement Kitchen";
	settings.Add("Freddy Magnet", false);
	settings.Add("Golden Chica", false);

	settings.CurrentDefaultParent = "C_Bonnie Bowl";
	settings.Add("Bonnie Plush", false);
	settings.Add("Golden Monty", false);

	settings.CurrentDefaultParent = "C_Chica's Bakery";
	settings.Add("CB_Chica Magnet", false, "Chica Magnet");
	settings.Add("Monty Magnet", false);

	settings.CurrentDefaultParent = "C_Daycare";
	settings.Add("Freddy Mask", false);
	settings.Add("Frozen Chica Treat", false);
	settings.Add("Glam Freddy Figure", false);
	settings.Add("Golden Moon", false);
	settings.Add("D_Old Poster", false, "Old Poster");
	settings.Add("Plush Baby", false);

	settings.CurrentDefaultParent = "C_El Chips";
	settings.Add("Chica Balloon", false);

	settings.CurrentDefaultParent = "C_Fazerblast";
	settings.Add("Freddy Balloon", false);
	settings.Add("F_Old Poster", false, "Old Poster");
	settings.Add("Space Chica Keychain", false);
	settings.Add("Space Roxy Keychain", false);

	settings.CurrentDefaultParent = "C_Fazerblast Sublobby";
	settings.Add("Freddy Piñata", false);
	settings.Add("Space Freddy Keychain", false);

	settings.CurrentDefaultParent = "C_Kids Cove Sublobby";
	settings.Add("Golden Sun", false);
	settings.Add("Moon Plush", false);

	settings.CurrentDefaultParent = "C_Laundry";
	settings.Add("Glam Roxy Plush", false);
	settings.Add("K_Old Poster", false, "Old Poster");
	settings.Add("Star Shirt", false);

	settings.CurrentDefaultParent = "C_Lobby";
	settings.Add("Chica Name Shirt", false);
	settings.Add("Cupcake Piñata", false);
	settings.Add("Freddy Name Shirt", false);
	settings.Add("Glam Chica Plush", false);
	settings.Add("Sun Plush", false);

	settings.CurrentDefaultParent = "C_Main Atrium";
	settings.Add("Monty Piñata", false);
	settings.Add("Roxy Name Shirt", false);

	settings.CurrentDefaultParent = "C_Monty Golf";
	settings.Add("Go Kart", false);
	settings.Add("Tragedy Mask", false);

	settings.CurrentDefaultParent = "C_Monty Golf Sublobby";
	settings.Add("Frozen Monty Treat", false);
	settings.Add("Glam Monty Figure", false);

	settings.CurrentDefaultParent = "C_Parts & Service";
	settings.Add("Glam Roxy Figure", false);

	settings.CurrentDefaultParent = "C_Prize Counter";
	settings.Add("Frozen Freddy Treat", false);
	settings.Add("Monty Mask", false);

	settings.CurrentDefaultParent = "C_Rockstar Row";
	settings.Add("Chica Mask", false);
	settings.Add("Four Block Shirt", false);
	settings.Add("Golden Freddy", false);
	settings.Add("Monty Name Shirt", false);
	settings.Add("Pizzaplex Logo Shirt", false);

	settings.CurrentDefaultParent = "C_Roxy Raceway";
	settings.Add("Monty Balloon", false);
	settings.Add("Space Monty Keychain", false);

	settings.CurrentDefaultParent = "C_Roxy Raceway Sublobby";
	settings.Add("Frozen Roxy Treat", false);
	settings.Add("Roxy Balloon", false);
	settings.Add("Roxy Mask", false);

	settings.CurrentDefaultParent = "C_Roxy Salon";
	settings.Add("Roxy Magnet", false);
	settings.Add("Roxy Piñata", false);

	settings.CurrentDefaultParent = "C_Salads & Sides";
	settings.Add("Freddy Face Shirt", false);
	settings.Add("Piñata", false);

	settings.CurrentDefaultParent = "C_Sewers";
	settings.Add("S_Old Poster", false, "Old Poster");

	settings.CurrentDefaultParent = "C_Utility Tunnels";
	settings.Add("Chica Piñata", false);
	settings.Add("Comedy Mask", false);
	settings.Add("Foxy Plush", false);
	settings.Add("Glam Freddy Plush", false);
	settings.Add("Golden Roxy", false);
	settings.Add("Moon Figure", false);
	settings.Add("Sun Figure", false);

	settings.CurrentDefaultParent = "C_Warehouse";
	settings.Add("Nightmare Plush", false);

	settings.CurrentDefaultParent = "C_West Arcade";
	settings.Add("WA_Chica Magnet", false, "Chica Magnet");
	settings.Add("Glam Monty Plush", false);

	settings.CurrentDefaultParent = "Equipment";
	settings.Add("E_Backstage", false, "Backstage");
	settings.Add("E_Basement Kitchen", false, "Basement Kitchen");
	settings.Add("E_Bonnie Bowl", false, "Bonnie Bowl");
	settings.Add("E_Chica's Bakery", false, "Chica's Bakery");
	settings.Add("E_Daycare", false, "Daycare");
	settings.Add("E_El Chips", false, "El Chips");
	settings.Add("E_Fazerblast", false, "Fazerblast");
	settings.Add("E_Lobby", false, "Lobby");
	settings.Add("E_Main Atrium", false, "Main Atrium");
	settings.Add("E_Monty Golf", false, "Monty Golf");
	settings.Add("E_Rockstar Row", false, "Rockstar Row");
	settings.Add("E_Roxy Raceway", false, "Roxy Raceway");
	settings.Add("E_Roxy Salon", false, "Roxy Salon");
	settings.Add("E_Sewers", false, "Sewers");
	settings.Add("E_Utility Tunnels", false, "Utility Tunnels");
	settings.Add("E_West Arcade", false, "West Arcade");
	settings.Add("E_Other", false, "Other");

	settings.CurrentDefaultParent = "E_Backstage";
	settings.Add("Backstage Pass", false);
	settings.Add("B_Flashlight Upgrade", false, "Flashlight Upgrade");

	settings.CurrentDefaultParent = "E_Basement Kitchen";
	settings.Add("Freddy Fizzy Faz", false);

	settings.CurrentDefaultParent = "E_Bonnie Bowl";
	settings.Add("Monty Mystery Mix", false);

	settings.CurrentDefaultParent = "E_Chica's Bakery";
	settings.Add("Hoodie", false);

	settings.CurrentDefaultParent = "E_Daycare";
	settings.Add("Flashlight", false);
	settings.Add("D_Flashlight Upgrade", false, "Flashlight Ugrade");
	settings.Add("Mazercise Control Key", false);

	settings.CurrentDefaultParent = "E_El Chips";
	settings.Add("Monty Fizzy Faz", false);

	settings.CurrentDefaultParent = "E_Fazerblast";
	settings.Add("Bowling Pass", false);
	settings.Add("Golden Fazerblaster", false);
	settings.Add("Grey Fazerblaster", false);

	settings.CurrentDefaultParent = "E_Lobby";
	settings.Add("Chica Fizzy Faz", false);
	settings.Add("Daycare Pass", false);
	settings.Add("Entrance Pass", false);
	settings.Add("Mr. Hippo Magnet", false);
	settings.Add("Screwdriver", false);

	settings.CurrentDefaultParent = "E_Main Atrium";
	settings.Add("MA_Freddy Upgrade", false, "Freddy Upgrade");

	settings.CurrentDefaultParent = "E_Monty Golf";
	settings.Add("Fazcam", false);
	settings.Add("MG_Flashlight Upgrade", false, "Flashlight Upgrade");
	settings.Add("Mazercise Pass", false);
	settings.Add("Monty's Claws", false);

	settings.CurrentDefaultParent = "E_Rockstar Row";
	settings.Add("Fazwatch", false);
	settings.Add("Party Pass", false);
	settings.Add("Photo Pass", false);

	settings.CurrentDefaultParent = "E_Roxy Raceway";
	settings.Add("Damaged Head", false);
	settings.Add("Dance Pass", false);
	settings.Add("RR_Freddy Upgrade", false, "Freddy Upgrade");
	settings.Add("Roxy's Eyes", false);
	settings.Add("Roxy Fizzy Faz", false);

	settings.CurrentDefaultParent = "E_Roxy Salon";
	settings.Add("Shoes", false);

	settings.CurrentDefaultParent = "E_Sewers";
	settings.Add("Chica's Voicebox", false);

	settings.CurrentDefaultParent = "E_Utility Tunnels";
	settings.Add("Pizzaplex Cameras", false);

	settings.CurrentDefaultParent = "E_West Arcade";
	settings.Add("Repaired Head", false);

	settings.CurrentDefaultParent = "E_Other";
	settings.Add("6am Party Pass", false);

	settings.CurrentDefaultParent = "Retro CDs";
	settings.Add("CD_Backstage", false, "Backstage");
	settings.Add("CD_Bonnie Bowl", false, "Bonnie Bowl");
	settings.Add("CD_Chica's Bakery", false, "Chica's Bakery");
	settings.Add("CD_Fazerblast", false, "Fazerblast");
	settings.Add("CD_Kids Cove", false, "Kids Cove");
	settings.Add("CD_Main Atrium", false, "Main Atrium");
	settings.Add("CD_Mazercise", false, "Mazercise");
	settings.Add("CD_Monty Golf", false, "Monty Golf");
	settings.Add("CD_Rockstar Row Foxy", false, "Roxkstar Row Foxy");
	settings.Add("CD_Rockstar Row Helpy", false, "Roxkstar Row Helpy");
	settings.Add("CD_Roxy Raceway", false, "Roxy Raceway");
	settings.Add("CD_Roxy Salon", false, "Roxy Salon");
	settings.Add("CD_Utility Tunnels Couch", false, "Utility Tunnels Couch");
	settings.Add("CD_Utility Tunnels Foxy Plush", false, "Utility Tunnels Foxy Plush");
	settings.Add("CD_West Atrium Stage", false, "West Atrium");
	settings.Add("CD_West Arcade", false, "West Arcade");
	
	settings.CurrentDefaultParent = "Security Badges";
	settings.Add("Security Badge 1", false);
	settings.Add("Security Badge 2", false);
	settings.Add("Security Badge 3", false);
	settings.Add("Security Badge 4", false);
	settings.Add("Security Badge 5", false);
	settings.Add("Security Badge 6", false);
	settings.Add("Security Badge 7", false);
	settings.Add("Security Badge 8", false);

	settings.CurrentDefaultParent = "Positional Splits";
	settings.Add("Chica's Bathroom", false);
	settings.Add("Enter Bonnie Bowl", false);
	settings.Add("Enter El Chips", false);
	settings.Add("Enter West Arcade", false);
	settings.Add("Exit Afton Elevator", false);
	settings.Add("Exit West Arcade", false);
	settings.Add("Fazerblast Spiral Stairs", false);
	settings.Add("First Aid Vanessa Cutscene", false);
	settings.Add("Freddy Stairs Rail", false);
	settings.Add("Monty Chase", false);
	settings.Add("Rail Outside Fazerblast", false);
	settings.Add("STR-ATR-W Stairs", false);
	settings.Add("STR-LB Stairs", false);

	settings.CurrentDefaultParent = "Time Splits";
	settings.Add("Exit Vents", false);
	settings.Add("Freddy Eye Repair", false);

	settings.CurrentDefaultParent = "Timer Settings";
	settings.Add("Elevator Pauses", true);
	settings.Add("Stop Timer When On Menu", true);
	settings.Add("Stop Timer When Paused", true);

	settings.CurrentDefaultParent = "Elevator Pauses";
	settings.Add("Afton Elevator", true);
	settings.Add("Bonnie Bowl Elevator", true);
	settings.Add("Fazerblast Elevator", true);
	settings.Add("Basement Kitchen Elevator", true);
	settings.Add("Lobby Elevators", true);
	settings.Add("Monty Golf Elevator", true);
	settings.Add("Roxy's Greenroom Elevator", true);
	settings.Add("West Arcade Elevator", true);

	settings.CurrentDefaultParent = "Afton Elevator";
	settings.Add("AE_EUOE", true, "Every Use Of Elevator");
	settings.Add("AE_POOU", false, "Pause Only On Use:");

	settings.CurrentDefaultParent = "AE_POOU";
	settings.Add("AEn1", false, "#1");
	settings.Add("AEn2", false, "#2");
	settings.Add("AEn3", false, "#3");
	settings.Add("AEn4", false, "#4");
	settings.Add("AEn5", false, "#5");

	settings.CurrentDefaultParent = "Bonnie Bowl Elevator";
	settings.Add("BBE_EUOE", true, "Every Use Of Elevator");
	settings.Add("BBE_POOU", false, "Pause Only On Use:");

	settings.CurrentDefaultParent = "BBE_POOU";
	settings.Add("BBEn1", false, "#1");
	settings.Add("BBEn2", false, "#2");
	settings.Add("BBEn3", false, "#3");
	settings.Add("BBEn4", false, "#4");
	settings.Add("BBEn5", false, "#5");

	settings.CurrentDefaultParent = "Fazerblast Elevator";
	settings.Add("FBE_EUOE", true, "Every Use Of Elevator");
	settings.Add("FBE_POOU", false, "Pause Only On Use:");

	settings.CurrentDefaultParent = "FBE_POOU";
	settings.Add("FBEn1", false, "#1");
	settings.Add("FBEn2", false, "#2");
	settings.Add("FBEn3", false, "#3");
	settings.Add("FBEn4", false, "#4");
	settings.Add("FBEn5", false, "#5");

	settings.CurrentDefaultParent = "Basement Kitchen Elevator";
	settings.Add("KE_EUOE", true, "Every Use Of Elevator");
	settings.Add("KE_POOU", false, "Pause Only On Use:");

	settings.CurrentDefaultParent = "KE_POOU";
	settings.Add("KEn1", false, "#1");
	settings.Add("KEn2", false, "#2");
	settings.Add("KEn3", false, "#3");
	settings.Add("KEn4", false, "#4");
	settings.Add("KEn5", false, "#5");

	settings.CurrentDefaultParent = "Lobby Elevators";
	settings.Add("LE_EUOE", true, "Every Use Of Elevator");
	settings.Add("LE_POOU", false, "Pause Only On Use:");

	settings.CurrentDefaultParent = "LE_POOU";
	settings.Add("LEn1", false, "#1");
	settings.Add("LEn2", false, "#2");
	settings.Add("LEn3", false, "#3");
	settings.Add("LEn4", false, "#4");
	settings.Add("LEn5", false, "#5");

	settings.CurrentDefaultParent = "Monty Golf Elevator";
	settings.Add("MGE_EUOE", true, "Every Use Of Elevator");
	settings.Add("MGE_POOU", false, "Pause Only On Use:");

	settings.CurrentDefaultParent = "MGE_POOU";
	settings.Add("MGEn1", false, "#1");
	settings.Add("MGEn2", false, "#2");
	settings.Add("MGEn3", false, "#3");
	settings.Add("MGEn4", false, "#4");
	settings.Add("MGEn5", false, "#5");

	settings.CurrentDefaultParent = "Roxy's Greenroom Elevator";
	settings.Add("RGE_EUOE", true, "Every Use Of Elevator");
	settings.Add("RGE_POOU", false, "Pause Only On Use:");

	settings.CurrentDefaultParent = "RGE_POOU";
	settings.Add("RGEn1", false, "#1");
	settings.Add("RGEn2", false, "#2");
	settings.Add("RGEn3", false, "#3");
	settings.Add("RGEn4", false, "#4");
	settings.Add("RGEn5", false, "#5");

	settings.CurrentDefaultParent = "West Arcade Elevator";
	settings.Add("WAE_EUOE", true, "Every Use Of Elevator");
	settings.Add("WAE_POOU", false, "Pause Only On Use:");

	settings.CurrentDefaultParent = "WAE_POOU";
	settings.Add("WAEn1", false, "#1");
	settings.Add("WAEn2", false, "#2");
	settings.Add("WAEn3", false, "#3");
	settings.Add("WAEn4", false, "#4");
	settings.Add("WAEn5", false, "#5");

	settings.CurrentDefaultParent = null;
	settings.Add("Refresh Rate", true);

	settings.CurrentDefaultParent = "Refresh Rate";
	settings.Add("120Hz", false);
	settings.Add("60Hz", true);
	settings.Add("30Hz", false);
	settings.Add("15Hz", false);

	settings.CurrentDefaultParent = null;
	settings.Add("Reset Settings", true);

	settings.CurrentDefaultParent = "Reset Settings";
	settings.Add("Reset On New Game", true);
}

init {
	//Sets the version of the game upon startup
	vars.versionSize = modules.First().ModuleMemorySize;

	//1.04: 76210176
	//1.05: 
	//1.11: 

	if (vars.versionSize == 76210176){
		version = "v1.04";
	}
	if (vars.versionSize == 0){
		version = "v1.05";
	}
	if (vars.versionSize == 0){
		version = "v1.11";
	}

	print("Version = " + version);

	//Functions
	vars.checkElevator1 = (Func<string, int, bool>)((name, checkCurrent) => {
		if (settings[name]){
			if (checkCurrent == 1){
				return true;
			}
		}
		return false;
	});
	
	vars.checkElevator2 = (Func<string, int, int, bool>)((nameShort, checkOld, checkCount) => {
		if (settings[nameShort + "_EUOE"]){
			if (checkOld == 0){
				print(nameShort + " :  Every Use");
			}
			return true;
		}
		if (settings[nameShort + "_POOU"]){
			if (settings[nameShort + "n" + checkCount]){
				if (checkOld == 0){
					print(nameShort + " : Use #" + checkCount);
				}
				return true;
			}
		}
		return false;
	});

	vars.checkItem = (Func<string, double, double, double, bool>)((name, x, y, z) => {
		//checks in a sphere (radius 300u)
		if (settings[name]){
			if (Math.Pow(current.posX - x, 2) + Math.Pow(current.posY - y, 2) + Math.Pow(current.posZ - z, 2) <= Math.Pow(300, 2)){
				print(name);
				return true;
			}
		}
		return false;
	});

	vars.checkPosition = (Func<string, bool, double, double, double, double, double, double, bool>)((name, check, xLB, xUB, yLB, yUB, zLB, zUB) => {
		if (settings[name]){
			if (check){
				if (xLB <= current.posX && current.posX <= xUB && yLB <= current.posY && current.posY <= yUB && zLB <= current.posZ && current.posZ <= zUB){
					print(name);
					return true;
				}
			}
		}
		return false;
	});

	vars.checkPositionSlant = (Func<string, bool, double, double, double, double, double, double, double, double, bool>)((name, check, x1, y1, x2, y2, xB, yB, zLB, zUB) => {
		if (settings[name]){
			if (check){
				if (zLB <= current.posZ && current.posZ <= zUB){
				
				double slope = (y1 - y2) / (x1 - x2);

					if (yB - y1 <= slope * (xB - x1) && current.posX <= xB && current.posY >= yB){
						if (current.posY - y1 <= slope * (current.posX - x1)){
							print(name);
							return true;
						}
						return (current.posY - y1 < slope * (current.posX - x1));
					}
					if (yB - y1 > slope * (xB - x1) && current.posX >= xB && current.posY <= yB){
						if (current.posY - y1 > slope * (current.posX - x1)){
							print(name);
							return true;
					}
				}
				}
			}
		}
		return false;
	});

	vars.checkPQPosition1 = (Func<double, double, double, double, double, double, bool>)((currentX, currentY, xLB, xUB, yLB, yUB) => {
		if (xLB <= currentX && currentX <= xUB && yLB <= currentY && currentY <= yUB){
			return true;
		}
		return false;
	});

	vars.checkPQPosition2 = (Func<string, bool, bool>)((name, check) => {
		if (settings[name]){
			if (check){
				print(name);
				return true;
			}
		}
		return false;
	});

	vars.checkSewerGen = (Func<string, bool, double, double, double, double, bool>)((name, check, x, y, oldPositionX, oldPositionY) => {
		//checks in a circle (z <= -2500, radius 200)
		if (settings[name]){
			if (check){
				if (current.posZ <= -2500){
					if (Math.Pow(oldPositionX - x, 2) + Math.Pow(oldPositionY - y, 2) <= Math.Pow(200, 2)){
						if (Math.Pow(current.posX - x, 2) + Math.Pow(current.posY - y, 2) > Math.Pow(200, 2)){
							print(name);
							return true;
						}
					}
				}
			}
		}
		return false;
	});

	vars.checkTime = (Func<string, bool, int, int, bool>)((name, check, hour, minute) => {
		if (settings[name]){
			if (check){
				if (current.hourTimer == hour && current.minuteTimer == minute){
					print(name);
					return true;
				}
			}
		}
		return false;
	});

	vars.resetVariables = (Action)(() => {
		//Used to keep certain splits from repeating (reset)

		//Counter Splits
		vars.cSewerGen1 = true;
		vars.cSewerGen2 = true;
		vars.cSewerGen3 = true;

		//Deload Splits
		vars.dBalloon = true;
		vars.dCurtain = true;
		vars.dDaycareArcade = true;
		vars.dDaycareTheatre = true;
		vars.dRoxyEyes = true;
		vars.dPlant = true;
	
		//Ending Splits
		//pq1
		vars.pq1_start = true;
		vars.pq1_1 = true;
		vars.pq1_2 = true;
		vars.pq1_3 = true;
		vars.pq1_4 = true;
		vars.pq1_5 = true;
		vars.pq1_6 = true;
		vars.pq1_7 = true;
		vars.pq1_8 = true;
		vars.pq1_9 = true;
		vars.pq1_end = true;
		//pq2
		vars.pq2_start = true;
		vars.pq2_1 = true;
		vars.pq2_2 = true;
		vars.pq2_3 = true;
		vars.pq2_4 = true;
		vars.pq2_5 = true;
		vars.pq2_6 = true;
		vars.pq2_7 = true;
		vars.pq2_8 = true;
		vars.pq2_9 = true;
		vars.pq2_10 = true;
		vars.pq2_end = true;
		//pq3
		vars.pq3_start = true;
		vars.pq3_1 = true;
		vars.pq3_2 = true;
		vars.pq3_3 = true;
		vars.pq3_4 = true;
		vars.pq3_5 = true;
		vars.pq3_6 = true;
		vars.pq3_7 = true;
		vars.pq3_end = true;

		//Item Splits
		vars.iRepairedHead = true;
		vars.iPartyPass6am = true;

		//Positional Splits
		vars.pChicaBath = true;
		vars.pEnBonnieBowl = true;
		vars.pEnElChips = true;
		vars.pEnWestArcade = true;
		vars.pAftonElev = true;
		vars.pExWestArcade = false;
		vars.pFazerStairs = true;
		vars.pFirstAid = true;
		vars.pFredRail = true;
		vars.pMontyChase = true;
		vars.pFazerRail = true;
		vars.pSTRATRW = true;
		vars.pSTRLB = true;

		//Timer Splits
		vars.tHead = true;
		vars.tVents = true;
		vars.tRepair = true;

		//Pausing
		vars.nAElev = 0;
		vars.nBBElev = 0;
		vars.nFBElev = 0;
		vars.nKElev = 0;
		vars.nLElev = 0;
		vars.nMGElev = 0;
		vars.nRGElev = 0;
		vars.nWAElev = 0;
	});
}

start {
	//Updates refreshRate
	if (settings["Refresh Rate"]){
		if (settings["120Hz"]){
			if (refreshRate != 120){
				print("Refresh Rate = 120Hz");
				refreshRate = 120;
			}
		}
		else if (settings["60Hz"]){
			if (refreshRate != 60){
				print("Refresh Rate = 60Hz");
				refreshRate = 60;
			}
		}
		else if (settings["30Hz"]){
			if (refreshRate != 30){
				print("Refresh Rate = 30Hz");
				refreshRate = 30;
			}
		}
		else if (settings["15Hz"]){
			if (refreshRate != 15){
				print("Refresh Rate = 15Hz");
				refreshRate = 15;
			}
		}
		else {
			if (refreshRate != 60){
				print("Default Refresh Rate = 60Hz");
				refreshRate = 60;
			}
		}
	}
	else {
		if (refreshRate != 60){
			print("Default Refresh Rate = 60Hz");
			refreshRate = 60;
		}
	}

	//Resets variables upon stopping timer
	vars.resetVariables();

	//Start condition (Freddy power)
	return (current.freddyPower == 30 && old.freddyPower == 100);
}

reset {
	//Resets variables for certain splits
	if (current.hourTimer == -1 && current.minuteTimer == 30 && old.minuteTimer == 0){
		vars.resetVariables();
	}

	if (settings["Reset Settings"]){
		if (settings["Reset On New Game"]){
			if (current.freddyPower == 100 && current.hourTimer == -1 && old.hourTimer != -1){
				print("Reset Timer");
				return true;
			}
		}
	}
}

isLoading {
	if (settings["Timer Settings"]){
		if (settings["Elevator Pauses"]){
			if (vars.checkElevator1("Afton Elevator", current.aftonElev)){
				if (old.aftonElev == 0){
					vars.nAElev++;
				}
				if (vars.checkElevator2("AE", old.aftonElev, vars.nAElev)){
					return true;
				}
			}
			if (vars.checkElevator1("Bonnie Bowl Elevator", current.bonBElev)){
				if (old.bonBElev == 0){
					vars.nBBElev++;
				}
				if (vars.checkElevator2("BBE", old.bonBElev, vars.nBBElev)){
					return true;
				}
			}
			if (vars.checkElevator1("Fazerblast Elevator", current.fazerElev)){
				if (old.fazerElev == 0){
					vars.nFBElev++;
				}
				if (vars.checkElevator2("FBE", old.fazerElev, vars.nFBElev)){
					return true;
				}
			}
			if (vars.checkElevator1("Basement Kitchen Elevator", current.kitElev)){
				if (old.kitElev == 0){
					vars.nKElev++;
				}
				if (vars.checkElevator2("KE", old.kitElev, vars.nKElev)){
					return true;
				}
			}
			if (vars.checkElevator1("Lobby Elevators", current.foy1Elev)){
				if (old.foy1Elev == 0){
					vars.nLElev++;
				}
				if (vars.checkElevator2("LE", old.foy1Elev, vars.nLElev)){
					return true;
				}
			}
			if (vars.checkElevator1("Lobby Elevators", current.foy2Elev)){
				if (old.foy2Elev == 0){
					vars.nLElev++;
				}
				if (vars.checkElevator2("LE", old.foy2Elev, vars.nLElev)){
					return true;
				}
			}
			if (vars.checkElevator1("Monty Golf Elevator", current.monGElev)){
				if (old.monGElev == 0){
					vars.nMGElev++;
				}
				if (vars.checkElevator2("MGE", old.monGElev, vars.nMGElev)){
					return true;
				}
			}
			if (vars.checkElevator1("Roxy's Greenroom Elevator", current.roxyElev)){
				if (old.roxyElev == 0){
					vars.nRGElev++;
				}
				if (vars.checkElevator2("RGE", old.roxyElev, vars.nRGElev)){
					return true;
				}
			}
			if (vars.checkElevator1("West Arcade Elevator", current.WAElev)){
				if (old.WAElev == 0){
					vars.nWAElev++;
				}
				if (vars.checkElevator2("WAE", old.WAElev, vars.nWAElev)){
					return true;
				}
			}
		}
		if (settings["Stop Timer When On Menu"] && current.menu == 0){
			if (old.menu != 0){
				print("Stop Timer When On Menu");
			}
			return true;
		}
		if (settings["Stop Timer When Paused"] && current.pause == 3){
			if (old.pause != 3){
				print("Stop Timer When Paused");
			}
			return true;
		}
	}
	return false;
}

split {
	if (settings["Split Settings"]){
		if (settings["Counting Splits"]){
			if (current.DGens > old.DGens){
				if (settings["Daycare Generators"]){
					if (settings["D_Generator " + current.DGens]){
						print("DGen " + current.DGens);
						return true;
					}
				}
			}
			if (current.FBFlags > old.FBFlags){
				if (settings["Fazerblast Flags"]){
					if (settings["Flag " + current.FBFlags]){
						print("Flag " + current.FBFlags);
						return true;
					}
				}
			}
			if (current.MGBucket > old.MGBucket){
				if (settings["Monty Bucket Count"]){
					if (settings[current.MGBucket + " Balls"]){
						print(current.MGBucket + " Balls");
						return true;
					}
				}
			}
			if (vars.checkSewerGen("S_Generator 1", vars.cSewerGen1, -1515, 16575, old.posX, old.posY)){
				vars.cSewerGen1 = false;
				return true;
			}
			if (vars.checkSewerGen("S_Generator 2", vars.cSewerGen2, -10525, 21155, old.posX, old.posY)){
				vars.cSewerGen2 = false;
				return true;
			}
			if (vars.checkSewerGen("S_Generator 3", vars.cSewerGen3, -3785, 16480, old.posX, old.posY)){
				vars.cSewerGen3 = false;
				return true;
			}
		}
		if (settings["Deload Splits"]){
			if (vars.checkPosition("Balloon Deload", vars.dBalloon, 8300, 9000, 38000, 39000, 2707, 3000)){
				vars.dBalloon = false;
				return true;
			}
			if (vars.checkPosition("Curtain Deload", vars.dCurtain, 5150, 5350, 44450, 44650, 1960, 2100)){
				vars.dCurtain = false;
				return true;
			}
			if (vars.checkPosition("Daycare Arcade Deload", vars.dDaycareArcade, -13400, -13200, 30000, 31800, 1821.75, 20000)){
				vars.dDaycare = false;
				return true;
			}
			if (vars.checkPosition("Daycare Theatre Deload", vars.dDaycareTheatre, -20000, -19500, 32377.5, 34800, 2516, 2600)){
				vars.dDaycareTheatre = false;
				return true;
			}
			if (vars.checkPosition("Roxy's Eye Deload", vars.dRoxyEyes, 18500, 21500, 51800, 52400, 0, 450)){
				vars.dRoxyEyes = false;
				return true;
			}
			if (vars.checkPosition("Roxy Salon Deload", vars.dPlant, 10345, 10500, 41000, 42500, 2100, 2800)){
				vars.dPlant = false;
				return true;
			}
		}
		if (settings["Ending Splits"]){
			//splits based on ending cutscenes
			if (current.end == 1 && old.end == 0){
				if (settings["Afton Ending"]){
					if (vars.checkPosition("Button 8 / End", true, 27000, 29500, 39000, 42200, -9000, -8000)){
						return true;
					}
				}
				if (settings["Car Battery Ending"]){
					if (vars.checkPosition("Car Battery Ending", true, -3300, -2750, 18500, 19250, 0, 500)){
						return true;
					}
				}
				if (settings["Escape Ending"]){
					if (vars.checkPosition("Escape Ending", true, -2800, -500, 19000, 20000, 1450, 1800)){
						return true;
					}
				}
				if (settings["Fire Escape Ending"]){
					if (vars.checkPosition("Fire Escape Ending", true, -2000, -1400, 22500, 22800, 3300, 4000)){
						return true;
					}
				}
				if (settings["Princess Quest Ending"]){
					if (vars.checkPosition("pq_endCutscene", true, 17750, 18000, 28740, 29000, 2500, 2800)){
						return true;
					}
				}
				if (settings["Vanny Ending"]){
					if (vars.checkPosition("Vanny Ending", true, 17550, 17750, 28450, 28740, 2500, 2800)){
						return true;
					}
				}
			}
			//other ending splits
			if (settings["Afton Ending"]){
				if (current.aftonHealth < old.aftonHealth){
					if (settings["Button " + ((750 - current.aftonHealth) / 100)]){
						print("Button " + ((750 - current.aftonHealth) / 100));
						return true;
					}
				}
			}
			if (settings["Princess Quest Ending"]){
				if (settings["Princess Quest 1"]){
					if (7000 <= old.posX && old.posX <= 8500 && 46500 <= old.posY && old.posY <= 48000 && -10000 <= old.posZ && old.posZ <= 10000){
						if (vars.checkTime("pq1_start", vars.pq1_start, 0, 0)){
							vars.pq1_start = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq1X, current.pq1Y, 785, 810, -40, 40)){
						if (vars.checkPQPosition2("pq1_1", vars.pq1_1)){
							vars.pq1_1 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq1X, current.pq1Y, 1715, 1750, -40, 40)){
						if (vars.checkPQPosition2("pq1_2", vars.pq1_2)){
							vars.pq1_2 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq1X, current.pq1Y, 3055, 3090, -40, 40)){
						if (vars.checkPQPosition2("pq1_3", vars.pq1_3)){
							vars.pq1_3 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq1X, current.pq1Y, 2070, 2175, 600, 635)){
						if (vars.checkPQPosition2("pq1_4", vars.pq1_4)){
							vars.pq1_4 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq1X, current.pq1Y, 2070, 2175, 1865, 1900)){
						if (vars.checkPQPosition2("pq1_5", vars.pq1_5)){
							vars.pq1_5 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq1X, current.pq1Y, 2860, 2895, 1975, 2060)){
						if (vars.checkPQPosition2("pq1_6", vars.pq1_6)){
							vars.pq1_6 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq1X, current.pq1Y, 5220, 5255, 2450, 2535)){
						if (vars.checkPQPosition2("pq1_7", vars.pq1_7)){
							vars.pq1_7 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq1X, current.pq1Y, 990, 1070, 2150, 2185)){
						if (vars.checkPQPosition2("pq1_8", vars.pq1_8)){
							vars.pq1_8 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq1X, current.pq1Y, 2070, 2170, 3420, 3455)){
						if (vars.checkPQPosition2("pq1_9", vars.pq1_9)){
							vars.pq1_9 = false;
							return true;
						}
					}
					if (settings["pq1_end"] && vars.pq1_end){
						if (old.pq1Y >= 4920 && current.pq1Y == 0){
							vars.pq1_end = false;
							print("pq1_end");
							return true;
						}
					}
				}
				if (settings["Princess Quest 2"]){
					if (7500 <= old.posX && old.posX <= 9000 && 20500 <= old.posY && old.posY <= 21000 && -10000 <= old.posZ && old.posZ <= 10000){
						if (vars.checkTime("pq2_start", vars.pq2_start, 0, 0)){
							vars.pq2_start = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq2X, current.pq2Y, 2975, 3075, -770, -735)){
						if (vars.checkPQPosition2("pq2_1", vars.pq2_1)){
							vars.pq2_1 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq2X, current.pq2Y, 4520, 4620, -2455, -2420)){
						if (vars.checkPQPosition2("pq2_2", vars.pq2_2)){
							vars.pq2_2 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq2X, current.pq2Y, 3130, 3165, -1265, -1180)){
						if (vars.checkPQPosition2("pq2_3", vars.pq2_3)){
							vars.pq2_3 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq2X, current.pq2Y, 2815, 2915, -2780, -2745)){
						if (vars.checkPQPosition2("pq2_4", vars.pq2_4)){
							vars.pq2_4 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq2X, current.pq2Y, 3200, 3300, 745, 780)){
						if (vars.checkPQPosition2("pq2_5", vars.pq2_5)){
							vars.pq2_5 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq2X, current.pq2Y, 2100, 2205, 1120, 1205)){
						if (vars.checkPQPosition2("pq2_6", vars.pq2_6)){
							vars.pq2_6 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq2X, current.pq2Y, 75, 175, 155, 190)){
						if (vars.checkPQPosition2("pq2_7", vars.pq2_7)){
							vars.pq2_7 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq2X, current.pq2Y, 2725, 2760, -35, 50)){
						if (vars.checkPQPosition2("pq2_8", vars.pq2_8)){
							vars.pq2_8 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq2X, current.pq2Y, 3920, 3955, 455, 545)){
						if (vars.checkPQPosition2("pq2_9", vars.pq2_9)){
							vars.pq2_9 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq2X, current.pq2Y, 4905, 4975, 790, 860)){
						if (vars.checkPQPosition2("pq2_10", vars.pq2_10)){
							vars.pq2_10 = false;
							return true;
						}
					}
					if (settings["pq2_end"] && vars.pq2_end){
						if (old.pq2X >= 4900 && current.pq2Y == 0){
							vars.pq2_end = false;
							print("pq2_end");
							return true;
						}
					}
				}
				if (settings["Princess Quest 3"]){
					if (17750 <= old.posX && old.posX <= 18000 && 28775 <= old.posY && old.posY <= 30000 && 2500 <= old.posZ && old.posZ <= 2750){
						if (vars.checkTime("pq3_start", vars.pq3_start, 0, 0)){
							vars.pq3_start = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq3X, current.pq3Y, 2195, 2230, -3250, -3190)){
						if (vars.checkPQPosition2("pq3_1", vars.pq3_1)){
							vars.pq3_1 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq3X, current.pq3Y, 2050, 2135, -1340, -1305)){
						if (vars.checkPQPosition2("pq3_2", vars.pq3_2)){
							vars.pq3_2 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq3X, current.pq3Y, 2445, 2480, -1225, -1140)){
						if (vars.checkPQPosition2("pq3_3", vars.pq3_3)){
							vars.pq3_3 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq3X, current.pq3Y, 5125, 5225, -205, -170)){
						if (vars.checkPQPosition2("pq3_4", vars.pq3_4)){
							vars.pq3_4 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq3X, current.pq3Y, 1290, 1325, 630, 713)){
						if (vars.checkPQPosition2("pq3_5", vars.pq3_5)){
							vars.pq3_5 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq3X, current.pq3Y, 1940, 1975, -1475, -1420)){
						if (vars.checkPQPosition2("pq3_6", vars.pq3_6)){
							vars.pq3_6 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq3X, current.pq3Y, 1940, 2000, -255, -220)){
						if (vars.checkPQPosition2("pq3_7", vars.pq3_7)){
							vars.pq3_7 = false;
							return true;
						}
					}
					if (vars.checkPQPosition1(current.pq3X, current.pq3Y, 1800, 2200, 1635.34, 1700)){
						if (current.pq3Attack > old.pq3Attack){
							if (vars.checkPQPosition2("pq3_end", vars.pq3_end)){
								vars.pq3_end = false;
								return true;
							}
						}
					}
				}
			}
		}
		if (settings["Item Splits"]){
			if (settings["Item List"]){
				if (settings["Collectables"]){
					if (current.splashScreen == 4 && old.splashScreen == 0){
						if (settings["C_Backstage"]){
							if (vars.checkItem("El Chip Piñata", 1970, 53880, 1520)){
								return true;
							}
							if (vars.checkItem("Freddy Icon Shirt", 6560, 47150, 1520)){
								return true;
							}
							if (vars.checkItem("Glam Chica Figure", -5300, 53100, 1520)){
								return true;
							}
						}
						if (settings["C_Basement Kitchen"]){
							if (vars.checkItem("Freddy Magnet", 315, 23370, 480)){
								return true;
							}
							if (vars.checkItem("Golden Chica", -4755, 29740, 65)){
								return true;
							}
							if (vars.checkItem("K_Old Poster", -6420, 23930, 70)){
								return true;
							}
						}
						if (settings["C_Bonnie Bowl"]){
							if (vars.checkItem("Bonnie Plush", 14290, 35760, 3180)){
								return true;
							}
							if (vars.checkItem("Golden Monty", 18370, 29210, 2560)){
								return true;
							}
						}
						if (settings["C_Chica's Bakery"]){
							if (vars.checkItem("CB_Chica Magnet", -7270, 44050, 2160)){
								return true;
							}
							if (vars.checkItem("Monty Magnet", -10165, 47085, 2160)){
								return true;
							}
						}
						if (settings["C_Daycare"]){
							if (vars.checkItem("Freddy Mask", -20010, 34315, 2180)){
								return true;
							}
							if (vars.checkItem("Frozen Chica Treat", -20915, 29485, 1300)){
								return true;
							}
							if (vars.checkItem("Glam Freddy Figure", -12155, 34960, 2130)){
								return true;
							}
							if (vars.checkItem("Golden Moon", -16900, 27220, 2130)){
								return true;
							}
							if (vars.checkItem("D_Old Poster", -20085, 33180, 1520)){
								return true;
							}
							if (vars.checkItem("Plush Baby", -16465, 36485, 2130)){
								return true;
							}
						}
						if (settings["C_Kids Cove Sublobby"]){
							if (vars.checkItem("Golden Sun", -10875, 35230, 1520)){
								return true;
							}
							if (vars.checkItem("Moon Plush", -10155, 31475, 1600)){
								return true;
							}
						}
						if (settings["C_El Chips"]){
							if (vars.checkItem("Chica Balloon", -11860, 28500, 3310)){
								return true;
							}
						}
						if (settings["C_Fazerblast"]){
							if (vars.checkItem("Freddy Balloon", 10255, 32630, 1560)){
								return true;
							}
							if (vars.checkItem("F_Old Poster", 18080, 34820, 1050)){
								return true;
							}
							if (vars.checkItem("Space Chica Keychain", 9825, 36605, 1525)){
								return true;
							}
							if (vars.checkItem("Space Roxy Keychain", 8225, 32905, 1495)){
								return true;
							}
						}
						if (settings["C_Laundry"]){
							if (vars.checkItem("Glam Roxy Plush", -7465, 24245, 65)){
								return true;
							}
							if (vars.checkItem("K_Old Poster", -6420, 23930, 70)){
								return true;
							}
							if (vars.checkItem("Star Shirt", -6620, 20805, 75)){
								return true;
							}
						}
						if (settings["C_Lobby"]){
							if (vars.checkItem("Chica Name Shirt", -1450, 26520, 1530)){
								return true;
							}
							if (vars.checkItem("Cupcake Piñata", 85, 22335, 1510)){
								return true;
							}
							if (vars.checkItem("Freddy Name Shirt", -5920, 25580, 2135)){
								return true;
							}
							if (vars.checkItem("Glam Chica Plush", 1030, 24720, 2150)){
								return true;
							}
							if (vars.checkItem("Sun Plush", -7055, 28310, 2200)){
								return true;
							}
						}
						if (settings["C_Main Atrium"]){
							if (vars.checkItem("Monty Piñata", -1375, 33030, 1520)){
								return true;
							}
							if (vars.checkItem("Roxy Name Shirt", -5525, 43870, 1570)){
								return true;
							}
						}
						if (settings["C_Monty Golf"]){
							if (vars.checkItem("Go Kart", -19630, 42090, 1130)){
								return true;
							}
							if (vars.checkItem("Tragedy Mask", -18085, 45065, 1165)){
								return true;
							}
						}
						if (settings["C_Monty Golf Sublobby"]){
							if (vars.checkItem("Frozen Monty Treat", -10320, 41805, 1520)){
								return true;
							}
							if (vars.checkItem("Glam Monty Figure", -10945, 39580, 1520)){
								return true;
							}
						}
						if (settings["C_Parts & Service"]){
							if (vars.checkItem("Glam Roxy Figure", -3335, 48850, -1290)){
								return true;
							}
						}
						if (settings["C_Prize Counter"]){
							if (vars.checkItem("Frozen Freddy Treat", -3335, 24065, 3330)){
								return true;
							}
							if (vars.checkItem("Monty Mask", -265, 2875, 3330)){
								return true;
							}
						}
						if (settings["C_Rockstar Row"]){
							if (vars.checkItem("Chica Mask", -4150, 52775, 1600)){
								return true;
							}
							if (vars.checkItem("Four Block Shirt", -540, 52285, 1560)){
								return true;
							}
							if (vars.checkItem("Golden Monty", -2820, 51910, 1550)){
								return true;
							}
							if (vars.checkItem("Monty Name Shirt", 5025, 44140, 1525)){
								return true;
							}
							if (vars.checkItem("Pizzaplex Logo Shirt", -5320, 47545, 1580)){
								return true;
							}
						}
						if (settings["C_Roxy Raceway"]){
							if (vars.checkItem("Monty Balloon", 10620, 48760, 1540)){
								return true;
							}
							if (vars.checkItem("Space Monty Keychain", 11285, 38320, 1540)){
								return true;
							}
						}
						if (settings["C_Roxy Salon"]){
							if (vars.checkItem("Roxy Magnet", 6295, 76745, 2235)){
								return true;
							}
							if (vars.checkItem("Roxy Piñata", 10645, 43210, 2545)){
								return true;
							}
						}
						if (settings["C_Salads & Sides"]){
							if (vars.checkItem("Freddy Face Shirt", 1770, 28190, 1525)){
								return true;
							}
							if (vars.checkItem("Piñata", -1185, 30315, 1525)){
								return true;
							}
						}
						if (settings["C_Sewers"]){
							if (vars.checkItem("S_Old Poster", -6170, 22020, -1930)){
								return true;
							}
						}
						if (settings["C_Utility Tunnels"]){
							if (vars.checkItem("Chica Piñata", 5300, 22200, 1510)){
								return true;
							}
							if (vars.checkItem("Comedy Mask", 1315, 44580, -1305)){
								return true;
							}
							if (vars.checkItem("Foxy Plush", 2370, 39785, -1305)){
								return true;
							}
							if (vars.checkItem("Glam Freddy Figure", 2410, 29650, 65)){
								return true;
							}
							if (vars.checkItem("Golden Roxy", 3464, 44775, 50)){
								return true;
							}
							if (vars.checkItem("Moon Figure", 5900, 40960, 210)){
								return true;
							}
							if (vars.checkItem("Sun Figure", 5240, 40860, -1305)){
								return true;
							}
						}
						if (settings["C_Warehouse"]){
							if (vars.checkItem("Nightmare Plush", -560, 38095, -1310)){
								return true;
							}
						}
						if (settings["C_Roxy Raceway Sublobby"]){
							if (vars.checkItem("Frozen Roxy Treat", 5290, 41755, 1570)){
								return true;
							}
							if (vars.checkItem("Roxy Balloon", 6065, 37595, 2145)){
								return true;
							}
							if (vars.checkItem("Roxy Mask", 6035, 39005, 2175)){
								return true;
							}
						}
						if (settings["C_Fazerblast Sublobby"]){
							if (vars.checkItem("Freddy Piñata", 7935, 36845, 1560)){
								return true;
							}
							if (vars.checkItem("Space Freddy Keychain", 7310, 32985, 1845)){
								return true;
							}
						}
						if (settings["C_West Arcade"]){
							if (vars.checkItem("WA_Chica Magnet", 10425, 30600, 3355)){
								return true;
							}
							if (vars.checkItem("Glam Monty Plush", 3390, 23860, 2130)){
								return true;
							}
						}
					}
					if (settings["Equipment"]){
						//Fazerblasters and Daycare Pass don't use splashscreen
						if (current.hippoMagnetUsed == 1 && old.hippoMagnetUsed == 0){
							if (settings["E_Lobby"]){
								if (settings["Daycare Pass"]){
									print("Daycare Pass");
									return true;
								}
							}
						}
						if (current.itemCount > old.itemCount){
							if (settings["E_Fazerblast"]){
								if (vars.checkItem("Golden Fazerblaster", 13890, 31285, 1530)){
									return true;
								}
								if (vars.checkItem("Grey Fazerblaster", 12120, 31180, 1530)){
									return true;
								}
							}
						}
						if (current.splashScreen == 4 && old.splashScreen == 0){
							if (settings["E_Backstage"]){
								if (vars.checkItem("Backstage Pass", -8925, 49895, 1600)){
									return true;
								}
								if (vars.checkItem("B_Flashlight Upgrade", -8470, 53390, 1520)){
									return true;
								}
							}
							if (settings["E_Basement Kitchen"]){
								if (vars.checkItem("Freddy Fizzy Faz", 3925, 24245, 480)){
									return true;
								}
							}
							if (settings["E_Bonnie Bowl"]){
								if (vars.checkItem("Monty Mystery Mix", 15060, 30205, 3425)){
									return true;
								}
							}
							if (settings["E_Chica's Bakery"]){
								if (vars.checkItem("Hoodie", -11300, 48050, 2155)){
									return true;
								}
							}
							if (settings["E_Daycare"]){
								if (vars.checkItem("Flashlight", -16415, 33500, 1515)){
									return true;
								}
								if (vars.checkItem("D_Flashlight Upgrade", -17345, 28290, 1810)){
									return true;
								}
								if (vars.checkItem("Mazercise Control Key", -17450, 31605, 70)){
									return true;
								}
							}
							if (settings["E_El Chips"]){
								if (vars.checkItem("Monty Fizzy Faz", -10055, 34950, 3310)){
									return true;
								}
							}
							if (settings["E_Fazerblast"]){
								if (vars.checkItem("Bowling Pass", 8845, 32755, 1495)){
									return true;
								}
								//Fazerblasters at the start of equipment splits
							}
							if (settings["E_Lobby"]){
								if (vars.checkItem("Chica Fizzy Faz", -3185, 22880, 1515)){
									return true;
								}
								//Daycare Pass at start of equipment splits
								if (vars.checkItem("Entrance Pass", -6235, 22115, 1510)){
									return true;
								}
								if (vars.checkItem("Mr. Hippo Magnet", -3605, 25430, 1515)){
									return true;
								}
								if (vars.checkItem("Screwdriver", 5, 22750, 1515)){
									return true;
								}
							}
							if (settings["E_Main Atrium"]){
								if (vars.checkItem("MA_Freddy Upgrade", 4650, 31285, 1520)){
									return true;
								}
							}
							if (settings["E_Monty Golf"]){
								if (vars.checkItem("Fazcam", -17120, 37515, 1005)){
									return true;
								}
								if (vars.checkItem("MG_Flashlight Upgrade", -15195, 38620, 1005)){
									return true;
								}
								if (vars.checkItem("Mazercise Pass", -17370, 37910, 1005)){
									return true;
								}
								if (vars.checkItem("Monty's Claws", -22020, 44050, 1225)){
									return true;
								}
							}
							if (settings["E_Rockstar Row"]){
								if (vars.checkItem("Fazwatch", 2010, 51390, 1525)){
									return true;
								}
								if (vars.checkItem("Party Pass", -4205, 51730, 1525)){
									return true;
								}
								if (vars.checkItem("Photo Pass", 4885, 48830, 1525)){
									return true;
								}
							}
							if (settings["E_Roxy Raceway"]){
								if (vars.checkItem("Damaged Head", 24180, 44485, 1540)){
									return true;
								}
								if (vars.checkItem("Dance Pass", 17750, 38295, 1545)){
									return true;
								}
								if (vars.checkItem("RR_Freddy Upgrade", 24945, 37950, 1545)){
									return true;
								}
								if (vars.checkItem("Roxy's Eyes", 21010, 50540, 515)){
									return true;
								}
								if (vars.checkItem("Roxy Fizzy Faz", 10840, 43425, 1930)){
									return true;
								}
							}
							if (settings["E_Roxy Salon"]){
								if (vars.checkItem("Shoes", 6380, 47470, 2130)){
									return true;
								}
							}
							if (settings["E_Sewers"]){
								if (vars.checkItem("Chica's Voicebox", 3655, 22970, -3670)){
									return true;
								}
							}
							if (settings["E_Utility Tunnels"]){
								if (vars.checkItem("Pizzaplex Cameras", 5350, 22975, 1505)){
									return true;
								}
							}
							if (settings["E_West Arcade"]){
								if (vars.checkTime("Repaired Head", vars.iRepairedHead, 5, 30)){
									vars.iRepairedHead = false;
									return true;
								}
							}
							if (settings["E_Other"]){
								if (vars.checkTime("6am Party Pass", vars.iPartyPass6am, 6, 0)){
									vars.iPartyPass6am = false;
									return true;
								}
							}
						}
					}
					if (settings["Retro CDs"]){
						if (vars.checkItem("CD_Backstage", -7595, 51270, 1545)){
							return true;
						}
						if (vars.checkItem("CD_Bonnie Bowl", 16910, 31180, 3320)){
							return true;
						}
						if (vars.checkItem("CD_Chica's Bakery", -11245, 46150, 2155)){
							return true;
						}
						if (vars.checkItem("CD_Fazerblast", 8150, 35555, 1500)){
							return true;
						}
						if (vars.checkItem("CD_Kids Cove", -9060, 35820, 1530)){
							return true;
						}
						if (vars.checkItem("CD_Main Atrium", -1690, 36955, 1435)){
							return true;
						}
						if (vars.checkItem("CD_Mazercise", -8710, 41090, 3320)){
							return true;
						}
						if (vars.checkItem("CD_Monty Golf", -20155, 44645, 1575)){
							return true;
						}
						if (vars.checkItem("CD_Rockstar Row Foxy", 360, 49320, 1570)){
							return true;
						}
						if (vars.checkItem("CD_Rockstar Row Helpy", 4195, 45305, 1525)){
							return true;
						}
						if (vars.checkItem("CD_Roxy Raceway", 12765, 48005, 1545)){
							return true;
						}
						if (vars.checkItem("CD_Roxy Salon", 8025, 44675, 2205)){
							return true;
						}
						if (vars.checkItem("CD_Utility Tunnels Couch", 4475, 32800, 70)){
							return true;
						}
						if (vars.checkItem("CD_Utility Tunnels Foxy Plush", 5805, 42930, -660)){
							return true;
						}
						if (vars.checkItem("CD_West Atrium Stage", -8325, 41485, 1520)){
							return true;
						}
						if (vars.checkItem("CD_West Arcade", 10910, 24441, 3360)){
							return true;
						}
					}
				}
			}
			if (current.securityBadgeCount > old.securityBadgeCount){
				if (settings["Security Badges"]){
					if (settings["Security Badge " + current.securityBadgeCount]){
						print("Security Badge " + current.securityBadgeCount);
						return true;
					}
				}
			}
		}
		if (settings["Positional Splits"]){
			if (vars.checkPosition("Chica's Bathroom", vars.pChicaBath, 5100, 5250, 33500, 34200, 0, 300)){
				vars.pChicaBath = false;
				return true;
			}
			if (vars.checkPosition("Enter Bonnie Bowl", vars.pEnBonnieBowl, 5900, 6260, 32000, 42000, 32000, 3700)){
				vars.pEnBonnieBowl = false;
				return true;
			}
			if (vars.checkPosition("Enter El Chips", vars.pEnElChips, -8700, -8445, 34600, 35700, 3200, 3700)){
				vars.pEnElChips = false;
				return true;
			}
			if (vars.checkPositionSlant("Enter West Arcade", vars.pEnWestArcade, 5423.8, 28282.9, 5218.5, 28137.5, 5500, 28000, 2000, 2500)){
				vars.pEnWestArcade = false;
				vars.pExWestArcade = true;
				return true;
			}
			if (vars.checkPositionSlant("Exit Afton Elevator", vars.pAftonElev, 24027.2, 49603.9, 24166.6, 50010.0, 24200, 49600, -6100, -5500)){
				vars.pAftonElev = false;
				return true;
			}
			if (vars.checkPositionSlant("Exit West Arcade", vars.pExWestArcade, 4708.4, 29906.8, 4913.7, 30052.4, 4600, 30200, 3200, 3700)){
				vars.pExWestArcade = false;
				return true;
			}
			if (vars.checkPosition("Fazerblast Spiral Stairs", vars.pFazerStairs, 13100, 14600, 31830, 33330, 350, 750)){
				vars.pFazerStairs = false;
				return true;
			}
			if (vars.checkPosition("First Aid Vanessa Cutscene", vars.pFirstAid, 4368, 4370, 45006, 45008, -1307, -1305)){
				vars.pFirstAid = false;
				return true;
			}
			if (vars.checkPosition("Freddy Stairs Rail", vars.pFredRail, 2250, 2850, 46900, 47500, 400, 900)){
				vars.pFredRail = false;
				return true;
			}
			if (vars.checkPosition("Monty Chase", vars.pMontyChase, 2900, 3400, 29500, 29898.825, 0, 300)){
				vars.pMontyChase = false;
				return true;
			}
			if (vars.checkPosition("Rail Outside Fazerblast", vars.pFazerRail, 6800, 7550, 35586, 35637.4, 1500, 2150)){
				vars.pFazerRail = false;
				return true;
			}
			if (vars.checkPosition("STR-ATR-W Stairs", vars.pSTRATRW, 5400, 6000, 37500, 38000, -1230, -1150)){
				vars.pSTRATRW = false;
				return true;
			}
			if (vars.checkPosition("STR-LB Stairs", vars.pSTRLB, 5000, 6000, 24500, 25000, 150, 400)){
				vars.pSTRLB = false;
				return true;
			}
		}
		if (settings["Time Splits"]){
			if (current.hourTimer != old.hourTimer || current.minuteTimer != old.minuteTimer){
				if (vars.checkTime("Exit Vents", vars.tVents, -1, 30)){
					vars.tVents = false;
					return true;
				}
				if (vars.checkTime("Freddy Eye Repair", vars.tRepair, 5, 50)){
					vars.tRepair = false;
					return true;
				}
			}
		}
	}
}