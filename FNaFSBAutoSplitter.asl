//Five Nights at Freddy's: Security Breach | v1.0.0
//Autosplitter created by Daltone#2617 and NintenDude#0447

// Cheat engine pointer to variable:
// https://js.do/code/674461

// Roxy P&S elevator warp
// xr = -759.5329559
// yr = 52935.373045
// zt = 2654.88693
// x2 = 2(xr) - x1
// y2 = 2(yr) - y1
// z2 = zt + z1

//~700u/s max character speed
//~225u collection range
//~1.5s collection
//present range ~= 1275u (minimum 1250u)
//item range <-> item pickup, d=1825u
state("fnaf9-Win64-Shipping", "v1.04"){
	// Used to pause the timer (pause = 3, menu = 0).
 	int pause: 0x0441C584;
	int menu: 0x0441EB78, 0xB4;


	

		// Elevator pointers (elevator not in motion = 1, elevator in motion = 0).
		int kitElev: 0x0441FCB0, 0x98, 0x7D0, 0x128, 0xA8, 0xB8, 0x2E8;
		int monGElev: 0x0441FCB0, 0x98, 0x808, 0x128, 0xA8, 0x68, 0x2D8, 0x4;
		int foy2Elev: 0x0441FCB0, 0x98, 0x818, 0x128, 0xA8, 0x60, 0x2D8, 0x4;
		int foy1Elev: 0x0441FCB0, 0x98, 0x818, 0x128, 0xA8, 0xB8, 0x2D8, 0x4;
		int bonBElev: 0x0441FCB0, 0x98, 0x828, 0x128, 0xA8, 0x58, 0x2D8, 0x4;
		int fazerElev: 0x0441FCB0, 0x98, 0x830, 0x128, 0xA8, 0x50, 0x2E8;
		int WAElev: 0x0441FCB0, 0x98, 0x838, 0x128, 0xA8, 0xB0, 0x2D8, 0x4;
		int roxyElev: 0x0441FCB0, 0x98, 0x848, 0x128, 0xA8, 0x288, 0x2E8;
		int aftonElev: 0x0441FCB0, 0x98, 0x890, 0x128, 0xA8, 0xB8, 0x2D8, 0x4;

	// Keeps track of Freddy's power.
	int freddyPowerCurrent: 0x0441B738, 0x8, 0x10, 0x38, 0xB8;
	int freddyPowerMax: 0x0441B738, 0x8, 0x10, 0x38, 0xBC;

	// Keeps track of items.
	int securityBadgeCount: 0x0441B738, 0x8, 0x10, 0x38, 0xC0;
	int itemCount: 0x0441B738, 0x8, 0x10, 0x38, 0x138;
	int splashScreen: 0x04002230, 0x420, 0xA8, 0x128, 0x328, 0x3DC;

	// Keeps track of when the game has ended (end = 1, else = 0).
	int aftonEnd: 0x0441C5C8, 0x58, 0x388, 0x118, 0x260, 0xD8;
	int vannyEnd: 0x0441C5C8, 0x58, 0x388, 0x118, 0x2D8, 0xD8;
	int fireEnd: 0x0441C5C8, 0x58, 0x388, 0x118, 0x318, 0xD8;
	int carEnd: 0x0441C5C8, 0x58, 0x388, 0x118, 0x358, 0xD8;
	int escEnd: 0x0441C5C8, 0x58, 0x388, 0x118, 0x398, 0xD8;
	int pqEnd: 0x0441C5C8, 0x58, 0x388, 0x118, 0x3D8, 0xD8;

	// Keeps count of the time.
	int hourTimer: 0x04409AF0, 0x30, 0x670, 0x230, 0x258;
	int minuteTimer: 0x04409AF0, 0x30, 0x670, 0x230, 0x25C;

	// Player information.
	float posX: 0x0441C570, 0x10, 0x120, 0x128, 0x318, 0x138, 0x1D0;
	float posY: 0x0441C570, 0x10, 0x120, 0x128, 0x318, 0x138, 0x1D4;
	float posZ: 0x0441C570, 0x10, 0x120, 0x128, 0x318, 0x138, 0x1D8;

	// Afton's Health (starts at 750, -100 per button)
	float aftonHealth: 0x042DCC78, 0xF50, 0x0, 0xAD0, 0xA0, 0xE8, 0x258, 0x800;

	// Counter Pointers.
	int FBFlags: 0x03FF7308, 0x230, 0x8, 0x2C8, 0x3A0, 0x28, 0x30, 0x290;
	int DCGens: 0x0441C5C8, 0x50, 0x98, 0x40, 0x128, 0xA8, 0x50, 0x53C;
	int MGBucket: 0x0441FCB0, 0x98, 0x70, 0x128, 0x98, 0x490, 0x228, 0x158;
}

