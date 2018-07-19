COMMAND_BUYITEM = '!storebuy'
WEBSITE_GETCOINS = 'https://priogames.com'
--COINS_OPCODE = 52

storeIndex = {
    [1] = {
		id = '1',
		name = 'Basic',
		description = 'Buy low-priced Premium Time to add it to your own account.',
		image = "/images/shop/items",
		imageList = '/images/shop/items'
	},
	[2] = {
		id = '2',
		name = 'Boosters',
		description = 'Buy an Extra Service to change your character\'s name or sex.',
		image = "/images/shop/support",
		imageList = '/images/shop/support'
	},
	[3] = {
		id = '3',
		name = 'Decorations',
		description = 'Buy your character one or more of the fabulous Mounts offered here.',
		image = '/images/shop/decorations',
		imageList = '/images/shop/decorations'
	},
	[4] = {
		id = '4',
		name = 'Lightings',
		description = 'Buy your character one or more of the classy Outfits offered here.',
		image = '/images/shop/lighting',
		imageList = '/images/shop/lighting' 
	},
	[5] = {
		id = '5',
		name = 'Auras',
		description = 'Use a transportation service to save time.',
		image = '/images/shop/aura',
		imageList = '/images/shop/aura'
	}
}

storeProducts = {
    {
		name = "100x Premium Points Scroll",
		id = '11685',
		category_id = "1",
		description = 'Do you really want to buy 100x Premium Points Scroll?',
        tooltip = "This scroll give you 100x premium points.",
		price = 110,
		image = "/images/shop/offer/11685"
    },
    {
		name = "Kinto",
		id = '2508',
		category_id = "1",
		description = 'Do you really want to buy "kinto"? ',
        tooltip = "You see a kinto.\nIt weighs 120.00 oz.\nIt can save position and teleport you when you want.",
		price = 300,
		image = "/images/shop/offer/2508"
    },
    {
		name = "Karma Bless",
		id = '2',
		category_id = "1",
		description = 'Do you really want to buy neutral karma?',
        tooltip = "You get neutral karma.\nThat will prevent loose of items and experience in case of death",
		price = 50,
		image = "/images/shop/offer/karma"
    },
    {
		name = "Minus Points",
		id = '3',
		category_id = "1",
		description = 'Do you really want to buy 10x Minus Points?',
        tooltip = "Thanks to those points you can redistribute status points.",
		price = 50,
		image = "/images/shop/offer/shopMinus"
    },
    {
		name = "Golden Capsules 5x",
		id = '2143',
		category_id = "1",
		description = 'Do you really want to buy 5x "Golden Capsules"?',
        tooltip = "Golden Capsules 5x\nIt will give you many useful things:\n- Add you some ki points/powerlevel/rage/feed every few seconds.",
		price = 30,
		count = 5,
		image = "/images/shop/offer/2143"
    },
    {
		name = "Red Capsules 25x",
		id = '2150',
		category_id = "1",
		description = 'Do you really want to buy 25x "Red Capsules"?',
        tooltip = "Red Capsules 25x\nAfter use this capsule it will recover your 75% powerlevel.",
		price = 75,
		count = 25,
		image = "/images/shop/offer/2150"
    },
    {
		name = "Violet Capsules 25x",
		id = '2151',
		category_id = "1",
		description = 'Do you really want to buy 25x "Violet Capsules"?',
        tooltip = "Violet Capsules 25x\nAfter use this capsule it will recover your 75% ki points.",
		price = 75,
		count = 25,
		image = "/images/shop/offer/2151"
    },
    {
		name = "Bonus Exp Earrings",
		id = '11710',
		category_id = "2",
		description = 'Do you really want to buy "Bonus Exp Earrings"?',
        tooltip = "Bonus Exp Earrings\nIt give 10% exp of monsters bonus!\nIt have 6 hours time, and you can off/on this item.",
		price = 60,
		image = "/images/shop/offer/11710"
    },
    {
		name = "Bonus Skill Earrings",
		id = '11709',
		category_id = "2",
		description = 'Do you really want to buy "Bonus Skill Earrings"?',
        tooltip = "Bonus Skill Earrings\nIt give 50% skill bonus!\nIt have 12 hours time, and you can off/on this item.",
		price = 99,
		image = "/images/shop/offer/11709"
    },	
 --[[   {
		name = "Name change",
		id = '7',
		category_id = "2",
		description = 'Do you really want to buy "Name change"?',
        tooltip = "",
		price = 250,
		image = "/images/shop/offer/nameChange"
    },]]--
    {
		name = "Goku Doll",
		id = '11774',
		category_id = "3",
		description = 'Do you really want to buy "Goku Doll"?',
        tooltip = "Decoration item, you can put it in house.",
		price = 30,
		image = "/images/shop/offer/11774"
    },
    {
		name = "Vegeta Doll",
		id = '11775',
		category_id = "3",
		description = 'Do you really want to buy "Vegeta Doll"?',
        tooltip = "Decoration item, you can put it in house.",
		price = 30,
		image = "/images/shop/offer/11775"
    },
    {
		name = "Freezer Doll",
		id = '11776',
		category_id = "3",
		description = 'Do you really want to buy "Freezer Doll"?',
        tooltip = "Decoration item, you can put it in house.",
		price = 30,
		image = "/images/shop/offer/11776"
    },
    {
		name = "Heart Pillow",
		id = '1685',
		category_id = "3",
		description = 'Do you really want to buy "Heart Pillow"?',
        tooltip = "Decoration item, you can put it in house.",
		price = 30,
		image = "/images/shop/offer/1685"
    },
    {
		name = "Herb Box",
		id = '11849',
		category_id = "3",
		description = 'Do you really want to buy "Herb Box"?',
        tooltip = "This box will give random herb color.\nDecoration item, you can put it in house.",
		price = 25,
		image = "/images/shop/offer/11849"
    },
    {
		name = "Green Backpack",
		id = '1998',
		category_id = "3",
		description = 'Do you really want to buy "Green Backpack"?',
        tooltip = "You see a green backpack (Vol:20)",
		price = 30,
		image = "/images/shop/offer/1998"
    },
    {
		name = "Yellow Backpack",
		id = '1999',
		category_id = "3",
		description = 'Do you really want to buy "Yellow Backpack"?',
        tooltip = "You see a yellow backpack (Vol:20)",
		price = 30,
		image = "/images/shop/offer/1999"
    },
    {
		name = "Red Backpack",
		id = '2000',
		category_id = "3",
		description = 'Do you really want to buy "Red Backpack"?',
        tooltip = "You see a red backpack (Vol:20)",
		price = 30,
		image = "/images/shop/offer/2000"
    },
    {
		name = "Pink Backpack",
		id = '2001',
		category_id = "3",
		description = 'Do you really want to buy "Pink Backpack"?',
        tooltip = "You see a pink backpack (Vol:20)",
		price = 30,
		image = "/images/shop/offer/2001"
    },
    {
		name = "Gray Backpack",
		id = '2003',
		category_id = "3",
		description = 'Do you really want to buy "Gray Backpack"?',
        tooltip = "You see a gray backpack (Vol:20)",
		price = 30,
		image = "/images/shop/offer/2003"
    },	
    {
		name = "Golden Backpack",
		id = '2004',
		category_id = "3",
		description = 'Do you really want to buy "Golden Backpack"?',
        tooltip = "You see a golden backpack (Vol:20)",
		price = 50,
		image = "/images/shop/offer/2004"
    },	
    {
		name = "Crystal Pedestal",
		id = '9977',
		category_id = "3",
		description = 'Do you really want to buy "Crystal Pedestal"?',
        tooltip = "Decoration item, you can put it in house.",
		price = 10,
		image = "/images/shop/offer/9977"
    },
	--golden / podestal
	{
		name = "#1",
		id = '1',
		category_id = "4",
		description = 'Do you really want to buy "#1" Lighting?\n\nNote: The Lighting will only be received by \nthe character who purchased it in the PrioStore.',
        tooltip = "Lighting #1",
		price = 99,
		special = '/images/shop/free400',
		image = "/images/game/effects/lighting/1"
    },
	{
		name = "#2",
		id = '2',
		category_id = "4",
		description = 'Do you really want to buy "#2" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #2",
		price = 99,
		special = '/images/shop/free450',
		image = "/images/game/effects/lighting/2"
    },
	{
		name = "#3",
		id = '3',
		category_id = "4",
		description = 'Do you really want to buy "#3" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #3",
		price = 99,
		special = '/images/shop/free500',
		image = "/images/game/effects/lighting/3"
    },
	{
		name = "#4",
		id = '4',
		category_id = "4",
		description = 'Do you really want to buy "#4" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #4",
		price = 99,
		special = '/images/shop/freeReborn',
		image = "/images/game/effects/lighting/4"
    },
	{
		name = "#5",
		id = '5',
		category_id = "4",
		description = 'Do you really want to buy "#5" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #5",
		price = 99,
		image = "/images/game/effects/lighting/5"
    },
	{
		name = "#6",
		id = '6',
		category_id = "4",
		description = 'Do you really want to buy "#6" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #6",
		price = 99,
		image = "/images/game/effects/lighting/6"
    },
	{
		name = "#7",
		id = '7',
		category_id = "4",
		description = 'Do you really want to buy "#7" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #7",
		price = 99,
		image = "/images/game/effects/lighting/7"
    },
	{
		name = "#8",
		id = '8',
		category_id = "4",
		description = 'Do you really want to buy "#8" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #8",
		price = 99,
		image = "/images/game/effects/lighting/8"
    },
	{
		name = "#9",
		id = '9',
		category_id = "4",
		description = 'Do you really want to buy "#9" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #9",
		price = 99,
		image = "/images/game/effects/lighting/9"
    },
	{
		name = "#10",
		id = '10',
		category_id = "4",
		description = 'Do you really want to buy "#10" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #10",
		price = 199,
		special = '/images/shop/epic',
		image = "/images/game/effects/lighting/10"
    },
	{
		name = "#11",
		id = '11',
		category_id = "4",
		description = 'Do you really want to buy "#11" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #11",
		price = 199,
		special = '/images/shop/epic',
		image = "/images/game/effects/lighting/11"
    },
	{
		name = "#12",
		id = '12',
		category_id = "4",
		description = 'Do you really want to buy "#12" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #12",
		price = 199,
		special = '/images/shop/epic',
		image = "/images/game/effects/lighting/12"
    },
	{
		name = "#13",
		id = '13',
		category_id = "4",
		description = 'Do you really want to buy "#13" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #13",
		price = 199,
		special = '/images/shop/epic',
		image = "/images/game/effects/lighting/13"
    },
	{
		name = "#14",
		id = '14',
		category_id = "4",
		description = 'Do you really want to buy "#14" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #14",
		price = 199,
		special = '/images/shop/epic',
		image = "/images/game/effects/lighting/14"
    },
	{
		name = "#15",
		id = '15',
		category_id = "4",
		description = 'Do you really want to buy "#15" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #15",
		price = 199,
		special = '/images/shop/epic',
		image = "/images/game/effects/lighting/15"
    },
	{
		name = "#16",
		id = '16',
		category_id = "4",
		description = 'Do you really want to buy "#16" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #16",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/16"
    },
	{
		name = "#17",
		id = '17',
		category_id = "4",
		description = 'Do you really want to buy "#17" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #17",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/17"
    },
	{
		name = "#18",
		id = '18',
		category_id = "4",
		description = 'Do you really want to buy "#18" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #18",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/18"
    },
	{
		name = "#19",
		id = '19',
		category_id = "4",
		description = 'Do you really want to buy "#19" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #19",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/19"
    },
	{
		name = "#20",
		id = '20',
		category_id = "4",
		description = 'Do you really want to buy "#20" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #20",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/20"
    },
	{
		name = "#21",
		id = '21',
		category_id = "4",
		description = 'Do you really want to buy "#21" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #21",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/21"
    },
	{
		name = "#22",
		id = '22',
		category_id = "4",
		description = 'Do you really want to buy "#22" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #22",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/22"
    },
	{
		name = "#23",
		id = '23',
		category_id = "4",
		description = 'Do you really want to buy "#23" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #23",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/23"
    },
	{
		name = "#24",
		id = '24',
		category_id = "4",
		description = 'Do you really want to buy "#24" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #24",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/24"
    },
	{
		name = "#25",
		id = '25',
		category_id = "4",
		description = 'Do you really want to buy "#25" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #25",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/25"
    },
	{
		name = "#26",
		id = '26',
		category_id = "4",
		description = 'Do you really want to buy "#26" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #26",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/26"
    },
	{
		name = "#27",
		id = '27',
		category_id = "4",
		description = 'Do you really want to buy "#27" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #27",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/27"
    },
	{
		name = "#28",
		id = '28',
		category_id = "4",
		description = 'Do you really want to buy "#28" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #28",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/28"
    },
	{
		name = "#30",
		id = '30',
		category_id = "4",
		description = 'Do you really want to buy "#30" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #30",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/30"
    },
	{
		name = "#31",
		id = '31',
		category_id = "4",
		description = 'Do you really want to buy "#31" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #31",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/31"
    },
	{
		name = "#32",
		id = '32',
		category_id = "4",
		description = 'Do you really want to buy "#32" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #32",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/32"
    },
	{
		name = "#33",
		id = '33',
		category_id = "4",
		description = 'Do you really want to buy "#33" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #33",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/33"
    },
	{
		name = "#34",
		id = '34',
		category_id = "4",
		description = 'Do you really want to buy "#34" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #34",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/34"
    },
	{
		name = "#35",
		id = '35',
		category_id = "4",
		description = 'Do you really want to buy "#35" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #35",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/35"
    },
	{
		name = "#36",
		id = '36',
		category_id = "4",
		description = 'Do you really want to buy "#36" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #36",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/36"
    },
	{
		name = "#37",
		id = '37',
		category_id = "4",
		description = 'Do you really want to buy "#37" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #37",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/37"
    },
	{
		name = "#38",
		id = '38',
		category_id = "4",
		description = 'Do you really want to buy "#38" Lighting?\n\nNote: The Lighting will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Lighting #38",
		price = 399,
		special = '/images/shop/rare',
		image = "/images/game/effects/lighting/38"
    },
	{
		name = "#1",
		id = '1',
		category_id = "5",
		description = 'Do you really want to buy "#1" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #1",
		price = 199,
		image = "/images/game/effects/aura/1"
    },
	{
		name = "#2",
		id = '2',
		category_id = "5",
		description = 'Do you really want to buy "#2" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #2",
		price = 199,
		image = "/images/game/effects/aura/2"
    },
	{
		name = "#3",
		id = '3',
		category_id = "5",
		description = 'Do you really want to buy "#3" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #3",
		price = 199,
		image = "/images/game/effects/aura/3"
    },
	{
		name = "#4",
		id = '4',
		category_id = "5",
		description = 'Do you really want to buy "#4" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #4",
		price = 199,
		image = "/images/game/effects/aura/4"
    },
	{
		name = "#5",
		id = '5',
		category_id = "5",
		description = 'Do you really want to buy "#5" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #5",
		price = 199,
		image = "/images/game/effects/aura/5"
    },
	{
		name = "#6",
		id = '6',
		category_id = "5",
		description = 'Do you really want to buy "#6" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #6",
		price = 399,
		special = '/images/shop/epic',
		image = "/images/game/effects/aura/6"
    },
	{
		name = "#7",
		id = '7',
		category_id = "5",
		description = 'Do you really want to buy "#7" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #7",
		price = 399,
		special = '/images/shop/epic',
		image = "/images/game/effects/aura/7"
    },
	{
		name = "#8",
		id = '8',
		category_id = "5",
		description = 'Do you really want to buy "#8" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #8",
		price = 399,
		special = '/images/shop/epic',
		image = "/images/game/effects/aura/8"
    },
	{
		name = "#9",
		id = '9',
		category_id = "5",
		description = 'Do you really want to buy "#9" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #9",
		price = 399,
		special = '/images/shop/epic',
		image = "/images/game/effects/aura/9"
    },
	{
		name = "#10",
		id = '10',
		category_id = "5",
		description = 'Do you really want to buy "#10" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #10",
		price = 399,
		special = '/images/shop/epic',
		image = "/images/game/effects/aura/10"
    },
	{
		name = "#11",
		id = '11',
		category_id = "5",
		description = 'Do you really want to buy "#11" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #11",
		price = 399,
		special = '/images/shop/epic',
		image = "/images/game/effects/aura/11"
    },
	{
		name = "#12",
		id = '12',
		category_id = "5",
		description = 'Do you really want to buy "#12" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #12",
		price = 999,
		special = '/images/shop/rare',
		image = "/images/game/effects/aura/12"
    },
	{
		name = "#13",
		id = '13',
		category_id = "5",
		description = 'Do you really want to buy "#13" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #13",
		price = 999,
		special = '/images/shop/rare',
		image = "/images/game/effects/aura/13"
    },
	{
		name = "#14",
		id = '14',
		category_id = "5",
		description = 'Do you really want to buy "#14" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #14",
		price = 999,
		special = '/images/shop/rare',
		image = "/images/game/effects/aura/14"
    },
	{
		name = "#15",
		id = '15',
		category_id = "5",
		description = 'Do you really want to buy "#15" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #15",
		price = 999,
		special = '/images/shop/rare',
		image = "/images/game/effects/aura/15"
    },
	{
		name = "#16",
		id = '16',
		category_id = "5",
		description = 'Do you really want to buy "#16" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #16",
		price = 999,
		special = '/images/shop/rare',
		image = "/images/game/effects/aura/16"
    },
	{
		name = "#21",
		id = '21',
		category_id = "5",
		description = 'Do you really want to buy "#21" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #21",
		price = 999,
		special = '/images/shop/rare',
		image = "/images/game/effects/aura/21"
    },
	{
		name = "#22",
		id = '22',
		category_id = "5",
		description = 'Do you really want to buy "#22" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #22",
		price = 999,
		special = '/images/shop/rare',
		image = "/images/game/effects/aura/22"
    },
	{
		name = "#23",
		id = '23',
		category_id = "5",
		description = 'Do you really want to buy "#23" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #23",
		price = 999,
		special = '/images/shop/rare',
		image = "/images/game/effects/aura/23"
    },
	{
		name = "#24",
		id = '24',
		category_id = "5",
		description = 'Do you really want to buy "#24" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #24",
		price = 999,
		special = '/images/shop/rare',
		image = "/images/game/effects/aura/24"
    },
	{
		name = "#25",
		id = '25',
		category_id = "5",
		description = 'Do you really want to buy "#25" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #25",
		price = 999,
		special = '/images/shop/rare',
		image = "/images/game/effects/aura/25"
    },
	{
		name = "#26",
		id = '26',
		category_id = "5",
		description = 'Do you really want to buy "#26" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #26",
		price = 999,
		special = '/images/shop/rare',
		image = "/images/game/effects/aura/26"
    },
	{
		name = "#27",
		id = '27',
		category_id = "5",
		description = 'Do you really want to buy "#27" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #27",
		price = 999,
		special = '/images/shop/rare',
		image = "/images/game/effects/aura/27"
    },
	{
		name = "#28",
		id = '28',
		category_id = "5",
		description = 'Do you really want to buy "#28" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #28",
		price = 999,
		special = '/images/shop/rare',
		image = "/images/game/effects/aura/28"
    },
	{
		name = "#50",
		id = 50,
		category_id = "5",
		description = 'Do you really want to buy "#50" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #50",
		price = 399,
		special = '/images/shop/epic',
		image = "/images/game/effects/aura/50"
    },
	{
		name = "#51",
		id = 51,
		category_id = "5",
		description = 'Do you really want to buy "#51" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #51",
		price = 399,
		special = '/images/shop/epic',
		image = "/images/game/effects/aura/51"
    },
	{
		name = "#52",
		id = 52,
		category_id = "5",
		description = 'Do you really want to buy "#52" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #52",
		price = 399,
		special = '/images/shop/epic',
		image = "/images/game/effects/aura/52"
    },
	{
		name = "#53",
		id = 53,
		category_id = "5",
		description = 'Do you really want to buy "#53" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #53",
		price = 399,
		special = '/images/shop/epic',
		image = "/images/game/effects/aura/53"
    },
	{
		name = "#54",
		id = 54,
		category_id = "5",
		description = 'Do you really want to buy "#54" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #54",
		price = 399,
		special = '/images/shop/epic',
		image = "/images/game/effects/aura/54"
    },
	{
		name = "#55",
		id = 55,
		category_id = "5",
		description = 'Do you really want to buy "#55" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #55",
		price = 399,
		special = '/images/shop/epic',
		image = "/images/game/effects/aura/55"
    },
	{
		name = "#56",
		id = 56,
		category_id = "5",
		description = 'Do you really want to buy "#56" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #56",
		price = 399,
		special = '/images/shop/epic',
		image = "/images/game/effects/aura/56"
    },
	{
		name = "#57",
		id = 57,
		category_id = "5",
		description = 'Do you really want to buy "#57" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #57",
		price = 399,
		special = '/images/shop/epic',
		image = "/images/game/effects/aura/57"
    },
	{
		name = "#58",
		id = 58,
		category_id = "5",
		description = 'Do you really want to buy "#58" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #58",
		price = 399,
		special = '/images/shop/epic',
		image = "/images/game/effects/aura/58"
    },
	{
		name = "#59",
		id = 59,
		category_id = "5",
		description = 'Do you really want to buy "#59" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #59",
		price = 399,
		special = '/images/shop/epic',
		image = "/images/game/effects/aura/59"
    },
	{
		name = "#60",
		id = 60,
		category_id = "5",
		description = 'Do you really want to buy "#60" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #60",
		price = 399,
		special = '/images/shop/epic',
		image = "/images/game/effects/aura/60"
    },
	{
		name = "#61",
		id = 61,
		category_id = "5",
		description = 'Do you really want to buy "#61" Aura?\n\nNote: The Aura will only be received by the character who purchased it in the PrioStore.',
        tooltip = "Aura #61",
		price = 399,
		special = '/images/shop/epic',
		image = "/images/game/effects/aura/61"
    }
}