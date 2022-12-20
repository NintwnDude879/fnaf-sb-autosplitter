//Five Nights at Freddy's: Security Breach | v1.2.1
//Autosplitter created by Daltone#2617 and NintenDude#0447
//Original autosplitter created by patrogue#4071
//Special thanks to CheatingMuppet and Cheat The Game for making tutorials and helping understand how to use Cheat Engine

//Todo:
//Piturrete suggestion- add message bags
//Redo positions
//new monty ball pointer

//base address change: 0
state("fnaf9-Win64-Shipping", "v1.04"){
	//Keeps track of Freddy's power
	int freddyPower: 0x0441B738, 0x8, 0x10, 0x38, 0xB8;

	//Arcade pointers
	int golfStrokeCount: 0x0441FCB0, 0x128, 0x378, 0x270, 0x230, 0x40;
	bool pq3Attack: 0x0441C5F0, 0xDE8, 0x38, 0x0, 0x30, 0x258, 0x3F9;

	//Counter pointers
	int DGens: 0x0441FCB0, 0x98, 0x40, 0x128, 0xA8, 0x580, 0x290, 0x14;
	int MGBucket: 0x0441FCB0, 0x98, 0x70, 0x128, 0xA8, 0xF0, 0x228, 0x158;
	int FBFlags: 0x0441FCB0, 0x98, 0xA8, 0x128, 0xA8, 0x8, 0x3D8, 0x418, 0x290;

	//Player information
	float worldCheck: 0x0441C5F0, 0xDE8, 0x38, 0x0, 0x30, 0x268, 0x298, 0x1D4;

	//Buttons that start cutscenes (pressed = 0)
	bool vannyEndButton: 0x0441FCB0, 0x98, 0xA0, 0x128, 0xA8, 0x2F8, 0x240;
	int escapeEndLeaveButtonEast: 0x0441FCB0, 0x98, 0x2D0, 0x128, 0xA8, 0x38, 0x3D8, 0x268;
	int carEndLeaveButton: 0x0441FCB0, 0x98, 0x2D0, 0x128, 0xA8, 0x40, 0x3D8, 0x268;
	int fireEndLeaveButton: 0x0441FCB0, 0x98, 0x2D0, 0x128, 0xA8, 0x48, 0x3D8, 0x268;
	int escapeEndLeaveButtonWest: 0x0441FCB0, 0x98, 0x2D0, 0x128, 0xA8, 0x50, 0x3D8, 0x268;

	//Keeps track of when an ending cutscene has started playing (end = 1)
	bool aftonEnd: 0x0441C5C8, 0x58, 0x388, 0x118, 0x260, 0xD8;
	bool vannyEnd: 0x0441C5C8, 0x58, 0x388, 0x118, 0x2D8, 0xD8;
	bool fireEnd: 0x0441C5C8, 0x58, 0x388, 0x118, 0x318, 0xD8;
	bool carEnd: 0x0441C5C8, 0x58, 0x388, 0x118, 0x358, 0xD8;
	bool escapeEnd: 0x0441C5C8, 0x58, 0x388, 0x118, 0x398, 0xD8;
	bool pqEnd: 0x0441C5C8, 0x58, 0x388, 0x118, 0x3D8, 0xD8;

	//Afton's health (starts at 750, -100 per button)
	float aftonHealth: 0x441FCB0, 0x188, 0xE0, 0x98, 0x160, 0x2B8, 0x6E8, 0x800;

	//Keeps track of items
	int securityBadgeCount: 0x0441B738, 0x8, 0x10, 0x38, 0xC0;
	int itemCount: 0x0441B738, 0x8, 0x10, 0x38, 0x138;
	int splashScreen: 0x0441FCB0, 0x98, 0x8A0, 0x128, 0xB8, 0x128, 0x328, 0x3C8;

	//In-Game Clock
	int hourClock: 0x0441C5F0, 0xDE8, 0x38, 0x0, 0x30, 0x670, 0x230, 0x258;
	int minuteClock: 0x0441C5F0, 0xDE8, 0x38, 0x0, 0x30, 0x670, 0x230, 0x25C;

	//Used to pause the timer (pause = 3, menu = 0, blackScreen != 0)
 	bool pause: 0x0441C5F0, 0x8B8;
	bool menu: 0x0441FCB0, 0x128, 0x1A8, 0x20, 0x100, 0xA0, 0x228;
	bool hasLoaded: 0x0441FCB0, 0x98, 0x8A0, 0x20, 0x128, 0x3B0;

	//Elevator pointers (elevator in motion = 1)
	bool kitElev: 0x0441FCB0, 0x98, 0x7D0, 0x128, 0xA8, 0xB8, 0x2E8;
	bool monGElev: 0x0441FCB0, 0x98, 0x808, 0x128, 0xA8, 0x68, 0x2D8, 0x4;
	bool foy2Elev: 0x0441FCB0, 0x98, 0x818, 0x128, 0xA8, 0x60, 0x2D8, 0x4;
	bool foy1Elev: 0x0441FCB0, 0x98, 0x818, 0x128, 0xA8, 0xB8, 0x2D8, 0x4;
	bool bonBElev: 0x0441FCB0, 0x98, 0x828, 0x128, 0xA8, 0x58, 0x2D8, 0x4;
	bool fazerElev: 0x0441FCB0, 0x98, 0x830, 0x128, 0xA8, 0x50, 0x2E8;
	bool WAElev: 0x0441FCB0, 0x98, 0x838, 0x128, 0xA8, 0xB0, 0x2D8, 0x4;
	bool chicaElev: 0x0441FCB0, 0x98, 0x848, 0x128, 0xA8, 0xC8, 0x2E8;
	bool montyElev: 0x0441FCB0, 0x98, 0x848, 0x128, 0xA8, 0x128, 0x2E8;
	bool roxyElev: 0x0441FCB0, 0x98, 0x848, 0x128, 0xA8, 0x288, 0x2E8;
	bool freddyElev: 0x0441FCB0, 0x98, 0x848, 0x128, 0xA8, 0x2D8, 0x2E8;
	bool aftonElev: 0x0441FCB0, 0x98, 0x890, 0x128, 0xA8, 0xB8, 0x2D8, 0x4;
}
//base address change: 1290
state("fnaf9-Win64-Shipping", "v1.05"){
	//Keeps track of Freddy's power
	int freddyPower: 0x0441C9C8, 0x8, 0x10, 0x38, 0xB8;

	//Arcade pointers
	int golfStrokeCount: 0x04420F40, 0x128, 0x378, 0x270, 0x230, 0x40;
	int pq3Attack: 0x0441D880, 0xDE8, 0x38, 0x0, 0x30, 0x258, 0x3F9;

	//Counter pointers
	int FBFlags: 0x04420F40, 0x98, 0xA8, 0x128, 0xA8, 0x8, 0x3D8, 0x418, 0x290;
	int DGens: 0x0441D858, 0x50, 0x98, 0x40, 0x128, 0xA8, 0x58, 0x54C;
	int MGBucket: 0x04420F40, 0x98, 0x70, 0x128, 0x98, 0x490, 0x228, 0x158;

	//Player information
	float worldCheck: 0x0441D880, 0xDE8, 0x38, 0x0, 0x30, 0x268, 0x298, 0x1D4;

	//Buttons that start cutscenes (pressed = 0)
	bool vannyEndButton: 0x04420F40, 0x98, 0xA0, 0x128, 0xA8, 0x2F8, 0x240;
	int escapeEndLeaveButtonEast: 0x04420F40, 0x98, 0x2D0, 0x128, 0xA8, 0x38, 0x3E0, 0x268;
	int fireEndLeaveButton: 0x04420F40, 0x98, 0x2D0, 0x128, 0xA8, 0x48, 0x3E0, 0x268;
	int carEndLeaveButton: 0x04420F40, 0x98, 0x2D0, 0x128, 0xA8, 0x40, 0x3E0, 0x268;
	int escapeEndLeaveButtonWest: 0x04420F40, 0x98, 0x2D0, 0x128, 0xA8, 0x50, 0x3E0, 0x268;

	//Keeps track of when an ending cutscene has started playing (end = 1)
	bool aftonEnd: 0x0441D858, 0x58, 0x3B0, 0x118, 0x260, 0xD8;
	bool vannyEnd: 0x0441D858, 0x58, 0x3B0, 0x118, 0x2D8, 0xD8;
	bool fireEnd: 0x0441D858, 0x58, 0x3B0, 0x118, 0x318, 0xD8;
	bool carEnd: 0x0441D858, 0x58, 0x3B0, 0x118, 0x358, 0xD8;
	bool escapeEnd: 0x0441D858, 0x58, 0x3B0, 0x118, 0x398, 0xD8;
	bool pqEnd: 0x0441D858, 0x58, 0x3B0, 0x118, 0x3D8, 0xD8;

	//Afton's health (starts at 750, -100 per button)
	float aftonHealth: 0x04420F40, 0x188, 0xE0, 0x98, 0x160, 0x2B8, 0x6E8, 0x800;

	//Keeps track of items (splashScreen = 4)
	int splashScreen: 0x04420F40, 0x98, 0x8A0, 0x128, 0xB8, 0x128, 0x328, 0x3C8;
	int itemCount: 0x0441C9C8, 0x8, 0x10, 0x38, 0x138;
	int securityBadgeCount: 0x0441C9C8, 0x8, 0x10, 0x38, 0xC0;

	//In-Game Clock
	int hourClock: 0x0441D880, 0xDE8, 0x38, 0x0, 0x30, 0x670, 0x230, 0x258;
	int minuteClock: 0x0441D880, 0xDE8, 0x38, 0x0, 0x30, 0x670, 0x230, 0x25C;

	//Used to pause the timer (pause = 3, menu = 0)
 	bool pause: 0x0441D880, 0x8B8;
	bool menu: 0x04420F40, 0x128, 0x1A8, 0x20, 0x100, 0xA0, 0x228;
	int blackScreen: 0x0444C568, 0x184;

	//Elevator pointers (elevator in motion = 1)
	bool kitElev: 0x04420F40, 0x98, 0x7D0, 0x128, 0xA8, 0xB8, 0x2E8;
	bool monGElev: 0x04420F40, 0x98, 0x808, 0x128, 0xA8, 0x68, 0x2D8, 0x4;
	bool foy2Elev: 0x04420F40, 0x98, 0x818, 0x128, 0xA8, 0x60, 0x2D8, 0x4;
	bool foy1Elev: 0x04420F40, 0x98, 0x818, 0x128, 0xA8, 0xB8, 0x2D8, 0x4;
	bool bonBElev: 0x04420F40, 0x98, 0x828, 0x128, 0xA8, 0x58, 0x2D8, 0x4;
	bool fazerElev: 0x04420F40, 0x98, 0x830, 0x128, 0xA8, 0x50, 0x2E8;
	bool WAElev: 0x04420F40, 0x98, 0x838, 0x128, 0xA8, 0xB0, 0x2D8, 0x4;
	bool chicaElev: 0x04420F40, 0x98, 0x848, 0x128, 0xA8, 0xC8, 0x2E8;
	bool montyElev: 0x04420F40, 0x98, 0x848, 0x128, 0xA8, 0x128, 0x2E8;
	bool roxyElev: 0x04420F40, 0x98, 0x848, 0x128, 0xA8, 0x288, 0x2E8;
	bool freddyElev: 0x04420F40, 0x98, 0x848, 0x128, 0xA8, 0x2D8, 0x2E8;
	bool aftonElev: 0x04420F40, 0x98, 0x890, 0x128, 0xA8, 0xB8, 0x2D8, 0x4;
}
//base address change: 13D0
state("fnaf9-Win64-Shipping", "v1.07"){
	//Keeps track of Freddy's power
	int freddyPower: 0x0441CB08, 0x8, 0x10, 0x38, 0xB8;

	//Arcade pointers
	int golfStrokeCount: 0x04421080, 0x128, 0x378, 0x270, 0x230, 0x40;
	int pq3Attack: 0x0441D9C0, 0xDE8, 0x38, 0x0, 0x30, 0x258, 0x3F9;

	//Countepos.Yr pointers
	int DGens: 0x441D998, 0x50, 0x98, 0x40, 0x128, 0xA8, 0x58, 0x54C;
	int MGBucket: 0x04421080, 0x98, 0x70, 0x128, 0x98, 0x490, 0x228, 0x158;
	int FBFlags: 0x04421080, 0x98, 0xA8, 0x128, 0xA8, 0x8, 0x3D8, 0x418, 0x290;

	//Positions
	float worldCheck: 0x0441D9C0, 0xDE8, 0x38, 0x0, 0x30, 0x268, 0x298, 0x1D4;

	//Buttons that start cutscenes (pressed = 0)
	bool vannyEndButton: 0x04421080, 0x98, 0xA0, 0x128, 0xA8, 0x2F8, 0x240;
	int escapeEndLeaveButtonWest: 0x04421080, 0x98, 0x2D0, 0x128, 0xA8, 0x48, 0x3E0, 0x268;
	int escapeEndLeaveButtonEast: 0x04421080, 0x98, 0x2D0, 0x128, 0xA8, 0x60, 0x3E0, 0x268;
	int carEndLeaveButton: 0x04421080, 0x98, 0x2D0, 0x128, 0xA8, 0x50, 0x3E0, 0x268;
	int fireEndLeaveButton: 0x04421080, 0x98, 0x2D0, 0x128, 0xA8, 0x58, 0x3E0, 0x268;

	//Keeps track of when an ending cutscene has started playing (end = 1)
	bool aftonEnd: 0x0441D998, 0x58, 0x3B0, 0x118, 0x260, 0xD8;
	bool vannyEnd: 0x0441D998, 0x58, 0x3B0, 0x118, 0x2D8, 0xD8;
	bool fireEnd: 0x0441D998, 0x58, 0x3B0, 0x118, 0x318, 0xD8;
	bool carEnd: 0x0441D998, 0x58, 0x3B0, 0x118, 0x358, 0xD8;
	bool escapeEnd: 0x0441D998, 0x58, 0x3B0, 0x118, 0x398, 0xD8;
	bool pqEnd: 0x0441D998, 0x58, 0x3B0, 0x118, 0x3D8, 0xD8;

	//Afton's health (starts at 750, -100 per button)
	float aftonHealth: 0x4421080, 0x188, 0xE0, 0x98, 0x160, 0x2B8, 0x6E8, 0x800;

	//Keeps track of items
	int securityBadgeCount: 0x0441CB08, 0x8, 0x10, 0x38, 0xC0;
	int itemCount: 0x0441CB08, 0x8, 0x10, 0x38, 0x138;
	int splashScreen: 0x444C6B0, 0x98, 0x8A0, 0x128, 0xB8, 0x128, 0x328, 0x3C8;

	//In-Game Clock
	int hourClock: 0x0441D9C0, 0xDE8, 0x38, 0x0, 0x30, 0x670, 0x230, 0x258;
	int minuteClock: 0x0441D9C0, 0xDE8, 0x38, 0x0, 0x30, 0x670, 0x230, 0x25C;

	//Menus
 	bool pause: 0x0441D9C0, 0x8B8;
	bool menu: 0x04421080, 0x128, 0x1A8, 0x20, 0x100, 0xA0, 0x228;
	int blackScreen: 0x444C6B0, 0x184;

	//Elevator pointers (elevator in motion = 1)
	bool kitElev: 0x04421080, 0x98, 0x7D0, 0x128, 0xA8, 0xB8, 0x2E8;
	bool monGElev: 0x04421080, 0x98, 0x808, 0x128, 0xA8, 0x68, 0x2D8, 0x4;
	bool foy2Elev: 0x04421080, 0x98, 0x818, 0x128, 0xA8, 0x60, 0x2D8, 0x4;
	bool foy1Elev: 0x04421080, 0x98, 0x818, 0x128, 0xA8, 0xB8, 0x2D8, 0x4;
	bool bonBElev: 0x04421080, 0x98, 0x828, 0x128, 0xA8, 0x58, 0x2D8, 0x4;
	bool fazerElev: 0x04421080, 0x98, 0x830, 0x128, 0xA8, 0x50, 0x2E8;
	bool WAElev: 0x04421080, 0x98, 0x838, 0x128, 0xA8, 0xB0, 0x2D8, 0x4;
	bool chicaElev: 0x04421080, 0x98, 0x848, 0x128, 0xA8, 0xC8, 0x2E8;
	bool montyElev: 0x04421080, 0x98, 0x848, 0x128, 0xA8, 0x128, 0x2E8;
	bool roxyElev: 0x04421080, 0x98, 0x848, 0x128, 0xA8, 0x288, 0x2E8;
	bool freddyElev: 0x04421080, 0x98, 0x848, 0x128, 0xA8, 0x2D8, 0x2E8;
	bool aftonElev: 0x04421080, 0x98, 0x890, 0x128, 0xA8, 0xB8, 0x2D8, 0x4;
}
//base address change: 8C00
state("fnaf9-Win64-Shipping", "v1.11"){
	//Keeps track of Freddy's battery popup
	bool freddyThing: 0x044288B0, 0x128, 0x310, 0x120, 0x18C;

	//Arcade pointers
	int golfStrokeCount: 0x044288B0, 0x128, 0x378, 0x270, 0x230, 0x40;
	int pq3Attack: 0x044251F0, 0xDE8, 0x38, 0x0, 0x30, 0x258, 0x3F9;

	//Counter pointers
	int DGens: 0x044288B0, 0x98, 0x40, 0x128, 0xA8, 0x580, 0x290, 0x14;
	int MGBucket: 0x044288B0, 0x98, 0x70, 0x128, 0xA8, 0x108, 0x228, 0x158;
	int FBFlags: 0x044288B0, 0x98, 0xA8, 0x128, 0xA8, 0x8, 0x3E0, 0x418, 0x290;

	//Player information
	float worldCheck: 0x044251F0, 0xDE8, 0x38, 0x0, 0x30, 0x268, 0x298, 0x1D4;

	//Buttons that start cutscenes (pressed = 0)
	bool vannyEndButton: 0x044288B0, 0x98, 0xA0, 0x128, 0xA8, 0x308, 0x240;
	int escapeEndLeaveButtonEast: 0x044288B0, 0x98, 0xC80, 0x128, 0xA8, 0x128, 0x3E0, 0x270;
	int carEndLeaveButton: 0x044288B0, 0x98, 0x2C8, 0x128, 0xA8, 0x130, 0x3E0, 0x270;
	int fireEndLeaveButton: 0x044288B0, 0x98, 0x2C8, 0x128, 0xA8, 0x138, 0x3E0, 0x270;
	int escapeEndLeaveButtonWest: 0x044288B0, 0x98, 0x2C8, 0x128, 0xA8, 0x140, 0x3E0, 0x270;

	//Keeps track of when an ending cutscene has started playing (end = 1)
	bool aftonEnd: 0x044251C0, 0x58, 0x3B0, 0x390, 0x260, 0xD8;
	bool vannyEnd: 0x044251C0, 0x58, 0x3B0, 0x390, 0x2D8, 0xD8;
	bool fireEnd: 0x044251C0, 0x58, 0x3B0, 0x390, 0x318, 0xD8;
	bool carEnd: 0x044251C0, 0x58, 0x3B0, 0x390, 0x358, 0xD8;
	bool escapeEnd: 0x044251C0, 0x58, 0x3B0, 0x390, 0x398, 0xD8;
	bool pqEnd: 0x044251C0, 0x58, 0x3B0, 0x390, 0x3D8, 0xD8;

	//Afton's health (starts at 750, -100 per button)
	float aftonHealth: 0x44288B0, 0x188, 0xE0, 0x98, 0x160, 0x2B8, 0x6D8, 0x800;

	//Keeps track of items (splashScreen = 4)
	int securityBadgeCount: 0x04424338, 0x8, 0x10, 0x38, 0xC0;
	int itemCount: 0x04424338, 0x8, 0x10, 0x38, 0x138;
	int splashScreen: 0x044288B0, 0x98, 0x8A0, 0x128, 0xB8, 0x128, 0x328, 0x3C8;

	//In-Game Clock
	int hourClock: 0x044251F0, 0xDE8, 0x38, 0x0, 0x30, 0x670, 0x230, 0x258;
	int minuteClock: 0x044251F0, 0xDE8, 0x38, 0x0, 0x30, 0x670, 0x230, 0x25C;

	//Used to pause the timer (pause = 3, menu = 0)
 	bool pause: 0x044251F0, 0x8B8;
	bool menu: 0x044288B0, 0x128, 0x1A8, 0x20, 0x100, 0xA0, 0x228;
	int blackScreen: 0x04453ED8, 0x184;

	//Elevator pointers (elevator in motion = 1)
	bool kitElev: 0x044288B0, 0x98, 0x7D0, 0x128, 0xA8, 0xB8, 0x2E8;
	bool monGElev: 0x044288B0, 0x98, 0x808, 0x128, 0xA8, 0xA0, 0x2E8;
	bool foy2Elev: 0x044288B0, 0x98, 0x818, 0x128, 0xA8, 0xA8, 0x2D8, 0x4;
	bool foy1Elev: 0x044288B0, 0x98, 0x818, 0x128, 0xA8, 0xB8, 0x2D8, 0x4;
	bool bonBElev: 0x044288B0, 0x98, 0x828, 0x128, 0xA8, 0x58, 0x2D8, 0x4;
	bool fazerElev: 0x044288B0, 0x98, 0x830, 0x128, 0xA8, 0x50, 0x2E8;
	bool WAElev: 0x044288B0, 0x98, 0x838, 0x128, 0xA8, 0xB0, 0x2D8, 0x4;
	bool montyElev: 0x044288B0, 0x98, 0x848, 0x128, 0xA8, 0x2C0, 0x2E8;
	bool freddyElev: 0x044288B0, 0x98, 0x848, 0x128, 0xA8, 0x2D0, 0x2E8;
	bool roxyElev: 0x044288B0, 0x98, 0x848, 0x128, 0xA8, 0x2E0, 0x2E8;
	bool chicaElev: 0x044288B0, 0x98, 0x848, 0x128, 0xA8, 0x300, 0x2E8;
	bool aftonElev: 0x044288B0, 0x98, 0x890, 0x128, 0xA8, 0xB8, 0x2D8, 0x4;
}

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
	settings.Add("D_Kids Cove Sublobby", false, "Kids Cove Sublobby");
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

	settings.CurrentDefaultParent = "D_Kids Cove Sublobby";
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
	settings.Add("Roxy's Eye Deload", false);

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

	settings.CurrentDefaultParent = "Retro CDs";
	settings.Add("CD_Backstage Podium", false, "Backstage");
	settings.Add("CD_Bonnie Bowl", false, "Bonnie Bowl");
	settings.Add("CD_Chica's Bakery", false, "Chica's Bakery");
	settings.Add("CD_East Atrium Stage", false, "East Atrium");
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

	print("Size = " + gameSize.ToString());

	int posBase = 0;
	
	switch (gameSize){
		default: {
			MessageBox.Show("Sorry, it seems like the version  of Security Breach that you're using isn't currently supported!\n\nIf this seems like a mistake, or you would like to suggest an additional version to support, please go to https://forms.gle/jxidK6RFToEXzUDe7 or contact either Daltone#2617 or Nintendude#0447 on Discord.\n\nSorry for the inconvenience.", "Error: Version Not Supported", MessageBoxButtons.OK, MessageBoxIcon.Error).ToString();
			version = "Unsupported";
			return;
		}

		case 76210176: {
			version = "v1.04";
			posBase = 0x441C5F0;
			break;
		}
		
		case 76214272: {
			version = "v1.05"; 
			posBase = 0x441D880;
			break;
		}

		case 76218368: {
			version = "v1.07"; 
			posBase = 0x441D9C0;
			break;
		}

		case 76251136: {
			version = "v1.11"; 
			posBase = 0x44251F0;
			break;
		}
	}

	print("Version = " + version);
	print("posBase = " + posBase);

	vars.posWatcher = new MemoryWatcher<Vector3f>(new DeepPointer(posBase, 0xDE8, 0x38, 0x0, 0x30, 0x258, 0x298, 0x1D0));
}