startup {
	settings.CurrentDefaultParent = null;
	settings.Add("Splits", false);
	settings.Add("Timer Settings", true);

	settings.CurrentDefaultParent = "Splits";
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

	settings.CurrentDefaultParent = "Daycare Generators";
        settings.Add("Generator 1", false);
        settings.Add("Generator 2", false);
        settings.Add("Generator 3", false);
        settings.Add("Generator 4", false);
        settings.Add("Generator 5", false);

	settings.CurrentDefaultParent = "Fazerblast Flags";
        settings.Add("Flag 1", false);
        settings.Add("Flag 2", false);
        settings.Add("Flag 3", false);

	settings.CurrentDefaultParent = "Monty Bucket Count";
        settings.Add("10 Balls", false);
        settings.Add("20 Balls", false);
        settings.Add("25 Balls", false);

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
	settings.Add("PQ 1", false);
	settings.Add("PQ 2", false);
	settings.Add("PQ 3 / End", false);

	settings.CurrentDefaultParent = "Item Splits";
	settings.Add("Item List", false);
	settings.Add("Security Badges", false);
	
	settings.CurrentDefaultParent = "Item List";
	settings.Add("Collectables", false);
	settings.Add("Equipment", false);
	settings.Add("Upgrades", false);

	settings.CurrentDefaultParent = "Collectables";
	settings.Add("C_Backstage", false, "Backstage");
	settings.Add("C_Bonnie Bowl", false, "Bonnie Bowl");
	settings.Add("C_Chica Shop", false, "Chica Shop");
	settings.Add("C_Daycare", false, "Daycare");
	settings.Add("C_East Atrium", false, "East Atrium");
	settings.Add("C_El Chips", false, "El Chips");
	settings.Add("C_Fazerblast", false, "Fazerblast");
	settings.Add("C_Kitchen", false, "Kitchen");
	settings.Add("C_Lobby", false, "Lobby");
	settings.Add("C_Main Atrium", false, "Main Atrium");
	settings.Add("C_Monty Golf", false, "Monty Golf");
	settings.Add("C_Parts & Service", false, "Parts & Service");
	settings.Add("C_Prize Counter", false, "Prize Counter");
	settings.Add("C_Rockstar Row", false, "Rockstar Row");
	settings.Add("C_Sewers", false, "Sewers");
	settings.Add("C_Utility Tunnels", false, "Utility Tunnels");
	settings.Add("C_West Atrium", false, "West Atrium");

	settings.CurrentDefaultParent = "Equipment";
	settings.Add("E_Backstage", false, "Backstage");
	settings.Add("E_Bonnie Bowl", false, "Bonnie Bowl");
	settings.Add("E_Chica Shop", false, "Chica Shop");
	settings.Add("E_Daycare", false, "Daycare");
	settings.Add("E_East Atrium", false, "East Atrium");
	settings.Add("E_El Chips", false, "El Chips");
	settings.Add("E_Fazerblast", false, "Fazerblast");
	settings.Add("E_Kitchen", false, "Kitchen");
	settings.Add("E_Lobby", false, "Lobby");
	settings.Add("E_Main Atrium", false, "Main Atrium");
	settings.Add("E_Monty Golf", false, "Monty Golf");
	settings.Add("E_Parts & Service", false, "Parts & Service");
	settings.Add("E_Prize Counter", false, "Prize Counter");
	settings.Add("E_Rockstar Row", false, "Rockstar Row");
	settings.Add("E_Sewers", false, "Sewers");
	settings.Add("E_Utility Tunnels", false, "Utility Tunnels");
	settings.Add("E_West Atrium", false, "West Atrium");

	settings.CurrentDefaultParent = "E_Rockstar Row";
	settings.Add("Fazwatch", false);

	settings.CurrentDefaultParent = "Upgrades";
	settings.Add("U_Backstage", false, "Backstage");
	settings.Add("U_Bonnie Bowl", false, "Bonnie Bowl");
	settings.Add("U_Chica Shop", false, "Chica Shop");
	settings.Add("U_Daycare", false, "Daycare");
	settings.Add("U_East Atrium", false, "East Atrium");
	settings.Add("U_El Chips", false, "El Chips");
	settings.Add("U_Fazerblast", false, "Fazerblast");
	settings.Add("U_Kitchen", false, "Kitchen");
	settings.Add("U_Lobby", false, "Lobby");
	settings.Add("U_Main Atrium", false, "Main Atrium");
	settings.Add("U_Monty Golf", false, "Monty Golf");
	settings.Add("U_Parts & Service", false, "Parts & Service");
	settings.Add("U_Prize Counter", false, "Prize Counter");
	settings.Add("U_Rockstar Row", false, "Rockstar Row");
	settings.Add("U_Sewers", false, "Sewers");
	settings.Add("U_Utility Tunnels", false, "Utility Tunnels");
	settings.Add("U_West Atrium", false, "West Atrium");
	
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
	settings.Add("Damaged Head", false);
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
	settings.Add("Foyer Elevators", true);
	settings.Add("Kitchen Elevator", true);
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

	settings.CurrentDefaultParent = "Foyer Elevators";
	settings.Add("FE_EUOE", true, "Every Use Of Elevator");
	settings.Add("FE_POOU", false, "Pause Only On Use:");

	settings.CurrentDefaultParent = "FE_POOU";
	settings.Add("FEn1", false, "#1");
	settings.Add("FEn2", false, "#2");
	settings.Add("FEn3", false, "#3");
	settings.Add("FEn4", false, "#4");
	settings.Add("FEn5", false, "#5");

	settings.CurrentDefaultParent = "Kitchen Elevator";
	settings.Add("KE_EUOE", true, "Every Use Of Elevator");
	settings.Add("KE_POOU", false, "Pause Only On Use:");

	settings.CurrentDefaultParent = "KE_POOU";
	settings.Add("Kn1", false, "#1");
	settings.Add("Kn2", false, "#2");
	settings.Add("Kn3", false, "#3");
	settings.Add("Kn4", false, "#4");
	settings.Add("Kn5", false, "#5");

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
}

