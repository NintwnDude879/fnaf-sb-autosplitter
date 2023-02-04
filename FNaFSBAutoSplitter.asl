//Five Nights at Freddy's: Security Breach | v1.3.0
//Autosplitter created by Daltone#2617 and NintenDude#0447

//Original autosplitter created by patrogue#4071
//Special thanks to CheatingMuppet and Cheat The Game for making tutorials and helping us understand how to use Cheat Engine

state("fnaf9-Win64-Shipping"){}

startup {
	//setting names
	vars.elevatorNames = new List<string>(){
		{"Afton Elevator"},
		{"Basement Kitchen Elevator"},
		{"Bonnie Bowl Elevator"},
		{"Chica's Greenroom Elevator"},
		{"Fazerblast Elevator"},
		{"Freddy's Greenroom Elevator"},
		{"Lobby Elevators"},
		{"Monty Golf Elevator"},
		{"Monty's Greenroom Elevator"},
		{"Roxy's Greenroom Elevator"},
		{"West Arcade Elevator"},
	};

	//print settings
	settings.CurrentDefaultParent = null;
	settings.Add("Split Settings", false);
	settings.Add("In-Game Time Settings", true);

	settings.CurrentDefaultParent = "Split Settings";
	settings.Add("Arcade Splits", false);
	settings.Add("Counting Splits", false);
	settings.Add("Deload Splits", false);
	settings.Add("Ending Splits", false);
	settings.Add("Item Splits", false);
	settings.Add("Positional Splits", false);
	settings.Add("Time Splits", false);

	settings.CurrentDefaultParent = "Arcade Splits";
	settings.Add("BB Arcade", false);
	settings.Add("Monty Golf", false);
	settings.Add("Princess Quest", false);

	settings.CurrentDefaultParent = "BB Arcade";
	settings.Add("bb_start", false, "Start Arcade");

	settings.CurrentDefaultParent = "Monty Golf";
	settings.Add("mg_start", false, "Start Arcade");
	settings.Add("Finish Hole 1", false);
	settings.Add("Finish Hole 2", false);
	settings.Add("Finish Hole 3", false);
	settings.Add("Finish Hole 4", false);
	settings.Add("Finish Hole 5", false);
	settings.Add("Finish Hole 6", false);
	settings.Add("Finish Hole 7", false);
	settings.Add("Finish Hole 8", false);
	settings.Add("Finish Hole 9", false);

	settings.CurrentDefaultParent = "Princess Quest";
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
	settings.Add("pq3_endArcade", false, "Use Key");

	settings.CurrentDefaultParent = "Counting Splits";
	settings.Add("Daycare Generators", false);
	settings.Add("Fazerblast Flags", false);
	settings.Add("Monty Bucket Count", false);
	settings.Add("Sewer Generators", false);
	settings.Add("West Arcade Generators", false);

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

	settings.CurrentDefaultParent = "West Arcade Generators";
	settings.Add("WA_Generator 1", false, "Generator 1");
	settings.Add("WA_Generator 2", false, "Generator 2");
	settings.Add("WA_Generator 3", false, "Generator 3");
	settings.Add("WA_Generator 4", false, "Generator 4");
	settings.Add("WA_Generator 5", false, "Generator 5");

	settings.CurrentDefaultParent = "Deload Splits";
	settings.Add("D_Backstage", false, "Backstage");
	settings.Add("D_Daycare", false, "Daycare");
	settings.Add("D_Kid's Cove Sublobby", false, "Kid's Cove Sublobby");
	settings.Add("D_Monty Golf Sublobby", false, "Monty Golf Sublobby");
	settings.Add("D_Prize Counter", false, "Prize Counter");
	settings.Add("D_Rockstar Row", false, "Rockstar Row");
	settings.Add("D_Roxy Raceway", false, "Roxy Raceway");
	settings.Add("D_Roxy Raceway Sublobby", false, "Roxy Raceway Sublobby");
	settings.Add("D_Roxy Salon", false, "Roxy Salon");

	settings.CurrentDefaultParent = "D_Backstage";
	settings.Add("Foxy Cutout Deload", false);

	settings.CurrentDefaultParent = "D_Daycare";
	settings.Add("Arcade Deload", false);
	settings.Add("Theatre Deload", false);

	settings.CurrentDefaultParent = "D_Kid's Cove Sublobby";
	settings.Add("KCD_Fence Deload", false, "Fence Deload");

	settings.CurrentDefaultParent = "D_Monty Golf Sublobby";
	settings.Add("MGD_Fence Deload", false, "Fence Deload");

	settings.CurrentDefaultParent = "D_Prize Counter";
	settings.Add("Counter Deload", false);

	settings.CurrentDefaultParent = "D_Rockstar Row";
	settings.Add("Chica Greenroom Deload", false);
	settings.Add("Curtain Deload", false);
	settings.Add("Roxy Cutout Deload", false);
	settings.Add("Tunnel Door Deload", false);

	settings.CurrentDefaultParent = "D_Roxy Raceway";
	settings.Add("Afton Rock Column Deload", false);
	settings.Add("Garage Fence Jump", false);
	settings.Add("Roxy's Eyes Deload", false);

	settings.CurrentDefaultParent = "D_Roxy Raceway Sublobby";
	settings.Add("Balloon Deload", false);

	settings.CurrentDefaultParent = "D_Roxy Salon";
	settings.Add("Plant Deload", false);

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

	settings.CurrentDefaultParent = "Vanny Ending";
	settings.Add("V_B", false, "Press Ending Button");
	settings.Add("V_C", false, "Cutscene");

	settings.CurrentDefaultParent = "Car Battery Ending";
	settings.Add("CB_B", false, "'Leave' Button");
	settings.Add("CB_C", false, "Cutscene");

	settings.CurrentDefaultParent = "Escape Ending";
	settings.Add("E_B", false, "'Leave' Button");
	settings.Add("E_C", false, "Cutscene");

	settings.CurrentDefaultParent = "Fire Escape Ending";
	settings.Add("F_B", false, "'Leave' Button");
	settings.Add("F_C", false, "Cutscene");

	settings.CurrentDefaultParent = "Princess Quest Ending";
	settings.Add("pq3_endEndings", false, "Use Key");
	settings.Add("pq_endCutscene", false, "End Cutscene");

	settings.CurrentDefaultParent = "Item Splits";
	settings.Add("Item List", false);
	settings.Add("Security Badges", false);
	
	settings.CurrentDefaultParent = "Item List";
	settings.Add("Collectables", false);
	settings.Add("Equipment", false);
	settings.Add("Message Bags", false);
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
	settings.Add("C_Kid's Cove Sublobby", false, "Kid's Cove Sublobby");
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

	settings.CurrentDefaultParent = "C_Kid's Cove Sublobby";
	settings.Add("Golden Sun", false);
	settings.Add("Moon Plush", false);

	settings.CurrentDefaultParent = "C_Laundry";
	settings.Add("Glam Roxy Plush", false);
	settings.Add("L_Old Poster", false, "Old Poster");
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
	settings.Add("MA_Mapbot's Map", false, "Mapbot's Map");

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
	settings.Add("UT_Mapbot's Map", false, "Mapbot's Map");
	settings.Add("Pizzaplex Cameras", false);

	settings.CurrentDefaultParent = "E_West Arcade";
	settings.Add("Repaired Head", false);
	
	settings.CurrentDefaultParent = "Message Bags";
	settings.Add("AC Inspection", false);
	settings.Add("All Staff Meeting", false);
	settings.Add("AR-CADE MAINT LOG", false);
	settings.Add("ARCADE CONSPIRACY", false);
	settings.Add("BBW MAINT LOG", false);
	settings.Add("BEHIND THE MAZE", false);
	settings.Add("BETTER EMPLOYEES", false);
	settings.Add("CFF MAINT LOG", false);
	settings.Add("Chasing Cars", false);
	settings.Add("CHICA REPORT", false);
	settings.Add("CHICA UPGRADE", false);
	settings.Add("COMPACTOR INSTRUCTIONS", false);
	settings.Add("Drink Fizzy Faz!!!", false);
	settings.Add("Easy Money", false);
	settings.Add("False Alarm", false);
	settings.Add("Food Storage", false);
	settings.Add("HI DAVE", false);
	settings.Add("Hide the Mix", false);
	settings.Add("IT IS HAPPENING AGAIN", false);
	settings.Add("Job Security", false);
	settings.Add("MARKED FOR DELETION", false);
	settings.Add("MISSING", false);
	settings.Add("Monty Mischief", false);
	settings.Add("MONTY UPGRADE", false);
	settings.Add("NIGHT SHIFT", false);
	settings.Add("Night Terrors", false);
	settings.Add("No Flash Photography", false);
	settings.Add("NO QUESTIONS ASKED", false);
	settings.Add("OLD ELEVATOR", false);
	settings.Add("OUT OF ORDER", false);
	settings.Add("Party Foul", false);
	settings.Add("PINK SLIP", false);
	settings.Add("POWER DRAIN", false);
	settings.Add("PQ1 MAINT LOG", false);
	settings.Add("PQ2 MAINT LOG", false);
	settings.Add("QUESTION", false);
	settings.Add("Re-Theme", false);
	settings.Add("RECYCLED PIZZA?", false);
	settings.Add("RED FLAG", false);
	settings.Add("ROXY UPGRADE", false);
	settings.Add("SAFETY CHECK", false);
	settings.Add("SINKHOLE", false);
	settings.Add("SORE WINNER", false);
	settings.Add("Stolen Property", false);
	settings.Add("TEST DRIVERS WANTED", false);
	settings.Add("THE ANSWER", false);
	settings.Add("TORN PAPER", false);
	settings.Add("ULTIMATE PARTY HOST", false);
	settings.Add("Understudy", false);

	settings.CurrentDefaultParent = "Retro CDs";
	settings.Add("CD_Backstage Podium", false, "Backstage");
	settings.Add("CD_Bonnie Bowl", false, "Bonnie Bowl");
	settings.Add("CD_Chica's Bakery", false, "Chica's Bakery");
	settings.Add("CD_East Atrium Stage", false, "East Atrium Stage");
	settings.Add("CD_Fazerblast", false, "Fazerblast");
	settings.Add("CD_Kid's Cove", false, "Kid's Cove");
	settings.Add("CD_Main Atrium", false, "Main Atrium");
	settings.Add("CD_Mazercise", false, "Mazercise");
	settings.Add("CD_Monty Golf", false, "Monty Golf");
	settings.Add("CD_Rockstar Row Foxy", false, "Rockstar Row Foxy");
	settings.Add("CD_Rockstar Row Helpy", false, "Rockstar Row Helpy");
	settings.Add("CD_Roxy Raceway", false, "Roxy Raceway");
	settings.Add("CD_Roxy Salon", false, "Roxy Salon");
	settings.Add("CD_Utility Tunnels Couch", false, "Utility Tunnels Couch");
	settings.Add("CD_Utility Tunnels Foxy Plush", false, "Utility Tunnels Foxy Plush");
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
	settings.Add("P_Bonnie Bowl", false, "Bonnie Bowl");
	settings.Add("P_Daycare", false, "Daycare");
	settings.Add("P_El Chips", false, "El Chips");
	settings.Add("P_Fazerblast", false, "Fazerblast");
	settings.Add("P_Fazerblast Sublobby", false, "Fazerblast Sublobby");
	settings.Add("P_Underground Afton Cave", false, "Underground Afton Cave");
	settings.Add("P_Utility Tunnels", false, "Utility Tunnels");
	settings.Add("P_West Arcade", false, "West Arcade");

	settings.CurrentDefaultParent = "P_Bonnie Bowl";
	settings.Add("Enter Bonnie Bowl", false);

	settings.CurrentDefaultParent = "P_Daycare";
	settings.Add("Enter Daycare", false);

	settings.CurrentDefaultParent = "P_El Chips";
	settings.Add("Enter El Chips", false);

	settings.CurrentDefaultParent = "P_Fazerblast";
	settings.Add("Fazerblast Spiral Stairs", false);

	settings.CurrentDefaultParent = "P_Fazerblast Sublobby";
	settings.Add("Rail Outside Fazerblast", false);

	settings.CurrentDefaultParent = "P_Underground Afton Cave";
	settings.Add("Exit Afton Elevator", false);

	settings.CurrentDefaultParent = "P_Utility Tunnels";
	settings.Add("First Aid Vanessa Cutscene", false);
	settings.Add("Freddy Rail Jump", false);
	settings.Add("Monty Chase", false);
	settings.Add("STR-ATR-W Stairs", false);
	settings.Add("STR-LB Stairs", false);

	settings.CurrentDefaultParent = "P_West Arcade";
	settings.Add("Enter West Arcade", false);
	settings.Add("Exit West Arcade", false);

	settings.CurrentDefaultParent = "Time Splits";
	settings.Add("Exit Vents (11:30PM)", false);
	settings.Add("Freddy Recharge (11:45PM)", false);
	settings.Add("Front Entrance Closure (12:00AM)", false);
	settings.Add("Enter Daycare (12:30AM)", false);
	settings.Add("Daycare Nighttime (12:55AM)", false);
	settings.Add("Daycare Vanny Cutscene (1:00AM)", false);
	settings.Add("Mini Music Man Chase (1:15AM)", false);
	settings.Add("Pizzabot (1:30AM)", false);
	settings.Add("White Woman Abduction (2:00AM)", false);
	settings.Add("Dead Fred (2:15AM)", false);
	settings.Add("Backstage Pass (2:30AM)", false);
	settings.Add("Use Showtime Disk (2:45AM)", false);
	settings.Add("Freddy Abduction Recharge (3:00AM)", false);
	settings.Add("Vanessa Repair Cutscene (3:15AM)", false);
	settings.Add("Freddy Power Upgrade (3:30AM)", false);
	settings.Add("Party Pass Recharge (4:00AM)", false);
	settings.Add("Golden Fazerblaster (4:15AM)", false);
	settings.Add("Monty Mix / Mazercise Key (4:30AM)", false);
	settings.Add("Leave Sewers (4:40AM)", false);
	settings.Add("Freddy Upgrade Recharge (5:00AM)", false);
	settings.Add("Damaged Head (5:15AM)", false);
	settings.Add("Repaired Head (5:30AM)", false);
	settings.Add("Finish Roxy Sequence (5:40AM)", false);
	settings.Add("Freddy Eye Upgrade Nighttime (5:50AM)", false);
	settings.Add("Reach Exit Door (6:00AM)", false);

	settings.CurrentDefaultParent = "In-Game Time Settings";
	settings.Add("Elevator Pauses", true);
	settings.Add("Stop Timer On Menu", true);
	settings.Add("Stop Timer When Loading", true);
	settings.Add("Stop Timer When Paused", true);

	foreach (var data in vars.elevatorNames){
		settings.CurrentDefaultParent = "Elevator Pauses";
		settings.Add(data, true);

		settings.CurrentDefaultParent = data;
		settings.Add(data + "_EUOE", true, "Every Use Of Elevator");
		settings.Add(data + "_POOU", false, "Pause Only On Use:");

		settings.CurrentDefaultParent = data + "_POOU";
		var maxUse = 5;
		for (var k = 1; k <= maxUse; k++){
			settings.Add(data + "_n" + k.ToString(), false, "#" + k.ToString());
		}
	}

	settings.CurrentDefaultParent = null;
	settings.Add("Reset Settings", false);

	settings.CurrentDefaultParent = "Reset Settings";
	settings.Add("Reset On New Game", false);
}