update {
	if (version == "Unsupported") return false;

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

	vars.posWatcher.Update(game);
	current.pos = vars.posWatcher.Current;
	old.pos = vars.posWatcher.Old;
}

start {
	//Functions and Dictionaries
	vars.useDictionary = new Dictionary<string, int>();

	foreach (var data in vars.elevatorPointers){
		vars.useDictionary[data.Item1] = 0;
	}
	
	vars.printAllPointers = (Action)(() => {
		if (version != "v1.11"){
			print("freddyPower: " + old.freddyPower.ToString() + " => " + current.freddyPower.ToString());
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
		if (version == "v1.04"){
			print("hasLoaded: " + old.hasLoaded.ToString() + " => " + current.hasLoaded.ToString());
		}
		else {
			print("blackScreen: " + old.blackScreen.ToString() + " => " + current.blackScreen.ToString());
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

	vars.checkArcadePosition = (Func<double, double, double, double, double, double, bool>)((xLB, xUB, yLB, yUB, zLB, zUB) => {
		if (xLB > old.pos.X) return false;
		if (old.pos.X > xUB) return false;
		if (yLB > old.pos.Y) return false;
		if (old.pos.Y > yUB) return false;
		if (zLB > current.pos.Z) return false;
		if (current.pos.Z > zUB) return false;
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
		vars.pq2_8 = false;
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
		vars.iBowlingPass = true;
		vars.nLobbyItemsUsed = 0;
		vars.iFazcam = true;
		vars.iMazercisePass = true;

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

		vars.isLoading = true;
		vars.onMenu = true;
		do {
			if (version == "v1.04"){
				vars.isLoading = false;
			}
			else {
				if (current.worldCheck == 0) break;
				if (old.worldCheck != 0) break;
				vars.loadingConstant = current.blackScreen;
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

		if (version == "v1.11"){
			if (!current.freddyThing) break;
			if (old.freddyThing) break;
			print("Start Timer");
			return true;
		}
		else {
			if (current.freddyPower >= old.freddyPower) break;
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

	foreach (var data in vars.elevatorPointers){
		do {
			if (!settings[data.Item1]) break;
			if (!data.Item2) break;

			if (!data.Item3){
				vars.useDictionary[data.Item1]++;
				print(data.Item1 + ": #" + vars.useDictionary[data.Item1].ToString());
			}

			if (settings[data.Item1 + "_EUOE"]){
				print("EveryUse");
				return true;
			}
			else if (settings[data.Item1 + "_POOU"]){
				if (!settings[data.Item1 + "_n" + vars.useDictionary[data.Item1].ToString()]) break;

				print("OnlyOnUse#");
				return true;
			}
		} while (false);
	}
	
	do {
		if (!settings["Stop Timer When Loading"]) break;

		if (version == "v1.04"){
				if (current.hasLoaded){
					vars.isLoading = false;
					break;
				}
				else if ((current.worldCheck != 0 || (old.pause && old.worldCheck != 0)) && !vars.isLoading){
					print("Stop Timer When Loading");
					vars.isLoading = true;
				}

				if (vars.isLoading){
					return true;
				}
		}
		else {
			if (current.blackScreen != vars.loadingConstant) break;
			if (old.blackScreen == vars.loadingConstant) break;
			print("Stop Timer When Loading");
			return true;
		}
	} while (false);

	do {
		if (!settings["Stop Timer On Menu"]) break;

		if ((current.worldCheck == 0 && (old.worldCheck != 0 && old.pause)) || current.menu){
			vars.onMenu = true;
			if (!old.menu){
				print("Stop Timer On Menu");
			}
		}
		else if (current.worldCheck != 0 || vars.arcade != "N/A"){
			vars.onMenu = false;
		}

		if (vars.onMenu){
			return true;
		}
	} while (false);

	do {
		if (!settings["Stop Timer When Paused"]) break;
		if (!current.pause) break;
		if (current.worldCheck == 0) break;

		if (!old.pause){
			print("Stop Timer When Paused");
		}

		return true;
	} while (false);

	return false;
}

split {
	if (!settings["Split Settings"]) return false;

	if (current.worldCheck != 0 || vars.isLoading || vars.onMenu){
		if (vars.arcade != "N/A"){
			vars.arcade = "N/A";
			print("Arcade: " + vars.arcade);
		}
	}
	else if (vars.arcade == "N/A"){
		if (vars.checkArcadePosition(-17000, -16500, 27200, 27600, 2000, 2300)){
			vars.arcade = "BB Arcade";
		}
		else if (vars.checkArcadePosition(-18200, -17900, 44100, 44300, 900, 1100)){
			vars.arcade = "Monty Golf";
		}
		else if (vars.checkArcadePosition(7000, 8500, 46500, 48000, 2100, 2300)){
			vars.arcade = "Princess Quest 1";
		}
		else if (vars.checkArcadePosition(7500, 9000, 20500, 21000, 3200, 3400)){
			vars.arcade = "Princess Quest 2";
		}
		else if (vars.checkArcadePosition(17750, 18000, 28775, 29000, 2500, 2700)){
			vars.arcade = "Princess Quest 3";
		}
		print("Arcade: " + vars.arcade);
	}

	string dumbVariable = vars.arcade;
	switch (dumbVariable){
		default: {
			if (!settings["Arcade Splits"]) break;
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
									return true;
								}
							}
							if (settings["pq1_end"] && vars.pq1_end){
								if (old.pos.X >= 4920 && current.pos.X == 0){
									vars.pq1_end = false;
									print("pq1_end");
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
								if (vars.checkPQPosition2("pq2_6", vars.pq2_6)){
									vars.pq2_6 = false;
									return true;
								}
							}
							if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 5, 1975, -185, 190)){
								if (vars.pq2_7){
									vars.pq2_8 = true;
								}
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
									return true;
								}
							}
							if (settings["pq2_end"] && vars.pq2_end){
								if (old.pos.Y >= 4845 && current.pos.Y == 0){
									vars.pq2_end = false;
									print("pq2_end");
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
						if (vars.checkPositionSlant("Foxy Cutout Deload", vars.dFoxyCutout, -5310, 52780, -5500, 523050, -5300, 53235, 1780, 2000)){
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
					if (settings["D_Kids Cove Sublobby"]){
						if (vars.checkPosition("KCD_Fence Deload", vars.dKCFence, -10270, -9038, 31000, 36403, 2062, 3000)){
							vars.dKCFence = false;
							return true;
						}
					}
					if (settings["D_Monty Golf Sublobby"]){
						if (vars.checkPosition("MGD_Fence Deload", vars.dMGFence, -10270, -9038, 38460, 43860, 2062, 3000)){
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
						if (vars.checkPosition("Roxy Cutout Deload", vars.dRoxyCutout, 3700, 3800, 44400, 44500, 1877, 1950)){
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
						if (vars.checkPosition("Roxy's Eye Deload", vars.dRoxyEyes, 19500, 20500, 50750, 51150, 988, 1100)){
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
						if (vars.checkPosition("Plant Deload", vars.dPlant, 9500, 10100, 41800, 42000, 2708, 3000)){
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
						if (current.worldCheck != 0){
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
							if (current.worldCheck != 0){
								print("Escape (East) Button");
								return true;
							}
						}
						if (current.escapeEndLeaveButtonWest == 0 && old.escapeEndLeaveButtonWest != 0){
							if (current.worldCheck != 0){
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
						if (current.worldCheck != 0){
							print("Fire Escape Button");
							return true;
						}
					}
				}
				if (settings["Princess Quest Ending"]){
					if (vars.checkPQPosition1(current.pos.Y, current.pos.X, 1800, 2200, 1635.34, 1700)){
						if (current.pq3Attack > old.pq3Attack){
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
						if (settings["Button " + ((750 - current.aftonHealth) / 100)]){
							print("Button " + ((750 - current.aftonHealth) / 100));
							return true;
						}
					}
				}
			}
			if (settings["Item Splits"]){
				if (settings["Item List"]){
					if (settings["Collectables"]){
						if (current.splashScreen > old.splashScreen){
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
								if (vars.checkItem("Golden Chica", -4750, 29740, 65)){
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
							if (settings["C_Fazerblast Sublobby"]){
								if (vars.checkItem("Freddy Piñata", 7935, 36845, 1560)){
									return true;
								}
								if (vars.checkItem("Space Freddy Keychain", 7310, 32985, 1845)){
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
							if (settings["C_Laundry"]){
								if (vars.checkItem("Glam Roxy Plush", -7465, 24245, 65)){
									return true;
								}
								if (vars.checkItem("L_Old Poster", -6420, 23930, 70)){
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
								if (vars.checkItem("Monty Mask", -280, 28760, 3330)){
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
								if (vars.checkItem("Golden Freddy", -2820, 51910, 1550)){
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
							if (settings["C_Roxy Salon"]){
								if (vars.checkItem("Roxy Magnet", 6295, 46745, 2235)){
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
							if (settings["C_West Arcade"]){
								if (vars.checkItem("WA_Chica Magnet", 10425, 30600, 3355)){
									return true;
								}
								if (vars.checkItem("Glam Monty Plush", 3390, 23860, 2130)){
									return true;
								}
							}
						}
					}
					if (settings["Equipment"]){
						//Fazerblasters and Daycare Pass don't use splashscreen
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
						if (current.itemCount > old.itemCount){
							if (settings["E_Fazerblast"]){
								if (vars.checkItem("Grey Fazerblaster", 12120, 31180, 1530)){
									return true;
								}
								if (vars.checkTime("Golden Fazerblaster", vars.tGoldBlaster, 4, 15)){
									vars.tGoldBlaster = false;
									return true;
								}
							}
						}
						if (current.splashScreen > old.splashScreen){
							//splashscreen items
							if (settings["E_Backstage"]){
								if (vars.checkTime("Backstage Pass", vars.tBackstagePass, 2, 30)){
									vars.tBackstagePass = false;
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
								if (vars.iBowlingPass){
									if (vars.checkItem("Bowling Pass", 8845, 32755, 1495)){
										vars.iBowlingPass = false;
										return true;
									}
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
								if (vars.checkPosition("MA_Mapbot's Map", true, -4700, 1260, 28400, 31550, 2100, 2500)){
									return true;
								}
							}
							if (settings["E_Monty Golf"]){
								if (vars.iFazcam){
									if (vars.checkItem("Fazcam", -17120, 37515, 1005)){
										vars.iFazcam = false;
										return true;
									}
								}
								if (vars.checkItem("MG_Flashlight Upgrade", -15195, 38620, 1005)){
									return true;
								}
								if (vars.iMazercisePass){
									if (vars.checkItem("Mazercise Pass", -17370, 37910, 1005)){
										vars.iMazercisePass = false;
										return true;
									}
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
								if (vars.checkTime("Damaged Head", vars.tDamagedHead, 5, 15)){
									vars.tDamagedHead = false;
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
								if (vars.checkPosition("UT_Mapbot's Map", true, -4000, -280, 42300, 48000, -1400, -900)){
									return true;
								}
								if (vars.checkItem("Pizzaplex Cameras", 5350, 22975, 1505)){
									return true;
								}
							}
							if (settings["E_West Arcade"]){
								if (vars.checkTime("Repaired Head", vars.tRepairedHead, 5, 30)){
									vars.tRepairedHead = false;
									return true;
								}
							}
						}
					}
					if (settings["Retro CDs"]){
						if (current.splashScreen > old.splashScreen){
							if (vars.checkItem("CD_Backstage Podium", -7595, 51270, 1545)){
								return true;
							}
							if (vars.checkItem("CD_Bonnie Bowl", 16900, 31180, 3320)){
								return true;
							}
							if (vars.checkItem("CD_Chica's Bakery", -11245, 46150, 2155)){
								return true;
							}
							if (vars.checkItem("CD_Fazerblast", 8160, 35555, 1500)){
								return true;
							}
							if (vars.checkItem("CD_Kids Cove", -9060, 35820, 1530)){
								return true;
							}
							if (vars.checkItem("CD_Main Atrium", -1690, 36955, 1435)){
								return true;
							}
							if (vars.checkItem("CD_Mazercise", -8710, 41085, 3320)){
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
							if (vars.checkItem("CD_Roxy Raceway", 12740, 48010, 1545)){
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
							if (vars.checkItem("CD_East Atrium Stage", -8325, 41485, 1520)){
								return true;
							}
							if (vars.checkItem("CD_West Arcade", 10910, 24440, 3360)){
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