init {
	// Sets the version of the game upon startup.
	vars.versionSize = modules.First().ModuleMemorySize;

	//1.04: 76210176
	//1.05: 
	//1.11: 

	if (vars.versionSize == 76210176){
		version = "v1.04";
	}

	// Used to keep certain splits from repeating.
	
	// Deload splits.
	vars.dBalloon = true;
	vars.dCurtain = true;
	vars.dDaycareArcade = true;
	vars.dDaycareTheatre = true;
	vars.dRoxyEyes = true;
	vars.dPlant = true;
	
	// Ending splits.
	vars.ePQ1 = true;
	vars.ePQ2 = true;

	// Positional splits.
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

	// Timer splits.
	vars.tHead = true;
	vars.tVents = true;
	vars.tRepair = true;

	// Pausing.
	vars.nAElev = 0;
	vars.nBBElev = 0;
	vars.nFBElev = 0;
	vars.nFElev = 0;
	vars.nKElev = 0;
	vars.nMGElev = 0;
	vars.nRGElev = 0;
	vars.nWAElev = 0;

	// Functions.
	vars.checkItem = (Func<double, double, double, bool>)((x, y, z) => {
		print("CheckItem");
		if (Math.Pow(current.posX - x, 2) + Math.Pow(current.posY - y, 2) + Math.Pow(current.posZ - z, 2) <= Math.Pow(400, 2)){
			return true;
		}
		return false;
	});
	vars.checkPosition = (Func<double, double, double, double, double, double, bool>)((xLB, xUB, yLB, yUB, zLB, zUB) => {
		if (xLB <= current.posX && current.posX <= xUB && yLB <= current.posY && current.posY <= yUB && zLB <= current.posZ && current.posZ <= zUB){
			return true;
		}
		return false;
	});
	vars.checkPositionSlant = (Func<double, double, double, double, double, double, double, double, bool>)((x1, y1, x2, y2, xB, yB, zLB, zUB) => {
		double slope = (y1 - y2) / (x1 - x2);
		if (zLB <= current.posZ && current.posZ <= zUB){
			if (yB - y1 < slope * (xB - x1) && current.posX <= xB && current.posY >= yB){
				if (current.posY - y1 < slope * (current.posX - x1)){
					return true;
				}
			}
			if (yB - y1 >= slope * (xB - x1) && current.posX >= xB && current.posY <= yB){
				if (current.posY - y1 >= slope * (current.posX - x1)){
					return true;
				}
			}
		}
		return false;
	});
	vars.checkTime = (Func<int, int, bool>)((hour, minute) => {
		if (hour == current.hourTimer && minute == current.minuteTimer){
			return true;
		}
		return false;
	});
}