init {
	//Sets the version of the game upon startup
	int gameSize = modules.First().ModuleMemorySize;
	refreshRate = 60;

	print("Size = " + gameSize.ToString());
	
	switch (gameSize){
		default: {
			MessageBox.Show("Sorry, it seems like the version of Security Breach that you're using isn't currently supported!\n\nIf this seems like a mistake, or you would like to suggest an additional version to support, please go to https://forms.gle/jxidK6RFToEXzUDe7 or contact either Daltone#2617 or Nintendude#0447 on Discord.\n\nSorry for the inconvenience.", "Error: Version Not Supported", MessageBoxButtons.OK, MessageBoxIcon.Error).ToString();
			vars.version = 0; // Unsupported
			return;
		}

		case 76210176: {
			vars.version = 1.04;
			break;
		}
		
		case 76214272: {
			vars.version = 1.05;
			break;
		}

		case 76218368: {
			vars.version = 1.07;
			break;
		}

		case 76251136: {
			vars.version = 1.11;
			break;
		}
	}

	print("Version = " + vars.version);

	#region sigscanning
	
	vars.GetStaticPointerFromSig = (Func<string, int, IntPtr>) ( (signature, instructionOffset) => {
        var scanner = new SignatureScanner(game, modules.First().BaseAddress, (int)modules.First().ModuleMemorySize);
        var pattern = new SigScanTarget(signature);
        var location = scanner.Scan(pattern);
        if (location == IntPtr.Zero) return IntPtr.Zero;
        int offset = game.ReadValue<int>((IntPtr)location + instructionOffset);
        return (IntPtr)location + offset + instructionOffset + 0x4;
    });

	// Signature scans for base address of UWorld and GEngine
	vars.UWorld = vars.GetStaticPointerFromSig("48 89 0D ?2????02 65 48 8B 04 25 58000000", 0x3);
	vars.GEngine = vars.GetStaticPointerFromSig("48 8B 05 ???????? 48 8B D1 48 8B 88 F8 0A 00 00 48 85 C9 74 07 48 8B 01 48 FF 60 40", 0x3);
    
	if(vars.UWorld == IntPtr.Zero || vars.GEngine == IntPtr.Zero){
        throw new Exception("UWorld/GameEngine not initialized - trying again");
    }

	#endregion

	//This is where the fun begins...

	if (vars.version < 1.11){
		vars.freddyThing = new DeepPointer(vars.UWorld, 0x188, 0xE0, 0x38, 0xB8);
	}
	else {
		vars.freddyThing = new DeepPointer(vars.UWorld, 0x128, 0x310, 0x120, 0x18C);
	}

	if (vars.version < 1.11){
		vars.FBFlags = new DeepPointer(vars.UWorld, 0x98, 0xA8, 0x128, 0xA8, 0x8, 0x3D8, 0x418, 0x290);
		if (vars.version < 1.05){
			vars.MGBucket = new DeepPointer(vars.UWorld, 0x98, 0x70, 0x128, 0xA8, 0xF0, 0x228, 0x158);
		}
		else {
			vars.MGBucket = new DeepPointer(vars.UWorld, 0x98, 0x70, 0x128, 0xA8, 0xE0, 0x228, 0x158);
		}
	}
	else {
		vars.FBFlags = new DeepPointer(vars.UWorld, 0x98, 0xA8, 0x128, 0xA8, 0x8, 0x3E0, 0x418, 0x290);
		vars.MGBucket = new DeepPointer(vars.UWorld, 0x98, 0x70, 0x128, 0xA8, 0x108, 0x228, 0x158);
	}

	//Buttons that start cutscenes (pressed = 0)
	if (vars.version < 1.11){
		vars.vannyEndButton = new DeepPointer(vars.UWorld, 0x98, 0xA0, 0x128, 0xA8, 0x2F8, 0x240);
		if (vars.version < 1.05){
			vars.escapeEndLeaveButtonWest 	= new DeepPointer(vars.UWorld, 0x98, 0x2D0, 0x128, 0xA8, 0x50, 0x3D8, 0x268);
			vars.escapeEndLeaveButtonEast 	= new DeepPointer(vars.UWorld, 0x98, 0x2D0, 0x128, 0xA8, 0x38, 0x3D8, 0x268);
			vars.carEndLeaveButton 			= new DeepPointer(vars.UWorld, 0x98, 0x2D0, 0x128, 0xA8, 0x40, 0x3D8, 0x268);
			vars.fireEndLeaveButton 		= new DeepPointer(vars.UWorld, 0x98, 0x2D0, 0x128, 0xA8, 0x48, 0x3D8, 0x268);
		}
		else if (vars.version = 1.05){
			vars.escapeEndLeaveButtonWest 	= new DeepPointer(vars.UWorld, 0x98, 0x2D0, 0x128, 0xA8, 0x50, 0x3E0, 0x268);
			vars.escapeEndLeaveButtonEast	= new DeepPointer(vars.UWorld, 0x98, 0x2D0, 0x128, 0xA8, 0x38, 0x3E0, 0x268);
			vars.carEndLeaveButton 			= new DeepPointer(vars.UWorld, 0x98, 0x2D0, 0x128, 0xA8, 0x40, 0x3E0, 0x268);
			vars.fireEndLeaveButton 		= new DeepPointer(vars.UWorld, 0x98, 0x2D0, 0x128, 0xA8, 0x48, 0x3E0, 0x268);
		}
		else {
			vars.escapeEndLeaveButtonWest 	= new DeepPointer(vars.UWorld, 0x98, 0x2D0, 0x128, 0xA8, 0x48, 0x3E0, 0x268);
			vars.escapeEndLeaveButtonEast 	= new DeepPointer(vars.UWorld, 0x98, 0x2D0, 0x128, 0xA8, 0x60, 0x3E0, 0x268);
			vars.carEndLeaveButton 			= new DeepPointer(vars.UWorld, 0x98, 0x2D0, 0x128, 0xA8, 0x50, 0x3E0, 0x268);
			vars.fireEndLeaveButton 		= new DeepPointer(vars.UWorld, 0x98, 0x2D0, 0x128, 0xA8, 0x58, 0x3E0, 0x268);
		}
	}
	else {
		vars.vannyEndButton 			= new DeepPointer(vars.UWorld, 0x98, 0xA0, 0x128, 0xA8, 0x308, 0x240);
		vars.escapeEndLeaveButtonWest 	= new DeepPointer(vars.UWorld, 0x98, 0x2C8, 0x128, 0xA8, 0x140, 0x3E0, 0x270);
		vars.escapeEndLeaveButtonEast 	= new DeepPointer(vars.UWorld, 0x98, 0xC80, 0x128, 0xA8, 0x128, 0x3E0, 0x270);
		vars.carEndLeaveButton 			= new DeepPointer(vars.UWorld, 0x98, 0x2C8, 0x128, 0xA8, 0x130, 0x3E0, 0x270);
		vars.fireEndLeaveButton 		= new DeepPointer(vars.UWorld, 0x98, 0x2C8, 0x128, 0xA8, 0x138, 0x3E0, 0x270);
	}

	if (vars.version < 1.05){
		vars.aftonEnd 	= new DeepPointer(vars.GEngine, 0xDE8, 0x388, 0x118, 0x260, 0xD8);
		vars.vannyEnd 	= new DeepPointer(vars.GEngine, 0xDE8, 0x388, 0x118, 0x2D8, 0xD8);
		vars.fireEnd 	= new DeepPointer(vars.GEngine, 0xDE8, 0x388, 0x118, 0x318, 0xD8);
		vars.carEnd 	= new DeepPointer(vars.GEngine, 0xDE8, 0x388, 0x118, 0x358, 0xD8);
		vars.escapeEnd 	= new DeepPointer(vars.GEngine, 0xDE8, 0x388, 0x118, 0x398, 0xD8);
		vars.pqEnd 		= new DeepPointer(vars.GEngine, 0xDE8, 0x388, 0x118, 0x3D8, 0xD8);
	}
	else {
		vars.aftonEnd 	= new DeepPointer(vars.GEngine, 0xDE8, 0x3B0, 0x118, 0x260, 0xD8);
		vars.vannyEnd 	= new DeepPointer(vars.GEngine, 0xDE8, 0x3B0, 0x118, 0x2D8, 0xD8);
		vars.fireEnd 	= new DeepPointer(vars.GEngine, 0xDE8, 0x3B0, 0x118, 0x318, 0xD8);
		vars.carEnd 	= new DeepPointer(vars.GEngine, 0xDE8, 0x3B0, 0x118, 0x358, 0xD8);
		vars.escapeEnd 	= new DeepPointer(vars.GEngine, 0xDE8, 0x3B0, 0x118, 0x398, 0xD8);
		vars.pqEnd 		= new DeepPointer(vars.GEngine, 0xDE8, 0x3B0, 0x118, 0x3D8, 0xD8);
	}

	if (vars.version < 1.11){
		vars.aftonHealth = new DeepPointer(vars.UWorld, 0x188, 0xE0, 0x98, 0x160, 0x2B8, 0x6E8, 0x800);
	}
	else {
		vars.aftonHealth = new DeepPointer(vars.UWorld, 0x188, 0xE0, 0x98, 0x160, 0x2B8, 0x6D8, 0x800);
	}

	if (vars.version < 1.11){
		vars.hourClock	= new DeepPointer(vars.GEngine, 0xDE8, 0x38, 0x0, 0x30, 0x670, 0x230, 0x258);
		vars.minuteClock= new DeepPointer(vars.GEngine, 0xDE8, 0x38, 0x0, 0x30, 0x670, 0x230, 0x25C);
	}
	else {
		vars.hourClock	= new DeepPointer(vars.GEngine, 0xDE8, 0x38, 0x0, 0x30, 0x680, 0x230, 0x10);
		vars.minuteClock= new DeepPointer(vars.GEngine, 0xDE8, 0x38, 0x0, 0x30, 0x680, 0x230, 0x14);
	}		
	
	if (vars.version < 1.05){
		vars.hasLoaded = new DeepPointer(vars.UWorld, 0x98, 0x8A0, 0x20, 0x128, 0x3B0);
	}
	else if (vars.version < 1.07){
		vars.hasLoaded = new DeepPointer(0x444C568, 0x184);
	}
	else if (vars.version < 1.11){
		vars.hasLoaded = new DeepPointer(0x444C6B0, 0x184);
	}
	else {
		vars.hasLoaded = new DeepPointer(0x4453ED8, 0x184);
	}

	if (vars.version < 1.11){
		vars.monGElev 	= new DeepPointer(vars.UWorld, 0x98, 0x808, 0x128, 0xA8, 0x68, 0x2E8);
		vars.foy2Elev 	= new DeepPointer(vars.UWorld, 0x98, 0x818, 0x128, 0xA8, 0x60, 0x2E8);
		vars.chicaElev	= new DeepPointer(vars.UWorld, 0x98, 0x848, 0x128, 0xA8, 0xC8, 0x2E8);
		vars.montyElev 	= new DeepPointer(vars.UWorld, 0x98, 0x848, 0x128, 0xA8, 0x128,0x2E8);
		vars.roxyElev 	= new DeepPointer(vars.UWorld, 0x98, 0x848, 0x128, 0xA8, 0x288,0x2E8);
		vars.freddyElev = new DeepPointer(vars.UWorld, 0x98, 0x848, 0x128, 0xA8, 0x2D8,0x2E8);
	}
	else {
		vars.monGElev 	= new DeepPointer(vars.UWorld, 0x98, 0x808, 0x128, 0xA8, 0xA0, 0x2E8);
		vars.foy2Elev 	= new DeepPointer(vars.UWorld, 0x98, 0x818, 0x128, 0xA8, 0xA8, 0x2E8);
		vars.chicaElev	= new DeepPointer(vars.UWorld, 0x98, 0x848, 0x128, 0xA8, 0x300,0x2E8);
		vars.montyElev 	= new DeepPointer(vars.UWorld, 0x98, 0x848, 0x128, 0xA8, 0x2C0,0x2E8);
		vars.roxyElev 	= new DeepPointer(vars.UWorld, 0x98, 0x848, 0x128, 0xA8, 0x2E0,0x2E8);
		vars.freddyElev = new DeepPointer(vars.UWorld, 0x98, 0x848, 0x128, 0xA8, 0x2D0,0x2E8);
	}

    vars.watchers = new MemoryWatcherList {
		//Freddy's Power OR Freddy Thingie (1.11+)
		new MemoryWatcher<int>(vars.freddyThing) { Name = "freddyThing" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },

		//Player Info
		new MemoryWatcher<Vector3f>(new DeepPointer(vars.GEngine, 0xDE8, 0x38, 0x0, 0x30, 0x258, 0x298, 0x1D0)) { Name = "posWatcher" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<bool>(new DeepPointer(vars.UWorld, 0x30, 0xD8, 0x20, 0xE8, 0x228)) { Name = "worldCheck", FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },

		//Arcade pointers
		new MemoryWatcher<int>(new DeepPointer(vars.UWorld, 0x128, 0x378, 0x270, 0x230, 0x40)) { Name = "golfStrokeCount" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<bool>(new DeepPointer(vars.GEngine, 0xDE8, 0x38, 0x0, 0x30, 0x258, 0x3F9)) { Name = "pq3Attack" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },

		//Counter pointers
		new MemoryWatcher<int>(new DeepPointer(vars.UWorld, 0x98, 0x40, 0x128, 0xA8, 0x580, 0x290, 0x14)) { Name = "DGens" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<int>(vars.FBFlags) { Name = "FBFlags" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<int>(vars.MGBucket) { Name = "MGBucket" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },

		//Buttons that start cutscenes (pressed = 0)
		new MemoryWatcher<bool>(vars.vannyEndButton) { Name = "vannyEndButton" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<int>(vars.escapeEndLeaveButtonWest) { Name = "escapeEndLeaveButtonWest" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<int>(vars.escapeEndLeaveButtonEast) { Name = "escapeEndLeaveButtonEast" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<int>(vars.carEndLeaveButton) { Name = "carEndLeaveButton" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<int>(vars.fireEndLeaveButton) { Name = "fireEndLeaveButton" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },

		//Keeps track of when an ending cutscene has started playing (end = 1)
		new MemoryWatcher<bool>(vars.aftonEnd) { Name = "aftonEnd" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<bool>(vars.vannyEnd) { Name = "vannyEnd" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<bool>(vars.fireEnd) { Name = "fireEnd" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<bool>(vars.carEnd) { Name = "carEnd" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<bool>(vars.escapeEnd) { Name = "escapeEnd" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<bool>(vars.pqEnd) { Name = "pqEnd" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		
		//Afton's health (starts at 750, -100 per button)
		new MemoryWatcher<float>(vars.aftonHealth) { Name = "aftonHealth" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },

		//Keeps track of items
		new MemoryWatcher<int>(new DeepPointer(vars.UWorld, 0x188, 0xE0, 0x38, 0xC0)) { Name = "securityBadgeCount" },
		new MemoryWatcher<int>(new DeepPointer(vars.UWorld, 0x188, 0xE0, 0x38, 0x138)) { Name = "itemCount" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<int>(new DeepPointer(vars.UWorld, 0x98, 0x8A0, 0x128, 0xB8, 0x128, 0x328, 0x3C8)) { Name = "splashScreen" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<long>(new DeepPointer(vars.GEngine, 0xDE8, 0x38, 0x0, 0x30, 0x268, 0x4E0, 0xE0, 0x25C)) { Name = "interactionName" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<float>(new DeepPointer(vars.GEngine, 0xDE8, 0x38, 0x0, 0x30, 0x268, 0x4E0, 0xC8, 0x248, 0xD0)) { Name = "windUp" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		
		//In-Game Clock
		new MemoryWatcher<int>(vars.hourClock) { Name = "hourClock" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<int>(vars.minuteClock) { Name = "minuteClock" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		
		//Used to pause the timer (pause = 1, menu = 0, hasLoaded in versions 1.05+ != 0)
		new MemoryWatcher<bool>(new DeepPointer(vars.GEngine, 0x8B8)) { Name = "pause" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<int>(new DeepPointer(vars.UWorld, 0x128, 0x1A8, 0x20, 0x100, 0xA0, 0x228)) { Name = "menu", FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<int>(vars.hasLoaded) { Name = "hasLoaded" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },

		//Elevator pointers (elevator in motion = 1)
		new MemoryWatcher<bool>(new DeepPointer(vars.UWorld, 0x98, 0x7D0, 0x128, 0xA8, 0xB8, 0x2E8)) { Name = "kitElev" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<bool>(new DeepPointer(vars.UWorld, 0x98, 0x818, 0x128, 0xA8, 0xB8, 0x2E8)) { Name = "foy1Elev" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<bool>(new DeepPointer(vars.UWorld, 0x98, 0x828, 0x128, 0xA8, 0x58, 0x2E8)) { Name = "bonBElev" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<bool>(new DeepPointer(vars.UWorld, 0x98, 0x830, 0x128, 0xA8, 0x50, 0x2E8)) { Name = "fazerElev" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<bool>(new DeepPointer(vars.UWorld, 0x98, 0x838, 0x128, 0xA8, 0xB0, 0x2E8)) { Name = "WAElev" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<bool>(new DeepPointer(vars.UWorld, 0x98, 0x890, 0x128, 0xA8, 0xB8, 0x2E8)) { Name = "aftonElev" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<bool>(vars.monGElev) { Name = "monGElev" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<bool>(vars.foy2Elev) { Name = "foy2Elev" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<bool>(vars.chicaElev) { Name = "chicaElev" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<bool>(vars.montyElev) { Name = "montyElev" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<bool>(vars.roxyElev) { Name = "roxyElev" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
		new MemoryWatcher<bool>(vars.freddyElev) { Name = "freddyElev" , FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull },
	};
}

update {
	//Define all pointers by watchers
	vars.watchers.UpdateAll(game);
	current.freddyThing 				= vars.watchers["freddyThing"].Current;
	current.pos 						= vars.watchers["posWatcher"].Current;
	current.worldCheck 					= vars.watchers["worldCheck"].Current;
	current.golfStrokeCount 			= vars.watchers["golfStrokeCount"].Current;
	current.pq3Attack 					= vars.watchers["pq3Attack"].Current;
	current.DGens 						= vars.watchers["DGens"].Current;
	current.FBFlags 					= vars.watchers["FBFlags"].Current;
	current.MGBucket 					= vars.watchers["MGBucket"].Current;
	current.vannyEndButton 				= vars.watchers["vannyEndButton"].Current;
	current.escapeEndLeaveButtonWest 	= vars.watchers["escapeEndLeaveButtonWest"].Current;
	current.escapeEndLeaveButtonEast 	= vars.watchers["escapeEndLeaveButtonEast"].Current;
	current.carEndLeaveButton 			= vars.watchers["carEndLeaveButton"].Current;
	current.fireEndLeaveButton 			= vars.watchers["fireEndLeaveButton"].Current;
	current.aftonEnd 					= vars.watchers["aftonEnd"].Current;
	current.vannyEnd 					= vars.watchers["vannyEnd"].Current;
	current.fireEnd 					= vars.watchers["fireEnd"].Current;
	current.carEnd 						= vars.watchers["carEnd"].Current;
	current.escapeEnd 					= vars.watchers["escapeEnd"].Current;
	current.pqEnd 						= vars.watchers["pqEnd"].Current;
	current.aftonHealth 				= vars.watchers["aftonHealth"].Current;
	current.securityBadgeCount 			= vars.watchers["securityBadgeCount"].Current;
	current.itemCount 					= vars.watchers["itemCount"].Current;
	current.splashScreen 				= vars.watchers["splashScreen"].Current;
	current.interactionName 			= vars.watchers["interactionName"].Current;
	current.windUp 						= vars.watchers["windUp"].Current;
	current.hourClock 					= vars.watchers["hourClock"].Current;
	current.minuteClock 				= vars.watchers["minuteClock"].Current;
	current.pause 						= vars.watchers["pause"].Current;
	current.menu 						= vars.watchers["menu"].Current;
	current.hasLoaded 					= vars.watchers["hasLoaded"].Current;
	current.kitElev 					= vars.watchers["kitElev"].Current;
	current.foy1Elev 					= vars.watchers["foy1Elev"].Current;
	current.bonBElev 					= vars.watchers["bonBElev"].Current;
	current.fazerElev 					= vars.watchers["fazerElev"].Current;
	current.WAElev 						= vars.watchers["WAElev"].Current;
	current.aftonElev 					= vars.watchers["aftonElev"].Current;
	current.monGElev 					= vars.watchers["monGElev"].Current;
	current.foy2Elev 					= vars.watchers["foy2Elev"].Current;
	current.chicaElev 					= vars.watchers["chicaElev"].Current;
	current.montyElev 					= vars.watchers["montyElev"].Current;
	current.roxyElev 					= vars.watchers["roxyElev"].Current;
	current.freddyElev 					= vars.watchers["freddyElev"].Current;
	old.freddyThing 					= vars.watchers["freddyThing"].Old;
	old.posWatcher 						= vars.watchers["posWatcher"].Old;
	old.worldCheck 						= vars.watchers["worldCheck"].Old;
	old.golfStrokeCount 				= vars.watchers["golfStrokeCount"].Old;
	old.pq3Attack 						= vars.watchers["pq3Attack"].Old;
	old.DGens 							= vars.watchers["DGens"].Old;
	old.FBFlags 						= vars.watchers["FBFlags"].Old;
	old.MGBucket 						= vars.watchers["MGBucket"].Old;
	old.vannyEndButton 					= vars.watchers["vannyEndButton"].Old;
	old.escapeEndLeaveButtonWest 		= vars.watchers["escapeEndLeaveButtonWest"].Old;
	old.escapeEndLeaveButtonEast 		= vars.watchers["escapeEndLeaveButtonEast"].Old;
	old.carEndLeaveButton 				= vars.watchers["carEndLeaveButton"].Old;
	old.fireEndLeaveButton 				= vars.watchers["fireEndLeaveButton"].Old;
	old.aftonEnd 						= vars.watchers["aftonEnd"].Old;
	old.vannyEnd 						= vars.watchers["vannyEnd"].Old;
	old.fireEnd 						= vars.watchers["fireEnd"].Old;
	old.carEnd 							= vars.watchers["carEnd"].Old;
	old.escapeEnd 						= vars.watchers["escapeEnd"].Old;
	old.pqEnd 							= vars.watchers["pqEnd"].Old;
	old.aftonHealth 					= vars.watchers["aftonHealth"].Old;
	old.securityBadgeCount 				= vars.watchers["securityBadgeCount"].Old;
	old.itemCount 						= vars.watchers["itemCount"].Old;
	old.splashScreen 					= vars.watchers["splashScreen"].Old;
	old.interactionName 				= vars.watchers["interactionName"].Old;
	old.windUp 							= vars.watchers["windUp"].Old;
	old.hourClock 						= vars.watchers["hourClock"].Old;
	old.minuteClock 					= vars.watchers["minuteClock"].Old;
	old.pause 							= vars.watchers["pause"].Old;
	old.menu 							= vars.watchers["menu"].Old;
	old.hasLoaded 						= vars.watchers["hasLoaded"].Old;
	old.kitElev 						= vars.watchers["kitElev"].Old;
	old.foy1Elev 						= vars.watchers["foy1Elev"].Old;
	old.bonBElev 						= vars.watchers["bonBElev"].Old;
	old.fazerElev 						= vars.watchers["fazerElev"].Old;
	old.WAElev 							= vars.watchers["WAElev"].Old;
	old.aftonElev 						= vars.watchers["aftonElev"].Old;
	old.monGElev 						= vars.watchers["monGElev"].Old;
	old.foy2Elev 						= vars.watchers["foy2Elev"].Old;
	old.chicaElev 						= vars.watchers["chicaElev"].Old;
	old.montyElev 						= vars.watchers["montyElev"].Old;
	old.roxyElev 						= vars.watchers["roxyElev"].Old;
	old.freddyElev 						= vars.watchers["freddyElev"].Old;

	//Elevator Pointer List
	vars.elevatorPointers = new List<Tuple<string, bool, bool>>(){
		new Tuple<string, bool, bool>(vars.elevatorNames[0], current.aftonElev, old.aftonElev),
		new Tuple<string, bool, bool>(vars.elevatorNames[1], current.kitElev, old.kitElev),
		new Tuple<string, bool, bool>(vars.elevatorNames[2], current.bonBElev, old.bonBElev),
		new Tuple<string, bool, bool>(vars.elevatorNames[3], current.chicaElev, old.chicaElev),
		new Tuple<string, bool, bool>(vars.elevatorNames[4], current.fazerElev, old.fazerElev),
		new Tuple<string, bool, bool>(vars.elevatorNames[5], current.freddyElev, old.freddyElev),
		new Tuple<string, bool, bool>(vars.elevatorNames[6], current.foy1Elev, old.foy1Elev),
		new Tuple<string, bool, bool>(vars.elevatorNames[6], current.foy2Elev, old.foy2Elev),
		new Tuple<string, bool, bool>(vars.elevatorNames[7], current.monGElev, old.monGElev),
		new Tuple<string, bool, bool>(vars.elevatorNames[8], current.montyElev, old.montyElev),
		new Tuple<string, bool, bool>(vars.elevatorNames[9], current.roxyElev, old.roxyElev),
		new Tuple<string, bool, bool>(vars.elevatorNames[10], current.WAElev, old.WAElev),
	};
}

start {
	//Functions and Dictionaries
	vars.useDictionary = new Dictionary<string, int>();

	foreach (var data in vars.elevatorPointers){
		vars.useDictionary[data.Item1] = 0;
	}
	
	vars.printAllPointers = (Action)(() => {
		if (vars.version < 1.11){
			print("freddyPower: " + old.freddyThing.ToString() + " => " + current.freddyThing.ToString());
		}
		else {
			print("freddyThing: " + old.freddyThing.ToString() + " => " + current.freddyThing.ToString());
		}
		print("golfStrokeCount: " + old.golfStrokeCount.ToString() + " => " + current.golfStrokeCount.ToString());
		print("pq3Attack: " + old.pq3Attack.ToString() + " => " + current.pq3Attack.ToString());
		print("DGens: " + old.DGens.ToString() + " => " + current.DGens.ToString());
		print("MGBucket: " + old.MGBucket.ToString() + " => " + current.MGBucket.ToString());
		print("FBFlags: " + old.FBFlags.ToString() + " => " + current.FBFlags.ToString());
		print("worldCheck: " + old.worldCheck.ToString() + " => " + current.worldCheck.ToString());
		print("pos.X: " + old.pos.X.ToString() + " => " + current.pos.X.ToString());
		print("pos.Y: " + old.pos.Y.ToString() + " => " + current.pos.Y.ToString());
		print("pos.Z: " + old.pos.Z.ToString() + " => " + current.pos.Z.ToString());
		print("vannyEndButton: " + old.vannyEndButton.ToString() + " => " + current.vannyEndButton.ToString());
		print("escapeEndLeaveButtonEast: " + old.escapeEndLeaveButtonEast.ToString() + " => " + current.escapeEndLeaveButtonEast.ToString());
		print("carEndLeaveButton: " + old.carEndLeaveButton.ToString() + " => " + current.carEndLeaveButton.ToString());
		print("fireEndLeaveButton: " + old.fireEndLeaveButton.ToString() + " => " + current.fireEndLeaveButton.ToString());
		print("escapeEndLeaveButtonWest: " + old.escapeEndLeaveButtonWest.ToString() + " => " + current.escapeEndLeaveButtonWest.ToString());
		print("aftonEnd: " + old.aftonEnd.ToString() + " => " + current.aftonEnd.ToString());
		print("vannyEnd: " + old.vannyEnd.ToString() + " => " + current.vannyEnd.ToString());
		print("fireEnd: " + old.fireEnd.ToString() + " => " + current.fireEnd.ToString());
		print("carEnd: " + old.carEnd.ToString() + " => " + current.carEnd.ToString());
		print("escapeEnd: " + old.escapeEnd.ToString() + " => " + current.escapeEnd.ToString());
		print("pqEnd: " + old.pqEnd.ToString() + " => " + current.pqEnd.ToString());
		print("aftonHealth: " + old.aftonHealth.ToString() + " => " + current.aftonHealth.ToString());
		print("securityBadgeCount: " + old.securityBadgeCount.ToString() + " => " + current.securityBadgeCount.ToString());
		print("itemCount: " + old.itemCount.ToString() + " => " + current.itemCount.ToString());
		print("splashScreen: " + old.splashScreen.ToString() + " => " + current.splashScreen.ToString());
		print("hourClock: " + old.hourClock.ToString() + " => " + current.hourClock.ToString());
		print("minuteClock: " + old.minuteClock.ToString() + " => " + current.minuteClock.ToString());
		print("pause: " + old.pause.ToString() + " => " + current.pause.ToString());
		if (vars.version < 1.05){
			print("hasLoaded: " + old.hasLoaded.ToString() + " => " + current.hasLoaded.ToString());
		}
		else {
			print("blackScreen: " + old.hasLoaded.ToString() + " => " + current.hasLoaded.ToString());
		}
		print("kitElev: " + old.kitElev.ToString() + " => " + current.kitElev.ToString());
		print("monGElev: " + old.monGElev.ToString() + " => " + current.monGElev.ToString());
		print("foy2Elev: " + old.foy2Elev.ToString() + " => " + current.foy2Elev.ToString());
		print("foy1Elev: " + old.foy1Elev.ToString() + " => " + current.foy1Elev.ToString());
		print("bonBElev: " + old.bonBElev.ToString() + " => " + current.bonBElev.ToString());
		print("fazerElev: " + old.fazerElev.ToString() + " => " + current.fazerElev.ToString());
		print("WAElev: " + old.WAElev.ToString() + " => " + current.WAElev.ToString());
		print("chicaElev: " + old.chicaElev.ToString() + " => " + current.chicaElev.ToString());
		print("montyElev: " + old.montyElev.ToString() + " => " + current.montyElev.ToString());
		print("roxyElev: " + old.roxyElev.ToString() + " => " + current.roxyElev.ToString());
		print("freddyElev: " + old.freddyElev.ToString() + " => " + current.freddyElev.ToString());
		print("aftonElev: " + old.aftonElev.ToString() + " => " + current.aftonElev.ToString());
	});

	vars.checkItem = (Func<string, double, double, double, bool>)((name, x, y, z) => {
		//checks in a sphere (radius 300u)
		if (!settings[name]) return false;
		if (Math.Pow(current.pos.X - x, 2) + Math.Pow(current.pos.Y - y, 2) + Math.Pow(current.pos.Z - z, 2) > Math.Pow(300, 2)) return false;
		print(name);
		return true;
	});

	vars.checkPosition = (Func<string, bool, double, double, double, double, double, double, bool>)((name, check, xLB, xUB, yLB, yUB, zLB, zUB) => {
		if (!settings[name]) return false;
		if (!check) return false;
		if (xLB > current.pos.X) return false;
		if (current.pos.X > xUB) return false;
		if (yLB > current.pos.Y) return false;
		if (current.pos.Y > yUB) return false;
		if (zLB > current.pos.Z) return false;
		if (current.pos.Z > zUB) return false;
		print(name);
		return true;
	});

	vars.checkArcadePosition = (Func<double, double, double, double, double, double, double, double, double, bool>)((xLB, xUB, yLB, yUB, zLB, zUB, oldX, oldY, oldZ) => {
		if (xLB > oldX) return false;
		if (oldX > xUB) return false;
		if (yLB > oldY) return false;
		if (oldY > yUB) return false;
		if (zLB > oldZ) return false;
		if (oldZ > zUB) return false;
		return true;
	});

	vars.checkPositionSlant = (Func<string, bool, double, double, double, double, double, double, double, double, bool>)((name, check, x1, y1, x2, y2, xB, yB, zLB, zUB) => {
		if (!settings[name]) return false;
		if (!check) return false;
		if (zLB > current.pos.Z) return false;
		if (current.pos.Z > zUB) return false;
	
		double slope = (y1 - y2) / (x1 - x2);
		double xAvg = (x1 + x2) / 2;
		double yAvg = (y1 + y2) / 2;

		do {
			//north
			if (yB - yAvg >= slope * (xB - xAvg)){
				if (current.pos.Y - yAvg < slope * (current.pos.X - xAvg)) break;

				//east
				if (slope >= 0){
					if (current.pos.X < xB) break;
					if (current.pos.Y > yB) break;

					print(name);
					return true;
				}
				//west
				else {
					if (current.pos.X > xB) break;
					if (current.pos.Y > yB) break;

					print(name);
					return true;
				}
			}
			//south
			else {
				if (current.pos.Y - yAvg > slope * (current.pos.X - xAvg)) break;

				//west
				if (slope >= 0){
					if (current.pos.X > xB) break;
					if (current.pos.Y < yB) break;
					
					print(name);
					return true;
				}
				//east
				else {
					if (current.pos.X < xB) break;
					if (current.pos.Y < yB) break;

					print(name);
					return true;
				}
			}
		} while (false);
		return false;
	});

	vars.checkPQPosition1 = (Func<double, double, double, double, double, double, bool>)((currentX, currentY, xLB, xUB, yLB, yUB) => {
		if (xLB > currentX) return false;
		if (currentX > xUB) return false;
		if (yLB > currentY) return false;
		if (currentY > yUB) return false;
		return true;
	});

	vars.checkPQPosition2 = (Func<string, bool, bool>)((name, check) => {
		if (!settings[name]) return false;
		if (!check) return false;
		print(name);
		return true;
	});

	vars.checkGen = (Func<string, bool, double, double, double, double, double, double, bool>)((name, check, x, y, zLB, zUB, oldPositionX, oldPositionY) => {
		//checks in a circle (radius 200)
		if (!settings[name]) return false;
		if (!check) return false;
		if (zLB > current.pos.Z) return false;
		if (current.pos.Z > zUB) return false;
		if (Math.Pow(oldPositionX - x, 2) + Math.Pow(oldPositionY - y, 2) > Math.Pow(200, 2)) return false;
		if (Math.Pow(current.pos.X - x, 2) + Math.Pow(current.pos.Y - y, 2) <= Math.Pow(200, 2)) return false;
		print(name);
		return true;
	});

	vars.checkTime = (Func<string, bool, int, int, bool>)((name, check, hour, minute) => {
		if (!settings[name]) return false;
		if (!check) return false;
		if (current.hourClock != hour) return false;
		if (current.minuteClock != minute) return false;
		print(name);
		return true;
	});

	vars.resetVariables = (Action)(() => {
		//Used to keep certain splits from repeating (reset)
	
		//Arcade Splits
		vars.arcade = "N/A";
		//bb
		vars.bb_start = true;
		//monty golf
		vars.mg_start = true;
		vars.nHole = 0;
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
		vars.pq1_end = false;
		//pq2
		vars.pq2_start = true;
		vars.pq2_1 = true;
		vars.pq2_2 = true;
		vars.pq2_3 = true;
		vars.pq2_4 = true;
		vars.pq2_5 = true;
		vars.pq2_6 = true;
		vars.pq2_7 = true;
		vars.pq2_8 = false;
		vars.pq2_9 = true;
		vars.pq2_10 = true;
		vars.pq2_end = false;
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

		//Counter Splits
		vars.cSewerGen1 = true;
		vars.cSewerGen2 = true;
		vars.cSewerGen3 = true;
		vars.cWAGen1 = true;
		vars.cWAGen2 = true;
		vars.cWAGen3 = true;
		vars.cWAGen4 = true;
		vars.cWAGen5 = true;

		//Deload Splits
		vars.dFoxyCutout = true;
		vars.dDaycareArcade = true;
		vars.dDaycareTheatre = true;
		vars.dKCFence = true;
		vars.dMGFence = true;
		vars.dCounter = true;
		vars.dChicaRoom = true;
		vars.dCurtain = true;
		vars.dRoxyCutout = true;
		vars.dTunnelDoor = true;
		vars.dAftonRock = true;
		vars.dGarageJump = true;
		vars.dRoxyEyes = true;
		vars.dBalloon = true;
		vars.dPlant = true;

		//Item Splits
		vars.nLobbyItemsUsed = 0;

		//Positional Splits
		vars.pEnBonnieBowl = true;
		vars.pEnElChips = true;
		vars.pFazerStairs = true;
		vars.pFazerRail = true;
		vars.pAftonElev = true;
		vars.pFirstAid = true;
		vars.pFredRail = true;
		vars.pMontyChase = true;
		vars.pSTRATRW = true;
		vars.pSTRLB = true;
		vars.pEnWestArcade = true;
		vars.pExWestArcade = false;

		//Clock Splits
		vars.tVents = true;
		vars.tUtilityRecharge = true;
		vars.tFrontEntrance = true;
		vars.tEnDaycare = true;
		vars.tDaycareNighttime = true;
		vars.tDaycareRecharge = true;
		vars.t1_15 = true;
		vars.tPizzabot = true;
		vars.tWhiteWoman = true;
		vars.tDeadFred = true;
		vars.tBackstagePass = true;
		vars.tShowtimeDisk = true;
		vars.tAbductionRecharge = true;
		vars.tVanessaRepair = true;
		vars.tPowerUpgrade = true;
		vars.tPartyPassRecharge = true;
		vars.tGoldBlaster = true;
		vars.tLeaveSewers = true;
		vars.tFreddyUpgrade = true;
		vars.tDamagedHead = true;
		vars.tRepairedHead = true;
		vars.tRoxySequence = true;
		vars.tEyeUpgradeNighttime = true;
		vars.t6am = true;

		vars.isLoading = false;
		vars.onMenu = true;
		do {
			if (vars.version >= 1.05) {
				if (!current.worldCheck) break;
				if (old.worldCheck) break;
				vars.loadingConstant = current.hasLoaded;
				print("Loading Constant: " + vars.loadingConstant.ToString());
			}
		} while(false);
	});

	//Resets variables upon stopping timer
	vars.resetVariables();

	//Start conditions (time, Freddy power, freddyThing)
	do {
		if (current.hourClock != -1) break; 
		if (current.minuteClock != 0) break;

		if (vars.version < 1.11){
			if (current.freddyThing != 30) break;
			if (old.freddyThing != 100) break;
			print("Start Timer");
			return true;
		}
		else {
			if (current.freddyThing == 0) break;
			if (old.freddyThing == 1) break;
			print("Start Timer");
			return true;
		}
		
	} while (false);
}

reset {
	//Resets timer upon starting new game
	if (!settings["Reset Settings"]) return false;
	if (old.hourClock == -1) return false;
	if (!vars.checkTime("Reset On New Game", true, -1, 0)) return false;
	return true;
}

isLoading {
	if (!settings["In-Game Time Settings"]) return false;

	if (current.worldCheck || vars.isLoading || vars.onMenu){
		if (vars.version < 1.05){
			if (vars.arcade != "N/A"){
				vars.arcade = "N/A";
				print("Arcade: " + vars.arcade);
			}
		}
		else if (current.hasLoaded == vars.loadingConstant){
			if (vars.arcade != "N/A"){
				vars.arcade = "N/A";
				print("Arcade: " + vars.arcade);
			}
		}
	}
	else if (vars.arcade == "N/A"){
		if (vars.checkArcadePosition(-17000, -16500, 27200, 27600, 2000, 2300, old.pos.X, old.pos.Y, old.pos.Z)){
			vars.arcade = "BB Arcade";
		}
		else if (vars.checkArcadePosition(-18200, -17900, 44100, 44300, 900, 1100, old.pos.X, old.pos.Y, old.pos.Z)){
			vars.arcade = "Monty Golf";
		}
		else if (vars.checkArcadePosition(7000, 8500, 46500, 48000, 2100, 2300, old.pos.X, old.pos.Y, old.pos.Z)){
			vars.arcade = "Princess Quest 1";
		}
		else if (vars.checkArcadePosition(7500, 9000, 20500, 21000, 3200, 3400, old.pos.X, old.pos.Y, old.pos.Z)){
			vars.arcade = "Princess Quest 2";
		}
		else if (vars.checkArcadePosition(17750, 18000, 28775, 29000, 2500, 2700, old.pos.X, old.pos.Y, old.pos.Z)){
			vars.arcade = "Princess Quest 3";
		}
		
		if (vars.arcade != "N/A"){
			print("Arcade: " + vars.arcade);
		}
	}

	foreach (var data in vars.elevatorPointers){
		do {
			if (!settings[data.Item1]) break;
			if (!data.Item2) break;

			if (!data.Item3){
				vars.useDictionary[data.Item1]++;
				print(data.Item1 + ": #" + vars.useDictionary[data.Item1].ToString());
			}

			if (settings[data.Item1 + "_EUOE"]){
				if (!data.Item3){
					print("EveryUse");
				}
				return true;
			}
			else if (settings[data.Item1 + "_POOU"]){
				if (!settings[data.Item1 + "_n" + vars.useDictionary[data.Item1].ToString()]) break;
				if (!data.Item3){
					print("OnlyOnUse#");
				}
				return true;
			}
		} while (false);
	}
	
	do {
		if (!settings["Stop Timer When Loading"]) break;

		if (vars.version < 1.05){
			if (current.hasLoaded == 1){
				vars.isLoading = false;
				break;
			}
			else if ((current.worldCheck || (old.pause && old.worldCheck)) && !vars.isLoading){
				print("Stop Timer When Loading");
				vars.isLoading = true;
			}
			
			if (vars.isLoading){
				return true;
			}
		}
		else {
			if (current.hasLoaded != vars.loadingConstant) break;
			if (old.hasLoaded != vars.loadingConstant){
				print("Stop Timer When Loading");
			}
			return true;
		}
	} while (false);

	do {
		if (!settings["Stop Timer On Menu"]) break;

		if (current.pos.Y == 0 && vars.arcade == "N/A"){
			if (!vars.onMenu){
				print("Stop Timer On Menu");
			}
			vars.onMenu = true;
		}
		else if (current.worldCheck || vars.arcade != "N/A"){
			vars.onMenu = false;
		}

		if (vars.onMenu){
			return true;
		}
	} while (false);

	do {
		if (!settings["Stop Timer When Paused"]) break;
		if (!current.pause) break;
		if (!current.worldCheck) break;

		if (!old.pause){
			print("Stop Timer When Paused");
		}

		return true;
	} while (false);

	return false;
}

split {
	if (!settings["Split Settings"]) return false;

	if (vars.pq1_end && vars.arcade == "N/A"){
		print("pq1_end");
		vars.pq1_end = false;
		return true;
	}
	if (vars.pq2_end && vars.arcade == "N/A"){
		print("pq2_end");
		vars.pq2_end = false;
		return true;
	}

	string dumbVariable = vars.arcade;
	switch (dumbVariable){
		default: {
			if (!settings[vars.arcade]) break;

			switch (dumbVariable){
				case "BB Arcade": {
					if (!settings["bb_start"]) break;
					if (!vars.bb_start) break;

					vars.bb_start = false;
					print("bb_start");
					return true;
				}

				case "Monty Golf": {
					if (settings["mg_start"]){
						if (vars.mg_start){
							vars.mg_start = false;
							print("mg_start");
							return true;
						}
					}
					if (current.golfStrokeCount == 0){
						vars.nHole = 0;
					}
					if (current.golfStrokeCount > old.golfStrokeCount){
						vars.nHole++;
						if (settings["Finish Hole " + vars.nHole.ToString()]){
							print("Finish Hole " + vars.nHole.ToString());
							return true;
						}
					}
					break;
				}

				default: {
					if (!settings["Princess Quest"]) break;

					switch (dumbVariable){
						case "Princess Quest 1": {
							if (settings["pq1_start"] && vars.pq1_start){
								print("pq1_start");
								vars.pq1_start = false;
								return true;
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 785, 1215, -160, 160)){
								if (vars.checkPQPosition2("pq1_1", vars.pq1_1)){
									vars.pq1_1 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 1715, 2530, -160, 160)){
								if (vars.checkPQPosition2("pq1_2", vars.pq1_2)){
									vars.pq1_2 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 3055, 3800, -160, 160)){
								if (vars.checkPQPosition2("pq1_3", vars.pq1_3)){
									vars.pq1_3 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 1715, 2530, 600, 1425)){
								if (vars.checkPQPosition2("pq1_4", vars.pq1_4)){
									vars.pq1_4 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 1900, 2340, 1860, 2180)){
								if (vars.checkPQPosition2("pq1_5", vars.pq1_5)){
									vars.pq1_5 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 2860, 4695, 1780, 2810)){
								if (vars.checkPQPosition2("pq1_6", vars.pq1_6)){
									vars.pq1_6 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 5220, 6515, 2150, 2780)){
								if (vars.checkPQPosition2("pq1_7", vars.pq1_7)){
									vars.pq1_7 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 950, 1380, 1865, 2300)){
								if (vars.checkPQPosition2("pq1_8", vars.pq1_8)){
									vars.pq1_8 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 2020, 2210, 3425, 5125)){
								if (vars.checkPQPosition2("pq1_9", vars.pq1_9)){
									vars.pq1_9 = false;
									vars.pq1_end = true;
									return true;
								}
							}
							break;
						}

						case "Princess Quest 2": {
							if (settings["pq2_start"] && vars.pq2_start){
								print("pq2_start");
								vars.pq2_start = false;
								return true;
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 2800, 3250, -1040, -735)){
								if (vars.checkPQPosition2("pq2_1", vars.pq2_1)){
									vars.pq2_1 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 4300, 4840, -2800, -2420)){
								if (vars.checkPQPosition2("pq2_2", vars.pq2_2)){
									vars.pq2_2 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 2805, 3155, -1340, -1110)){
								if (vars.checkPQPosition2("pq2_3", vars.pq2_3)){
									vars.pq2_3 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 2415, 3290, -3375, -2745)){
								if (vars.checkPQPosition2("pq2_4", vars.pq2_4)){
									vars.pq2_4 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 2955, 3365, 745, 1125)){
								if (vars.checkPQPosition2("pq2_5", vars.pq2_5)){
									vars.pq2_5 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 1070, 2205, 830, 1470)){
								if (vars.pq2_6){
									vars.pq2_8 = true;
								}
								if (vars.checkPQPosition2("pq2_6", vars.pq2_6)){
									vars.pq2_6 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 5, 1975, -185, 190)){
								if (vars.checkPQPosition2("pq2_7", vars.pq2_7)){
									vars.pq2_7 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 2725, 3340, -315, 320)){
								if (vars.checkPQPosition2("pq2_8", vars.pq2_8)){
									vars.pq2_8 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 3920, 4345, 350, 655)){
								if (vars.checkPQPosition2("pq2_9", vars.pq2_9)){
									vars.pq2_9 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 4845, 5045, 725, 925)){
								if (vars.checkPQPosition2("pq2_10", vars.pq2_10)){
									vars.pq2_10 = false;
									vars.pq2_end = true;
									return true;
								}
							}
							break;
						}

						case "Princess Quest 3": {
							if (settings["pq3_start"] && vars.pq3_start){
								print("pq3_start");
								vars.pq3_start = false;
								return true;
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 2195, 2315, -3625, -1965)){
								if (vars.checkPQPosition2("pq3_1", vars.pq3_1)){
									vars.pq3_1 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 1705, 2135, -1340, -895)){
								if (vars.checkPQPosition2("pq3_2", vars.pq3_2)){
									vars.pq3_2 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 2445, 5210, -1360, -990)){
								if (vars.checkPQPosition2("pq3_3", vars.pq3_3)){
									vars.pq3_3 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 4865, 5490, -210, 365)){
								if (vars.checkPQPosition2("pq3_4", vars.pq3_4)){
									vars.pq3_4 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 500, 1325, -400, 1045)){
								if (vars.checkPQPosition2("pq3_5", vars.pq3_5)){
									vars.pq3_5 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 1865, 1980, -1505, -1380)){
								if (vars.checkPQPosition2("pq3_6", vars.pq3_6)){
									vars.pq3_6 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 1940, 2055, -260, 0)){
								if (vars.checkPQPosition2("pq3_7", vars.pq3_7)){
									vars.pq3_7 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 1800, 2200, 1635.34, 1700)){
								if (current.pq3Attack){
									if (vars.checkPQPosition2("pq3_endArcade", vars.pq3_end)){
										vars.pq3_end = false;
										return true;
									}
								}
							}
							break;
						}
					}
					break;
				}
			}
			break;
		}

		case "N/A": {
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
				if (settings["Sewer Generators"]){
					if (vars.checkGen("S_Generator 1", vars.cSewerGen1, -1515, 16575, -10000, -2500, old.pos.X, old.pos.Y)){
						vars.cSewerGen1 = false;
						return true;
					}
					if (vars.checkGen("S_Generator 2", vars.cSewerGen2, -10525, 21155, -10000, -2500, old.pos.X, old.pos.Y)){
						vars.cSewerGen2 = false;
						return true;
					}
					if (vars.checkGen("S_Generator 3", vars.cSewerGen3, -3785, 16480, -10000, -2500, old.pos.X, old.pos.Y)){
						vars.cSewerGen3 = false;
						return true;
					}
				}
				if (settings["West Arcade Generators"]){
					if (vars.checkGen("WA_Generator 1", vars.cWAGen1, 10440, 28375, 2140, 2290, old.pos.X, old.pos.Y)){
						vars.cWAGen1 = false;
						return true;
					}
					if (vars.checkGen("WA_Generator 2", vars.cWAGen2, 8920, 23075, 2100, 2250, old.pos.X, old.pos.Y)){
						vars.cWAGen2 = false;
						return true;
					}
					if (vars.checkGen("WA_Generator 3", vars.cWAGen3, 2125, 25970, 2150, 2300, old.pos.X, old.pos.Y)){
						vars.cWAGen3 = false;
						return true;
					}
					if (vars.checkGen("WA_Generator 4", vars.cWAGen4, 3030, 27210, 3290, 3440, old.pos.X, old.pos.Y)){
						vars.cWAGen4 = false;
						return true;
					}
					if (vars.checkGen("WA_Generator 5", vars.cWAGen5, 9205, 20770, 3290, 3440, old.pos.X, old.pos.Y)){
						vars.cWAGen5 = false;
						return true;
					}
				}
			}
			if (settings["Deload Splits"]){
				if (current.pos.X != old.pos.X || current.pos.Y != old.pos.Y || current.pos.Z != old.pos.Z){
					if (settings["D_Backstage"]){
						if (vars.checkPositionSlant("Foxy Cutout Deload", vars.dFoxyCutout, -4450, 53050, -5320, 52750, -5300, 53235, 1780, 2000)){
							vars.dFoxyCutout = false;
							return true;
						}
					}
					if (settings["D_Daycare"]){
						if (vars.checkPosition("Arcade Deload", vars.dDaycareArcade, -13600, -13300, 30000, 31800, 1821.75, 2000)){
							vars.dDaycareArcade = false;
							return true;
						}
						if (vars.checkPosition("Theatre Deload", vars.dDaycareTheatre, -20000, -19500, 32377.5, 34800, 2516, 2600)){
							vars.dDaycareTheatre = false;
							return true;
						}
					}
					if (settings["D_Kid's Cove Sublobby"]){
						if (vars.checkPosition("KCD_Fence Deload", vars.dKCFence, -10270, -9038, 31000, 36403, 2062, 3000)){
							vars.dKCFence = false;
							return true;
						}
					}
					if (settings["D_Monty Golf Sublobby"]){
						if (vars.checkPosition("MGD_Fence Deload", vars.dMGFence, -10270, -9038, 38460, 42100, 2062, 3000)){
							vars.dMGFence = false;
							return true;
						}
					}
					if (settings["D_Prize Counter"]){
						if (vars.checkPosition("Counter Deload", vars.dCounter, -3750, -3250, 28250, 28750, 3750, 4000)){
							vars.dCounter = false;
							return true;
						}
					}
					if (settings["D_Rockstar Row"]){
						if (vars.checkPosition("Chica Greenroom Deload", vars.dChicaRoom, -4700, -4200, 52300, 52700, 1993, 2500)){
							vars.dChicaRoom = false;
							return true;
						}
						if (vars.checkPosition("Curtain Deload", vars.dCurtain, 5150, 5350, 44450, 44650, 1960, 2100)){
							vars.dCurtain = false;
							return true;
						}
						if (vars.checkPosition("Roxy Cutout Deload", vars.dRoxyCutout, 3700, 3850, 44300, 44700, 1877, 1950)){
							vars.dRoxyCutout = false;
							return true;
						}
						if (vars.checkPosition("Tunnel Door Deload", vars.dTunnelDoor, -1500, -1300, 49250, 49492, 1750, 1900)){
							vars.dTunnelDoor = false;
							return true;
						}
					}
					if (settings["D_Roxy Raceway"]){
						if (vars.checkPosition("Afton Rock Column Deload", vars.dAftonRock, 24000, 25500, 48000, 49500, 2411.5, 2800)){
							vars.dAftonRock = false;
							return true;
						}
						if (vars.checkPosition("Garage Fence Jump", vars.dGarageJump, 18000, 19500, 38800, 39100, 2411.5, 2800)){
							vars.dGarageJump = false;
							return true;
						}
						if (vars.checkPosition("Roxy's Eyes Deload", vars.dRoxyEyes, 19500, 20500, 50750, 51150, 988, 1100)){
							vars.dRoxyEyes = false;
							return true;
						}
					}
					if (settings["D_Roxy Raceway Sublobby"]){
						if (vars.checkPosition("Balloon Deload", vars.dBalloon, 8300, 9000, 38000, 39000, 2708, 3000)){
							vars.dBalloon = false;
							return true;
						}
					}
					if (settings["D_Roxy Salon"]){
						if (vars.checkPosition("Plant Deload", vars.dPlant, 9000, 10500, 41800, 42000, 2708, 3000)){
							vars.dPlant = false;
							return true;
						}
					}
				}
			}
			if (settings["Ending Splits"]){
				//splits based on ending cutscenes
				if (settings["Afton Ending"]){
					if (settings["Button 8 / End"] && current.aftonEnd && !old.aftonEnd){
						print("Button 8 / End");
						return true;
					}
				}
				if (settings["Car Battery Ending"]){
					if (settings["CB_C"] && current.carEnd && !old.carEnd){
						print("Car Battery Cutscene");
						return true;
					}
					if (settings["CB_B"] && current.carEndLeaveButton == 0 && old.carEndLeaveButton != 0){
						if (current.worldCheck){
							print("Car Battery Button");
							return true;
						}
					}
				}
				if (settings["Escape Ending"]){
					if (settings["E_C"] && current.escapeEnd && !old.escapeEnd){
						print("Escape Cutscene");
						return true;
					}
					if (settings["E_B"]){
						if (current.escapeEndLeaveButtonEast == 0 && old.escapeEndLeaveButtonEast != 0){
							if (current.worldCheck){
								print("Escape (East) Button");
								return true;
							}
						}
						if (current.escapeEndLeaveButtonWest == 0 && old.escapeEndLeaveButtonWest != 0){
							if (current.worldCheck){
								print("Escape (West) Button");
								return true;
							}
						}
					}
				}
				if (settings["Fire Escape Ending"]){
					if (settings["F_C"] && current.fireEnd && !old.fireEnd){
						print("Fire Escape Cutscene");
						return true;
					}
					if (settings["F_B"] && current.fireEndLeaveButton == 0 && old.fireEndLeaveButton != 0){
						if (current.worldCheck){
							print("Fire Escape Button");
							return true;
						}
					}
				}
				if (settings["Princess Quest Ending"]){
					if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 1800, 2200, 1635.34, 1700)){
						if (current.pq3Attack && !old.pq3Attack){
							if (vars.checkPQPosition2("pq3_endEndings", vars.pq3_end)){
								vars.pq3_end = false;
								return true;
							}
						}
					}
					if (settings["pq_endCutscene"] && current.pqEnd && !old.pqEnd){
						print("Princess Quest End Cutscene");
						return true;
					}
				}
				if (settings["Vanny Ending"]){
					if (settings["V_C"] && current.vannyEnd && !old.vannyEnd){
						print("Vanny Cutscene");
						return true;
					}
					if (settings["V_B"]){
						if (!current.vannyEndButton && old.vannyEndButton){
							if (vars.checkPosition("V_B", true, 17550, 17750, 28450, 28740, 2500, 2800)){
								return true;
							}
						}
					}
				}
				//other ending splits
				if (settings["Afton Ending"]){
					if (current.aftonHealth < old.aftonHealth){
						var currentButton = ((750 - current.aftonHealth) / 100);
						if (settings["Button " + currentButton]){
							print("Button " + currentButton);
							return true;
						}
					}
				}
			}
			if (settings["Item Splits"]){
				if (settings["Item List"]){
					//sets the local fazwatch name
					if (current.itemCount == 0){
						if (old.windUp >= 0.98){
							vars.fazwatchName = old.interactionName;
						}
					}
					//extraneous items after this if:
					//Fazerblasters
					//Daycare Pass
					//Cameras
					//Badges
					//Repaired Head
					//vars.fazwatchName = 0x3921BE;
					if (current.windUp == 0 && old.windUp >= 0.98){
						long dumbVariable2 = old.interactionName - vars.fazwatchName;
						//Collectables, Equipment, CDs, Message Bags
						switch (dumbVariable2){
							//Default (unaccounted items)
							default: {
								if (dumbVariable2 >= 0){
									print("0x" + Convert.ToString(dumbVariable2, 16));
								}
								else {
									print("-0x" + Convert.ToString(Math.Abs(dumbVariable2), 16));
								}
								break;
							}
							//Collectables
							case -0xF9: {
								if (!settings["Bonnie Plush"]) break;
								print("Bonnie Plush");
								return true;
							}
							case 0xDFFFFFFBE: {
								if (!settings["Chica Balloon"]) break;
								print("Chica Balloon");
								return true;
							}
							case -0x13A: {
								if (current.pos.X < 0){
									if (!settings["CB_Chica Magnet"]) break;
									print("CB_Chica Magnet");
									return true;
								}
								else {
									if (!settings["WA_Chica Magnet"]) break;
									print("WA_Chica Magnet");
									return true;
								}
							}
							case 0x20000009B: {
								if (!settings["Chica Mask"]) break;
								print("Chica Mask");
								return true;
							}
							case 0x7FFFFFFBE: {
								if (!settings["Chica Name Shirt"]) break;
								print("Chica Name Shirt");
								return true;
							}
							case 0x12FFFFFFBE: {
								if (!settings["Chica Piñata"]) break;
								print("Chica Piñata");
								return true;
							}
							case -0x119: {
								if (!settings["Comedy Mask"]) break;
								print("Comedy Mask");
								return true;
							}
							case 0x11FFFFFFBE: {
								if (!settings["Cupcake Piñata"]) break;
								print("Cupcake Piñata");
								return true;
							}
							case 0xCFFFFFFBE: {
								if (!settings["El Chip Piñata"]) break;
								print("El Chip Piñata");
								return true;
							}
							case -0xCA: {
								if (!settings["Four Block Shirt"]) break;
								print("Four Block Shirt");
								return true;
							}
							case -0xF1: {
								if (!settings["Foxy Plush"]) break;
								print("Foxy Plush");
								return true;
							}
							case 0xEFFFFFFBE: {
								if (!settings["Freddy Balloon"]) break;
								print("Freddy Balloon");
								return true;
							}
							case -0xC3: {
								if (!settings["Freddy Face Shirt"]) break;
								print("Freddy Face Shirt");
								return true;
							}
							case -0xB9: {
								if (!settings["Freddy Icon Shirt"]) break;
								print("Freddy Icon Shirt");
								return true;
							}
							case -0x132: {
								if (!settings["Freddy Magnet"]) break;
								print("Freddy Magnet");
								return true;
							}
							case 0x10000009B: {
								if (!settings["Freddy Mask"]) break;
								print("Freddy Mask");
								return true;
							}
							case 0x5FFFFFFBE: {
								if (!settings["Freddy Name Shirt"]) break;
								print("Freddy Name Shirt");
								return true;
							}
							case 0x9FFFFFFBE: {
								if (!settings["Freddy Piñata"]) break;
								print("Freddy Piñata");
								return true;
							}
							case 0x3FFFFFFBE: {
								if (!settings["Frozen Chica Treat"]) break;
								print("Frozen Chica Treat");
								return true;
							}
							case 0x2FFFFFFBE: {
								if (!settings["Frozen Freddy Treat"]) break;
								print("Frozen Freddy Treat");
								return true;
							}
							case 0x1FFFFFFBE: {
								if (!settings["Frozen Monty Treat"]) break;
								print("Frozen Monty Treat");
								return true;
							}
							case 0x4FFFFFFBE: {
								if (!settings["Frozen Roxy Treat"]) break;
								print("Frozen Roxy Treat");
								return true;
							}
							case 0x70000013D: {
								if (!settings["Glam Chica Figure"]) break;
								print("Glam Chica Figure");
								return true;
							}
							case 0x20000013D: {
								if (!settings["Glam Chica Plush"]) break;
								print("Glam Chica Plush");
								return true;
							}
							case 0x60000013D: {
								if (!settings["Glam Freddy Figure"]) break;
								print("Glam Freddy Figure");
								return true;
							}
							case 0x30000013D: {
								if (!settings["Glam Freddy Plush"]) break;
								print("Glam Freddy Plush");
								return true;
							}
							case 0x80000013D: {
								if (!settings["Glam Monty Figure"]) break;
								print("Glam Monty Figure");
								return true;
							}
							case 0x40000013D: {
								if (!settings["Glam Monty Plush"]) break;
								print("Glam Monty Plush");
								return true;
							}
							case 0x90000013D: {
								if (!settings["Glam Roxy Figure"]) break;
								print("Glam Roxy Figure");
								return true;
							}
							case 0x10000013D: {
								if (!settings["Glam Roxy Plush"]) break;
								print("Glam Roxy Plush");
								return true;
							}
							case -0x18E: {
								if (!settings["Go Kart"]) break;
								print("Go Kart");
								return true;
							}
							case -0x189: {
								if (!settings["Golden Chica"]) break;
								print("Golden Chica");
								return true;
							}
							case -0x181: {
								if (!settings["Golden Freddy"]) break;
								print("Golden Freddy");
								return true;
							}
							case -0x178: {
								if (!settings["Golden Monty"]) break;
								print("Golden Monty");
								return true;
							}
							case -0x170: {
								if (!settings["Golden Moon"]) break;
								print("Golden Moon");
								return true;
							}
							case -0x168: {
								if (!settings["Golden Roxy"]) break;
								print("Golden Roxy");
								return true;
							}
							case -0x160: {
								if (!settings["Golden Sun"]) break;
								print("Golden Sun");
								return true;
							}
							case 0xFFFFFFFBE: {
								if (!settings["Monty Balloon"]) break;
								print("Monty Balloon");
								return true;
							}
							case -0x129: {
								if (!settings["Monty Magnet"]) break;
								print("Monty Magnet");
								return true;
							}
							case 0x40000009B: {
								if (!settings["Monty Mask"]) break;
								print("Monty Mask");
								return true;
							}
							case 0xBFFFFFFBE: {
								if (!settings["Monty Name Shirt"]) break;
								print("Monty Name Shirt");
								return true;
							}
							case 0x13FFFFFFBE: {
								if (!settings["Monty Piñata"]) break;
								print("Monty Piñata");
								return true;
							}
							case 0xB0000013D: {
								if (!settings["Moon Figure"]) break;
								print("Moon Figure");
								return true;
							}
							case 0x50000013D: {
								if (!settings["Moon Plush"]) break;
								print("Moon Plush");
								return true;
							}
							case -0xEA: {
								if (!settings["Nightmare Plush"]) break;
								print("Nightmare Plush");
								return true;
							}
							case -0xE2: {
								if (!settings["D_Old Poster"]) break;
								print("D_Old Poster");
								return true;
							}
							case -0xD0: {
								if (!settings["F_Old Poster"]) break;
								print("F_Old Poster");
								return true;
							}
							case -0xD6: {
								if (!settings["S_Old Poster"]) break;
								print("S_Old Poster");
								return true;
							}
							case -0xDC: {
								if (!settings["L_Old Poster"]) break;
								print("L_Old Poster");
								return true;
							}
							case -0x109: {
								if (!settings["Piñata"]) break;
								print("Piñata");
								return true;
							}
							case 0x6FFFFFFBE: {
								if (!settings["Pizzaplex Logo Shirt"]) break;
								print("Pizzaplex Logo Shirt");
								return true;
							}
							case -0x100: {
								if (!settings["Plush Baby"]) break;
								print("Plush Baby");
								return true;
							}
							case 0x10FFFFFFBE: {
								if (!settings["Roxy Balloon"]) break;
								print("Roxy Balloon");
								return true;
							}
							case -0x121: {
								if (!settings["Roxy Magnet"]) break;
								print("Roxy Magnet");
								return true;
							}
							case 0x30000009B: {
								if (!settings["Roxy Mask"]) break;
								print("Roxy Mask");
								return true;
							}
							case 0x8FFFFFFBE: {
								if (!settings["Roxy Name Shirt"]) break;
								print("Roxy Name Shirt");
								return true;
							}
							case 0xAFFFFFFBE: {
								if (!settings["Roxy Piñata"]) break;
								print("Roxy Piñata");
								return true;
							}
							case -0x159: {
								if (!settings["Space Chica Keychain"]) break;
								print("Space Chica Keychain");
								return true;
							}
							case -0x151: {
								if (!settings["Space Freddy Keychain"]) break;
								print("Space Freddy Keychain");
								return true;
							}
							case -0x149: {
								if (!settings["Space Monty Keychain"]) break;
								print("Space Monty Keychain");
								return true;
							}
							case -0x141: {
								if (!settings["Space Roxy Keychain"]) break;
								print("Space Roxy Keychain");
								return true;
							}
							case -0xAF: {
								if (!settings["Star Shirt"]) break;
								print("Star Shirt");
								return true;
							}
							case 0xA0000013D: {
								if (!settings["Sun Figure"]) break;
								print("Sun Figure");
								return true;
							}
							case 0xFFFFFFBE: {
								if (!settings["Sun Plush"]) break;
								print("Sun Plush");
								return true;
							}
							case -0x111: {
								if (!settings["Tragedy Mask"]) break;
								print("Tragedy Mask");
								return true;
							}
							//Equipment
							case -0x2B2A97: {
								if (!settings["Backstage Pass"]) break;
								print("Backstage Pass");
								return true;
							}
							case -0x2B29BB: {
								if (!settings["Bowling Pass"]) break;
								print("Bowling Pass");
								return true;
							}
							case 0x200000032: {
								if (!settings["Chica Fizzy Faz"]) break;
								print("Chica Fizzy Faz");
								return true;
							}
							case 0x39226FFFC6DD54: {
								if (!settings["Chica's Voicebox"]) break;
								print("Chica's Voicebox");
								return true;
							}
							case -0x25: {
								if (!settings["Damaged Head"] || !vars.tDamagedHead) break;
								print("Damaged Head");
								vars.tDamagedHead = false;
								return true;
							}
							case -0x1E: {
								if (!settings["Dance Pass"]) break;
								print("Dance Pass");
								return true;
							}
							case -0x38: {
								if (!settings["Entrance Pass"]) break;
								print("Entrance Pass");
								return true;
							}
							case -0x384BC0: {
								if (!settings["Fazcam"]) break;
								print("Fazcam");
								return true;
							}
							case 0x0: {
								if (!settings["Fazwatch"]) break;
								print("Fazwatch");
								return true;
							}
							case -0x384BB1: {
								if (!settings["Flashlight"]) break;
								print("Flashlight");
								return true;
							}
							case 0x200000015: {
								if (!settings["D_Flashlight Upgrade"]) break;
								print("D_Flashlight Upgrade");
								return true;
							}
							case 0x300000015: {
								if (!settings["B_Flashlight Upgrade"]) break;
								print("B_Flashlight Upgrade");
								return true;
							}
							case 0x100000015: {
								if (!settings["MG_Flashlight Upgrade"]) break;
								print("MG_Flashlight Upgrade");
								return true;
							}
							case 0x300000032: {
								if (!settings["Freddy Fizzy Faz"]) break;
								print("Freddy Fizzy Faz");
								return true;
							}
							case 0x20000001F: {
								if (!settings["RR_Freddy Upgrade"]) break;
								print("RR_Freddy Upgrade");
								return true;
							}
							case 0x10000001F: {
								if (!settings["MA_Freddy Upgrade"]) break;
								print("MA_Freddy Upgrade");
								return true;
							}
							case 0x3E: {
								if (!settings["Hoodie"]) break;
								print("Hoodie");
								return true;
							}
							case -0x391FF3: {
								if (!settings["MA_Mapbot's Map"]) break;
								print("MA_Mapbot's Map");
								return true;
							}
							case 0x148: {
								if (!settings["UT_Mapbot's Map"]) break;
								print("UT_Mapbot's Map");
								return true;
							}
							case -0x2B23DE: {
								if (!settings["Mazercise Control Key"]) break;
								print("Mazercise Control Key");
								return true;
							}
							case 0x54: {
								if (!settings["Mazercise Pass"]) break;
								print("Mazercise Pass");
								return true;
							}
							case 0x400000032: {
								if (!settings["Monty Fizzy Faz"]) break;
								print("Monty Fizzy Faz");
								return true;
							}
							case -0x2B2195: {
								if (!settings["Monty Mystery Mix"]) break;
								print("Monty Mystery Mix");
								return true;
							}
							case 0x5D: {
								if (current.pos.X <= -3000){
									if (!settings["Monty's Claws"]) break;
									print("Monty's Claws");
									return true;
								}
								else {
									if (!settings["MONTY UPGRADE"]) break;
									print("MONTY UPGRADE");
									return true;
								}
							}
							case -0x2B20B7: {
								if (!settings["Mr. Hippo Magnet"]) break;
								print("Mr. Hippo Magnet");
								return true;
							}
							case 0x71: {
								if (!settings["Party Pass"]) break;
								print("Party Pass");
								return true;
							}
							case 0x95: {
								if (!settings["Photo Pass"]) break;
								print("Photo Pass");
								return true;
							}
							case 0x100000032: {
								if (!settings["Roxy Fizzy Faz"]) break;
								print("Roxy Fizzy Faz");
								return true;
							}
							case 0xAE: {
								if (current.pos.X >= 0){
									if (!settings["Roxy's Eyes"]) break;
									print("Roxy's Eyes");
									return true;
								}
								else {
									if (!settings["ROXY UPGRADE"]) break;
									print("ROXY UPGRADE");
									return true;
								}
							}
							case 0xB3: {
								if (!settings["Screwdriver"]) break;
								print("Screwdriver");
								return true;
							}
							case 0x27: {
								if (!settings["Shoes"]) break;
								print("Shoes");
								return true;
							}
							//CDs
							case -0x9000000A4: {
								if (!settings["CD_Backstage Podium"]) break;
								print("CD_Backstage Podium");
								return true;
							}
							case -0x8000000A4: {
								if (!settings["CD_Bonnie Bowl"]) break;
								print("CD_Bonnie Bowl");
								return true;
							}
							case -0x3000000A4: {
								if (!settings["CD_Chica's Bakery"]) break;
								print("CD_Chica's Bakery");
								return true;
							}
							case -0xF000000A4: {
								if (!settings["CD_East Atrium Stage"]) break;
								print("CD_East Atrium Stage");
								return true;
							}
							case -0x7000000A4: {
								if (!settings["CD_Fazerblast"]) break;
								print("CD_Fazerblast");
								return true;
							}
							case -0x4000000A4: {
								if (!settings["CD_Kid's Cove"]) break;
								print("CD_Kid's Cove");
								return true;
							}
							case -0xA000000A4: {
								if (!settings["CD_Main Atrium"]) break;
								print("CD_Main Atrium");
								return true;
							}
							case -0xE000000A4: {
								if (!settings["CD_Mazercise"]) break;
								print("CD_Mazercise");
								return true;
							}
							case -0xD000000A4: {
								if (!settings["CD_Monty Golf"]) break;
								print("CD_Monty Golf");
								return true;
							}
							case -0x1000000A4: {
								if (!settings["CD_Rockstar Row Foxy"]) break;
								print("CD_Rockstar Row Foxy");
								return true;
							}
							case -0xB000000A4: {
								if (!settings["CD_Rockstar Row Helpy"]) break;
								print("CD_Rockstar Row Helpy");
								return true;
							}
							case -0xC000000A4: {
								if (!settings["CD_Roxy Raceway"]) break;
								print("CD_Roxy Raceway");
								return true;
							}
							case -0x5000000A4: {
								if (!settings["CD_Roxy Salon"]) break;
								print("CD_Roxy Salon");
								return true;
							}
							case -0x2000000A4: {
								if (!settings["CD_Utility Tunnels Couch"]) break;
								print("CD_Utility Tunnels Couch");
								return true;
							}
							case -0x6000000A4: {
								if (!settings["CD_Utility Tunnels Foxy Plush"]) break;
								print("CD_Utility Tunnels Foxy Plush");
								return true;
							}
							case -0x10000000A4: {
								if (!settings["CD_West Arcade"]) break;
								print("CD_West Arcade");
								return true;
							}
							//Messages
							//MONTY UPGRADE included with Monty's Claws equipment
							//ROXY UPGRADE included with Roxy's Eyes equipment
							case 0x20A: {
								if (!settings["AC Inspection"]) break;
								print("AC Inspection");
								return true;
							}
							case 0x272: {
								if (!settings["All Staff Meeting"]) break;
								print("All Staff Meeting");
								return true;
							}
							case 0x16D: {
								if (!settings["AR-CADE MAINT LOG"]) break;
								print("AR-CADE MAINT LOG");
								return true;
							}
							case 0x19A: {
								if (!settings["ARCADE CONSPIRACY"]) break;
								print("ARCADE CONSPIRACY");
								return true;
							}
							case 0x15B: {
								if (!settings["BBW MAINT LOG"]) break;
								print("BBW MAINT LOG");
								return true;
							}
							case 0x21E: {
								if (!settings["BEHIND THE MAZE"]) break;
								print("BEHIND THE MAZE");
								return true;
							}
							case 0x23D: {
								if (!settings["BETTER EMPLOYEES"]) break;
								print("BETTER EMPLOYEES");
								return true;
							}
							case 0x164: {
								if (!settings["CFF MAINT LOG"]) break;
								print("CFF MAINT LOG");
								return true;
							}
							case 0x243: {
								if (!settings["Chasing Cars"]) break;
								print("Chasing Cars");
								return true;
							}
							case 0x1CD: {
								if (!settings["CHICA REPORT"]) break;
								print("CHICA REPORT");
								return true;
							}
							case 0x1D3: {
								if (!settings["CHICA UPGRADE"]) break;
								print("CHICA UPGRADE");
								return true;
							}
							case 0x1C7: {
								if (!settings["COMPACTOR INSTRUCTIONS"]) break;
								print("COMPACTOR INSTRUCTIONS");
								return true;
							}
							case 0x279: {
								if (!settings["Drink Fizzy Faz!!!"]) break;
								print("Drink Fizzy Faz!!!");
								return true;
							}
							case 0x288: {
								if (!settings["Easy Money"]) break;
								print("Easy Money");
								return true;
							}
							case 0x156: {
								if (!settings["False Alarm"]) break;
								print("False Alarm");
								return true;
							}
							case 0x201: {
								if (!settings["Food Storage"]) break;
								print("Food Storage");
								return true;
							}
							case 0x1E1: {
								if (!settings["HI DAVE"]) break;
								print("HI DAVE");
								return true;
							}
							case 0x1BB: {
								if (!settings["Hide the Mix"]) break;
								print("Hide the Mix");
								return true;
							}
							case 0x1E7: {
								if (!settings["IT IS HAPPENING AGAIN"]) break;
								print("IT IS HAPPENING AGAIN");
								return true;
							}
							case 0x224: {
								if (!settings["Job Security"]) break;
								print("Job Security");
								return true;
							}
							case 0x296: {
								if (!settings["MARKED FOR DELETION"]) break;
								print("MARKED FOR DELETION");
								return true;
							}
							case 0x1B3: {
								if (!settings["MISSING"]) break;
								print("MISSING");
								return true;
							}
							case 0x22A: {
								if (!settings["Monty Mischief"]) break;
								print("Monty Mischief");
								return true;
							}
							case 0x230: {
								if (!settings["NIGHT SHIFT"]) break;
								print("NIGHT SHIFT");
								return true;
							}
							case 0x236: {
								if (!settings["Night Terrors"]) break;
								print("Night Terrors");
								return true;
							}
							case 0x1F0: {
								if (!settings["No Flash Photography"]) break;
								print("No Flash Photography");
								return true;
							}
							case 0x291: {
								if (!settings["NO QUESTIONS ASKED"]) break;
								print("NO QUESTIONS ASKED");
								return true;
							}
							case 0x261: {
								if (!settings["OLD ELEVATOR"]) break;
								print("OLD ELEVATOR");
								return true;
							}
							case 0x188: {
								if (!settings["OUT OF ORDER"]) break;
								print("OUT OF ORDER");
								return true;
							}
							case 0x1F5: {
								if (!settings["Party Foul"]) break;
								print("Party Foul");
								return true;
							}
							case 0x267: {
								if (!settings["PINK SLIP"]) break;
								print("PINK SLIP");
								return true;
							}
							case 0x25B: {
								if (!settings["POWER DRAIN"]) break;
								print("POWER DRAIN");
								return true;
							}
							case 0x176: {
								if (!settings["PQ1 MAINT LOG"]) break;
								print("PQ1 MAINT LOG");
								return true;
							}
							case 0x17F: {
								if (!settings["PQ2 MAINT LOG"]) break;
								print("PQ2 MAINT LOG");
								return true;
							}
							case 0x26B: {
								if (!settings["QUESTION"]) break;
								print("QUESTION");
								return true;
							}
							case 0x1AB: {
								if (!settings["Re-Theme"]) break;
								print("Re-Theme");
								return true;
							}
							case 0x1DB: {
								if (!settings["RECYCLED PIZZA?"]) break;
								print("RECYCLED PIZZA?");
								return true;
							}
							case 0x191: {
								if (!settings["RED FLAG"]) break;
								print("RED FLAG");
								return true;
							}
							case 0x1C1: {
								if (!settings["SAFETY CHECK"]) break;
								print("SAFETY CHECK");
								return true;
							}
							case 0x255: {
								if (!settings["SINKHOLE"]) break;
								print("SINKHOLE");
								return true;
							}
							case 0x249: {
								if (!settings["SORE WINNER"]) break;
								print("SORE WINNER");
								return true;
							}
							case 0x211: {
								if (!settings["Stolen Property"]) break;
								print("Stolen Property");
								return true;
							}
							case 0x24F: {
								if (!settings["TEST DRIVERS WANTED"]) break;
								print("TEST DRIVERS WANTED");
								return true;
							}
							case 0x218: {
								if (!settings["THE ANSWER"]) break;
								print("THE ANSWER");
								return true;
							}
							case 0x282: {
								if (!settings["TORN PAPER"]) break;
								print("TORN PAPER");
								return true;
							}
							case 0x1ED: {
								if (!settings["ULTIMATE PARTY HOST"]) break;
								print("ULTIMATE PARTY HOST");
								return true;
							}
							case 0x1A3: {
								if (!settings["Understudy"]) break;
								print("Understudy");
								return true;
							}
						}
					}
					//extraneous items:
					//Fazerblasters
					//Daycare Pass
					//Cameras
					//Repaired Head
					//Badges
					if (settings["Equipment"]){
						if (current.itemCount > old.itemCount){
							if (settings["E_Fazerblast"]){
								if (vars.checkItem("Grey Fazerblaster", 12120, 31180, 1530)){
									return true;
								}
								if (vars.checkItem("Golden Fazerblaster", 13930, 31285, 1530)){
									return true;
								}
							}
						}
						if (settings["E_Lobby"]){
							if (900 <= current.pos.X && current.pos.X <= 1300 && 23300 <= current.pos.Y && current.pos.Y <= 23600 && 1400 <= current.pos.Z && current.pos.Z <= 1600){
								if (current.itemCount == old.itemCount - 1){
									vars.nLobbyItemsUsed++;
								}
								if (settings["Daycare Pass"] && vars.nLobbyItemsUsed == 2 && current.itemCount == old.itemCount - 1){
									print("Daycare Pass");
									return true;
								}
							}
						}
						if (settings["E_Utility Tunnels"]){
							if (current.itemCount > old.itemCount){
								if (vars.checkItem("Pizzaplex Cameras", 5350, 22975, 1505)){
									return true;
								}
							}
						}
						if (settings["E_West Arcade"]){
							if (vars.checkTime("Repaired Head", vars.tRepairedHead, 5, 30)){
								vars.tRepairedHead = false;
								return true;
							}
						}
					}
					if (settings["Security Badges"]){
						if (current.securityBadgeCount > old.securityBadgeCount){
							if (settings["Security Badge " + current.securityBadgeCount]){
								print("Security Badge " + current.securityBadgeCount);
								return true;
							}
						}
					}
				}
			}
			if (settings["Positional Splits"]){
				if (current.pos.X != old.pos.X){
					if (settings["P_Bonnie Bowl"]){
						if (vars.checkPosition("Enter Bonnie Bowl", vars.pEnBonnieBowl, 5970, 6280, 37000, 37300, 3200, 3700)){
							vars.pEnBonnieBowl = false;
							return true;
						}
					}
					if (settings["P_Daycare"]){
						if(vars.checkTime("Enter Daycare", vars.tEnDaycare, 0, 30)){
							vars.tEnDaycare = false;
							return true;
						}
					}
					if (settings["P_El Chips"]){
						if (vars.checkPosition("Enter El Chips", vars.pEnElChips, -8700, -8445, 34600, 35700, 3200, 3700)){
							vars.pEnElChips = false;
							return true;
						}
					}
					if (settings["P_Fazerblast"]){
						if (vars.checkPosition("Fazerblast Spiral Stairs", vars.pFazerStairs, 13100, 14600, 31830, 33330, 350, 750)){
							vars.pFazerStairs = false;
							return true;
						}
					}
					if (settings["P_Fazerblast Sublobby"]){
						if (vars.checkPosition("Rail Outside Fazerblast", vars.pFazerRail, 6800, 7550, 35586, 35637.4, 1500, 2150)){
							vars.pFazerRail = false;
							return true;
						}
					}
					if (settings["P_Underground Afton Cave"]){
						if (vars.checkPositionSlant("Exit Afton Elevator", vars.pAftonElev, 24027.2, 49603.9, 24166.6, 50010.0, 24200, 49600, -6100, -5500)){
							vars.pAftonElev = false;
							return true;
						}
					}
					if (settings["P_Utility Tunnels"]){
						if (vars.checkPosition("First Aid Vanessa Cutscene", vars.pFirstAid, 4368, 4370, 45005, 45007, -1308, -1306)){
							vars.pFirstAid = false;
							return true;
						}
						if (vars.checkPosition("Freddy Rail Jump", vars.pFredRail, 2250, 2850, 46900, 47500, 400, 900)){
							vars.pFredRail = false;
							return true;
						}
						if (vars.checkPosition("Monty Chase", vars.pMontyChase, 2900, 3400, 29500, 29898.825, 0, 300)){
							vars.pMontyChase = false;
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
					if (settings["P_West Arcade"]){
						if (vars.checkPositionSlant("Enter West Arcade", vars.pEnWestArcade, 5423.8, 28282.9, 5218.5, 28137.5, 5500, 28000, 2000, 2500)){
							vars.pEnWestArcade = false;
							vars.pExWestArcade = true;
							return true;
						}
						if (vars.checkPositionSlant("Exit West Arcade", vars.pExWestArcade, 4708.4, 29906.8, 4913.7, 30052.4, 4600, 30200, 3200, 3700)){
							vars.pExWestArcade = false;
							return true;
						}
					}
				}
			}
			if (settings["Time Splits"] && !vars.onMenu){
				if (current.hourClock != old.hourClock || current.minuteClock != old.minuteClock){
					if (vars.checkTime("Exit Vents (11:30PM)", vars.tVents, -1, 30)){
						vars.tVents = false;
						return true;
					}
					if (vars.checkTime("Freddy Recharge (11:45PM)", vars.tUtilityRecharge, -1, 45)){
						vars.tUtilityRecharge = false;
						return true;
					}
					if (current.pos.X >= 250 && 10 <= current.pos.Y && current.pos.Y <= 23100){
						if (vars.checkTime("Front Entrance Closure (12:00AM)", vars.tFrontEntrance, 0, 0)){
							print("12AM (no split)");
							if (vars.checkPosition("Front Entrance Closure (12:00AM)", vars.tFrontEntrance, 500, 2500, 19500, 23000, 1450, 2000)){
								print("12AM (split)");
								vars.tFrontEntrance = false;
								return true;
							}
						}
						if (vars.checkTime("Enter Daycare (12:30AM)", vars.tEnDaycare, 0, 30)){
							vars.tEnDaycare = false;
							return true;
						}
						if (vars.checkTime("Daycare Nighttime (12:55AM)", vars.tDaycareNighttime, 0, 55)){
							vars.tDaycareNighttime = false;
							return true;
						}
					}
					if (vars.checkTime("Daycare Vanny Cutscene (1:00AM)", vars.tDaycareRecharge, 1, 0)){
						vars.tDaycareRecharge = false;
						return true;
					}
					if (vars.checkTime("Mini Music Man Chase (1:15AM)", vars.t1_15, 1, 15)){
						vars.t1_15 = false;
						return true;
					}
					if (vars.checkTime("Pizzabot (1:30AM)", vars.tPizzabot, 1, 30)){
						vars.tPizzabot = false;
						return true;
					}
					if (vars.checkTime("White Woman Abduction (2:00AM)", vars.tWhiteWoman, 2, 0)){
						vars.tWhiteWoman = false;
						return true;
					}
					if (vars.checkTime("Dead Fred (2:15AM)", vars.tDeadFred, 2, 15)){
						vars.tDeadFred = false;
						return true;
					}
					if (vars.checkTime("Backstage Pass (2:30AM)", vars.tBackstagePass, 2, 30)){
						vars.tBackstagePass = false;
						return true;
					}
					if (vars.checkTime("Use Showtime Disk (2:45AM)", vars.tShowtimeDisk, 2, 45)){
						vars.tShowtimeDisk = false;
						return true;
					}
					if (vars.checkTime("Freddy Abduction Recharge (3:00AM)", vars.tAbductionRecharge, 3, 1)){
						vars.tAbductionRecharge = false;
						return true;
					}
					if (vars.checkTime("Vanessa Repair Cutscene (3:15AM)", vars.tVanessaRepair, 3, 15)){
						vars.tVanessaRepair = false;
						return true;
					}
					if (vars.checkTime("Freddy Power Upgrade (3:30AM)", vars.tPowerUpgrade, 3, 30)){
						vars.tPowerUpgrade = false;
						return true;
					}
					if (vars.checkTime("Party Pass Recharge (4:00AM)", vars.tPartyPassRecharge, 4, 0)){
						vars.tPartyPassRecharge = false;
						return true;
					}
					if (vars.checkTime("Golden Fazerblaster (4:15AM)", vars.tGoldBlaster, 4, 15)){
						vars.tGoldBlaster = false;
						return true;
					}
					if (settings["Monty Mix / Mazercise Key (4:30AM)"]){
						if (current.splashScreen > old.splashScreen){
							if (vars.checkItem("Monty Mix / Mazercise Key (4:30AM)", 15060, 30205, 3425)){
								return true;
							}
							if (vars.checkItem("Monty Mix / Mazercise Key (4:30AM)", -17450, 31605, 70)){
								return true;
							}
						}
					}
					if (vars.checkTime("Leave Sewers (4:40AM)", vars.tLeaveSewers, 4, 40)){
						vars.tLeaveSewers = false;
						return true;
					}
					if (vars.checkTime("Freddy Upgrade Recharge (5:00AM)", vars.tFreddyUpgrade, 5, 0)){
						vars.tFreddyUpgrade = false;
						return true;
					}
					if (vars.checkTime("Damaged Head (5:15AM)", vars.tDamagedHead, 5, 15)){
						vars.tDamagedHead = false;
						return true;
					}
					if (vars.checkTime("Repaired Head (5:30AM)", vars.tRepairedHead, 5, 30)){
						vars.tRepairedHead = false;
						return true;
					}
					if (vars.checkTime("Finish Roxy Sequence (5:40AM)", vars.tRoxySequence, 5, 40)){
						vars.tRoxySequence = false;
						return true;
					}
					if (vars.checkTime("Freddy Eye Upgrade Nighttime (5:50AM)", vars.tEyeUpgradeNighttime, 5, 50)){
						vars.tEyeUpgradeNighttime = false;
						return true;
					}
					if (vars.checkTime("Reach Exit Door (6:00AM)", vars.t6am, 6, 0)){
						vars.t6am = false;
						return true;
					}
				}
			}
			break;
		}
	}
}