start {
	// Start condition (Freddy power).
	return (current.freddyPowerCurrent == 30 && old.freddyPowerCurrent == 100);
}

isLoading {
	if (current.aftonElev == 1 && old.aftonElev == 0){
		vars.nAElev++;
	}
	if (current.bonBElev == 1 && old.bonBElev == 0){
		vars.nBBElev++;
	}
	if (current.fazerElev == 1 && old.fazerElev == 0){
		vars.nFBElev++;
	}
	if ((current.foy1Elev == 1 && old.foy1Elev == 0) || (current.foy2Elev == 1 && old.foy2Elev == 0)){
		vars.nFElev++;
	}
	if (current.kitElev == 1 && old.kitElev == 0){
		vars.nKElev++;
	}
	if (current.monGElev == 1 && old.monGElev == 0){
		vars.nMGElev++;
	}
	if (current.roxyElev == 1 && old.roxyElev == 0){
		vars.nRGElev++;
	}
	if (current.WAElev == 1 && old.WAElev == 0){
		vars.nWAElev++;
	}

	if (settings["Timer Settings"]){
		if (settings["Elevator Pauses"]){
			if (settings["Afton Elevator"] && current.aftonElev == 1){
				if (settings["AE_EUOE"]){
					print("AElev Every Use");
					return true;
				}
				if (settings["AE_POOU"] && settings["AEn" + vars.nAElev]){
					print("AElev Use #" + vars.nAElev);
					return true;
				}
			}
			if (settings["Bonnie Bowl Elevator"] && current.bonBElev == 1){
				if (settings["BBE_EUOE"]){
					print("BBElev Every Use");
					return true;
				}
				if (settings["BBE_POOU"] && settings["BBEn" + vars.nBBElev]){
					print("BBElev Use #" + vars.nBBElev);
					return true;
				}
			}
			if (settings["Fazerblast Elevator"] && current.fazerElev == 1){
				if (settings["FBE_EUOE"]){
					print("FBElev Every Use");
					return true;
				}
				if (settings["FBE_POOU"] && settings["FBEn" + vars.nFBElev]){
					print("FBElev Use #" + vars.nFBElev);
					return true;
				}
			}
			if (settings["Foyer Elevators"] && (current.foy1Elev == 1 || current.foy2Elev == 1)){
				if (settings["FE_EUOE"]){
					print("FElev Every Use");
					return true;
				}
				if (settings["FE_POOU"] && settings["FEn" + vars.nFElev]){
					print("FElev Use #" + vars.nFElev);
					return true;
				}
			}
			if (settings["Kitchen Elevator"] && current.kitElev == 1){
				if (settings["KE_EUOE"]){
					print("KElev Every Use");
					return true;
				}
				if (settings["KE_POOU"] && settings["KEn" + vars.nKElev]){
					print("KElev Use #" + vars.nKElev);
					return true;
				}
			}
			if (settings["Monty Golf Elevator"] && current.monGElev == 1){
				if (settings["MGE_EUOE"]){
					print("MGElev Every Use");
					return true;
				}
				if (settings["MGE_POOU"] && settings["MGEn" + vars.nMGElev]){
					print("MGElev Use #" + vars.nMGElev);
					return true;
				}
			}
			if (settings["Roxy's Greenroom Elevator"] && current.roxyElev == 1){
				if (settings["RGE_EUOE"]){
					print("RGElev Every Use");
					return true;
				}
				if (settings["RGE_POOU"] && settings["RGEn" + vars.nRGElev]){
					print("RGElev Use #" + vars.nRGElev);
					return true;
				}
			}
			if (settings["West Arcade Elevator"] && current.WAElev == 1){
				if (settings["WAE_EUOE"]){
					print("WAElev Every Use");
					return true;
				}
				if (settings["WAE_POOU"] && settings["WAEn" + vars.nWestArcadeElev]){
					print("WAElev Use #" + vars.nWestArcadeElev);
					return true;
				}
			}
		}
		if (settings["Stop Timer When On Menu"] && current.menu == 0){
			print("Menu");
			return true;
		}
		if (settings["Stop Timer When Paused"] && current.pause == 3){
			print("Paused");
			return true;
		}
	}
	return false;
}

split {
	if (current.hourTimer == -1 && current.minuteTimer == 30 && old.minuteTimer == 0){
		// Used to keep certain splits from repeating (reset).
	
		// Deload splits.
		vars.dBalloon = true;
		vars.dCurtain = true;
		vars.dDaycareArcade = true;
		vars.dDaycareTheatre = true;
		vars.dRoxyEyes = true;
		vars.dPlant = true;
	
		// Ending splits.
		vars.ePQ1 = true;
		vars.ePQ2 = true;

		// Positional splits.
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

		// Timer splits.
		vars.tHead = true;
		vars.tVents = true;
		vars.tRepair = true;

		// Pausing.
		vars.nAElev = 0;
		vars.nBBElev = 0;
		vars.nFBElev = 0;
		vars.nFElev = 0;
		vars.nKElev = 0;
		vars.nMGElev = 0;
		vars.nRGElev = 0;
		vars.nWAElev = 0;

		print("Reset variables");
	}

	if (settings["Splits"]){
		if (settings["Counting Splits"]){
			if (current.DCGens > old.DCGens){
				if (settings["Daycare Generators"]){
					if (settings["Generator " + current.DCGens]){
						print("DCGen " + current.DCGens);
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
		}
		if (settings["Deload Splits"]){
			if (settings["Balloon Deload"] && vars.dBalloon && vars.checkPosition(8300, 9000, 38000, 39000, 2707, 3000)){
				print("Balloon");
				vars.dBalloon = false;
				return true;
			}
			if (settings["Curtain Deload"] && vars.dCurtain && vars.checkPosition(5150, 5350, 44450, 44650, 1960, 2100)){
				print("Curtain");
				vars.dCurtain = false;
				return true;
			}
			if (settings["Daycare Arcade Deload"] && vars.dDaycareArcade && vars.checkPosition(-13400, -13200, 30000, 31800, 1821.75, 20000)){
				print("Daycare Arcade");
				vars.dDaycareArcade = false;
				return true;
			}
			if (settings["Daycare Theatre Deload"] && vars.dDaycareTheatre && vars.checkPosition(-20000, -19500, 32377.5, 34800, 2516, 2600)){
				print("Daycare Theatre");
				vars.dDaycareTheatre = false;
				return true;
			}
			if (settings["Roxy's Eye Deload"] && vars.dRoxyEyes && vars.checkPosition(18500, 21500, 51800, 52400, 0, 450)){
				print("Eye Deload");
				vars.dRoxyEyes = false;
				return true;
			}
			if (settings["Roxy Salon Deload"] && vars.dPlant && vars.checkPosition(10345, 10500, 41000, 42500, 2100, 2800)){
				print("Salon Deload");
				vars.dPlant = false;
				return true;
			}
		}
		if (settings["Ending Splits"]){
			if (current.aftonHealth < old.aftonHealth){
				if (settings["Afton Ending"]){
					if (settings["Button " + ((750 - current.aftonHealth) / 100)]){
						print("Button " + ((750 - current.aftonHealth) / 100));
						return true;
					}
				}
				if (settings["Button 8 / End"] && current.aftonEnd == 1 && old.aftonEnd == 0){
					print("Button 8");
					return true;
				}
			}
			if (settings["Car Battery Ending"] && current.carEnd == 1 && old.carEnd == 0){
				print("Car Ending");
				return true;
			}
			if (settings["Escape Ending"] && current.escEnd == 1 && old.escEnd == 0){
				print("Escape Ending");
				return true;
			}
			if (settings["Fire Escape Ending"] && current.fireEnd == 1 && old.fireEnd == 0){
				print("Fire Escape Ending");
				return true;
			}
			if (settings["Princess Quest Ending"]){
				if (settings["PQ 1"] && vars.ePQ1 && vars.checkPosition(7000, 8500, 46500, 48000, -10000, 10000) && old.posY == 0){
					print("PQ1");
					vars.ePQ1 = false;
					return true;
				}
				if (settings["PQ 2"] && vars.ePQ2 && vars.checkPosition(7500, 9000, 20500, 21000, -10000, 10000) && old.posY == 0){
					print("PQ2");
					vars.ePQ2 = false;
					return true;
				}
				if (settings["PQ 3 / End"] && current.pqEnd == 1 && old.pqEnd == 0){
					print("PQ3 End");
					return true;
				}
			}
			if (settings["Vanny Ending"] && current.vannyEnd == 1 && old.vannyEnd == 0){
				print("Vanny End");
				return true;
			}
		}
		if (settings["Item Splits"]){
			if (current.splashScreen == 4 && old.splashScreen == 0){
				if (settings["Item List"]){
					if (settings["Collectables"]){
						
					}
					if (settings["Equipment"]){
						if (settings["E_Rockstar Row"]){
							if (settings["Fazwatch"] && vars.checkItem(2010, 51390, 1640)){
								print("Fazwatch");
								return true;
							}
						}
					}
					if (settings["Upgrades"]){
						
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
			if (settings["Chica's Bathroom"] && vars.pChicaBath && vars.checkPosition(5100, 5250, 33500, 34200, 0, 300)){
				print("Chica Bathroom");
				vars.pChicaBath = false;
				return true;
			}
			if (settings["Enter Bonnie Bowl"] && vars.pEnBonnieBowl && vars.checkPosition(5900, 6260, 32000, 42000, 32000, 3700)){
				print("Bonnie Bowl");
				vars.pEnBonnieBowl = false;
				return true;
			}
			if (settings["Enter El Chips"] && vars.pEnElChips && vars.checkPosition(-8700, -8445, 34600, 35700, 3200, 3700)){
				print("El Chips");
				vars.pEnElChips = false;
				return true;
			}
			if (settings["Enter West Arcade"] && vars.pEnWestArcade && vars.checkPositionSlant(5423.8, 28282.9, 5218.5, 28137.5, 5500, 28000, 2000, 2500)){
				print("EnA");
				vars.pEnWestArcade = false;
				vars.pExWestArcade = true;
				return true;
			}
			if (settings["Exit Afton Elevator"] && vars.pAftonElev && vars.checkPositionSlant(24027.2, 49603.9, 24166.6, 50010.0, 24200, 49600, -6100, -5500)){
				print("Afton Elevator");
				vars.pAftonElev = false;
				return true;
			}
			if (settings["Exit West Arcade"] && vars.pExWestArcade && vars.checkPositionSlant(4708.4, 29906.8, 4913.7, 30052.4, 4600, 30200, 3200, 3700)){
				print("ExA");
				vars.pExWestArcade = false;
				return true;
			}
			if (settings["Fazerblast Spiral Stairs"] && vars.pFazerStairs && vars.checkPosition(13100, 14600, 31830, 33330, 350, 750)){
				print("Spiral");
				vars.pFazerStairs = false;
				return true;
			}
			if (settings["First Aid Vanessa Cutscene"] && vars.pFirstAid && vars.checkPosition(4368, 4370, 45006, 45008, -1307, -1305)){
				print("FA Vanessa");
				vars.pFirstAid = false;
				return true;
			}
			if (settings["Freddy Stairs Rail"] && vars.pFredRail && vars.checkPosition(2250, 2850, 46900, 47500, 400, 900)){
				print("FredRail");
				vars.pFredRail = false;
				return true;
			}
			if (settings["Monty Chase"] && vars.pMontyChase && vars.checkPosition(2900, 3400, 29500, 29898.825, 0, 300)){
				print("Monty Chase");
				vars.pMontyChase = false;
				return true;
			}
			if (settings["Rail Outside Fazerblast"] && vars.pFazerRail && vars.checkPosition(6800, 7550, 35586, 35637.4, 1500, 2150)){
				print("Rail");
				vars.pFazerRail = false;
				return true;
			}
			if (settings["STR-ATR-W Stairs"] && vars.pSTRATRW && vars.checkPosition(5400, 6000, 37500, 38000, -1230, -1150)){
				print("STRATRW Stairs");
				vars.pSTRATRW = false;
				return true;
			}
			if (settings["STR-LB Stairs"] && vars.pSTRLB && vars.checkPosition(5000, 6000, 24500, 25000, 150, 400)){
				print("STRLB");
				vars.pSTRLB = false;
				return true;
			}
		}
		if (settings["Time Splits"]){
			if (current.hourTimer != old.hourTimer || current.minuteTimer != old.minuteTimer){
				if (settings["Damaged Head"] && vars.tHead && vars.checkTime(5, 15)){
					print("Head");
					vars.tHead = false;
					return true;
				}
				if (settings["Exit Vents"] && vars.tVents && vars.checkTime(-1, 30)){
					print("Vents");
					vars.tVents = false;
					return true;
				}
				if (settings["Freddy Eye Repair"]  && vars.tRepair && vars.checkTime(5, 50)){
					print("Repair");
					vars.tRepair = false;
					return true;
				}
			}
		}
	}
}