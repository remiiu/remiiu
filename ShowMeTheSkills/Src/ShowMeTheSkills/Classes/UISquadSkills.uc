class UISquadSkills extends UIScreenListener config(UISquadSkills);

var UIScreen ZeScreen;
var UISQuadSelect ZeSquad;
var int d;

// Lists of icons we're created. We create one icon for each member of the squad regardless
// of whether or not we're actually going to show it.
var array< UIPanel > LoadoutAbilities;
var array< UIListItemMod > ListItems;
var array< UIPanel > StatsValues;
var int row;
var int InitialY;
var int InitialScrollY;
var int InitialScrollPad;
var int InitialHeight;
var int call;

var config bool DISPLAY_PERK;
var config bool DISPLAY_PERK_BACKGROUND;
var config int PERK_LINE_SIZE;
var config int PERK_NUMBER_PER_LINE;

var config bool DISPLAY_STATS;
var config bool STATS_VERTICAL;
var config bool STATS_HORIZONTAL_ABOVE;


var int PERK_SIZE;
var int PERKS_PADDING;
var int PERK_ROW_HEIGHT;
var int PERKS_TOTAL_MAX_HEIGHT;
var int PERKS_TOTAL_HEIGHT;
var int PERKS_TOTAL_ROWS;
var int PERKS_Y;

var int STATS_WIDTH;
var int STATS_HEIGHT;
var int STATS_Y;

var int BASE_HEIGHT;
var int BASE_WIDTH;
var int BASE_MASK_Y;
var int BASE_Y;
var int BASE_SCROLL_Y;

var bool DID_DISPLAY;


// Building all the Panels containing our abilities.
function createIcons(UIScreen Screen) {

	local UISquadSelect Squad;
    local UISquadSelect_ListItem ListItem;
	local int i;
	local UIListitemMod test;

	Squad = UISquadSelect(Screen);
	ZeScreen = Screen;
	ZeSquad = Squad;

	//DeleteAllAbilities();
	InitModules();


	// For each squad slot.
	for (i = 0; i < Squad.m_kSlotList.ItemCount; ++i)
	{
		ListItem = UISquadSelect_ListItem(Squad.m_kSlotList.GetItem(i));

		test = New class'UIListitemMod';
		test.hasUnit = false;

		ListItems[ListItem.SlotIndex] = test;

		if(DISPLAY_STATS == true && (STATS_VERTICAL	 || (!STATS_VERTICAL && STATS_HORIZONTAL_ABOVE) ) ) setStats(listItem);
		if(DISPLAY_PERK == true)	setIcons(listItem);
		if(DISPLAY_STATS == true && (!STATS_VERTICAL && !STATS_HORIZONTAL_ABOVE) )  setStats(listItem);
	}


	moveZeSquad();
}


function setStats(UISquadSelect_ListItem ListItem) {
	local UISoldierHeaderSQS StatPanel;
	local XComGameState_Unit Unit;
	local UIList test;
	local UIPanel child;
	local int i;
	local int d;
	local StateObjectReference UnitReference;
	local UIListitemMod UIMod;
	local UISoldierHeaderSQS UIStats;

	STATS_WIDTH	= 66;
	STATS_HEIGHT = 50;

	if(ListItem.GetUnitRef().ObjectID > 0) {
		ListItem.DynamicContainer.GetChild('MOD_STATS').Remove();
		UnitReference = ListItem.GetUnitRef();

		UIStats = ListItem.DynamicContainer.Spawn(class'UISoldierHeaderSQS');

		test = MakeStatsList(ListItem, UIStats, UnitReference);

		UIMod = ListItems[ListItem.SlotIndex];
		UIMod.hasUnit		 = true;
		UIMod.hasStats		 = true;
		UIMod.statHorizontal = STATS_VERTICAL;
		UIMod.PerkTotalHeight = PERKS_TOTAL_HEIGHT;

		ListItems[ListItem.SlotIndex] = UIMod;
	}
	else ListItem.DynamicContainer.GetChild('MOD_STATS').Remove();
}

function UIList MakeStatsList(UISquadSelect_ListItem ListItem, UISoldierHeaderSQS UIStats, StateObjectReference UnitReference) {
	local UIList test;
	local int stat_y;
	local UIList row1;
	local UIList row2;

		test = ListItem.DynamicContainer.Spawn(class'UIList', ListItem.DynamicContainer);

		if(STATS_VERTICAL) {
			test.BGPaddingLeft = 2;
			test.BGPaddingRight = 0;
			test.BGPaddingTop = 2;
			test.ItemPadding = 2;

			test.InitList('MOD_STATS',285,90,STATS_WIDTH,BASE_HEIGHT-70-PERKS_TOTAL_MAX_HEIGHT, false, true);
		}
		else {
			// Calculate the position of the stats Y.
			stat_y = 310;
			if(DISPLAY_PERK && !STATS_HORIZONTAL_ABOVE)
			{
				if(PERKS_TOTAL_HEIGHT == 0) stat_y = stat_y + PERKS_TOTAL_HEIGHT + 5;
				else stat_y = stat_y + PERKS_TOTAL_HEIGHT + 25;
			}

			test.BGPaddingTop = 3;
			test.BGPaddingBottom = 0;
			test.ItemPadding = 2;

			// Init a vertical list
			test.InitList('MOD_STATS',10,stat_y,PERK_LINE_SIZE,STATS_HEIGHT, false, true);

			// Populate with two horizontal rows
			row1 = test.ItemContainer.Spawn(class'UIList', test.ItemContainer);
			row1.ItemPadding = 2;
			row1.InitList('STATS_ROW_ONE',,,PERK_LINE_SIZE,22,true,false);

			row2 = test.ItemContainer.Spawn(class'UIList', test.ItemContainer);
			row2.ItemPadding = 2;
			row2.InitList('STATS_ROW_TWO',,,PERK_LINE_SIZE,22,true,false);
		}

		test.BG.SetBGColor("cyan");
		test.BG.SetAlpha(70);

		// Will populate test with skills.
		UIStats.ShowMeTheSkills_Init(UnitReference, test, StatsValues, STATS_VERTICAL);
		StatsValues.AddItem(UIStats);

		return test;
}

function InitModules() {
	getInitSquad();
	if(DISPLAY_PERK == true) calculatePerkSize();
}

function moveZeSquad(optional bool reset) {

	local int i;
	local UISquadSelect_ListItem ListItem;
	local int maxHeight, scrollpading, wiggleroom, scroll_y, stats_height, localTotal;
	local UIListitemMod UIMod;

	scrollpading = 10;
	wiggleroom = 80;

	if(DISPLAY_PERK == true || DISPLAY_STATS == true) {
	maxHeight = 0;
	stats_height = 0;
		for (i = 0; i < ZeSquad.m_kSlotList.ItemCount; ++i)
		{
			ListItem = UISquadSelect_ListItem(ZeSquad.m_kSlotList.GetItem(i));
			UIMod = ListItems[ListItem.SlotIndex];

			if(UIMod.hasUnit && reset != true ) {
				if(UIMod.hasPerks || (DISPLAY_STATS && !STATS_VERTICAL) ) {
					if(DISPLAY_STATS) stats_height = 55;

					localTotal = UIMod.PerkTotalHeight + stats_height;
					maxHeight = localTotal > maxHeight ? localTotal : maxHeight;

				ListItem.Height = BASE_HEIGHT + localTotal;
				`Log("SKILLS: SET HEIGHT N" @ i @ "+" @ localTotal @ "-" @ stats_height);
				}
				if(UIMod.hasStats) {
					if(STATS_VERTICAL) {
						 ListItem.Width  = BASE_WIDTH + STATS_WIDTH;
						if(i == ZeSquad.m_kSlotList.ItemCount -1 ) ListItem.Width += 5;
						`Log("SKILLS: SET WIDTH N" @ i @ "+" @ STATS_WIDTH);
					}
				}
			}
			else {
				`Log("SKILLS: SET HEIGHT BASE N" @ i @ ":" @ BASE_HEIGHT);
				ListItem.Height = BASE_HEIGHT;
				`Log("SKILLS: SET WIDTH BASE N" @ i @ ":" @ BASE_WIDTH);
				ListItem.Width  = BASE_WIDTH;
			}
		}

		if(MaxHeight > 0) {
			maxHeight = maxHeight + 25;
			scrollpading = scrollpading + 15;
		}
		if(reset == true || maxHeight == 0) {
			maxHeight = 0;
			scrollpading = 0;
			wiggleroom = 0;
		}
		//ZeSquad.m_kSlotList.SetHeight(BASE_HEIGHT + maxHeight);

		ZeSquad.m_kSlotList.RealizeItems();
		ZeSquad.m_kSlotList.RealizeList();

		ZeSquad.m_kSlotList.SetY(BASE_Y - maxHeight - scrollpading);

		if(ZeSquad.m_kSlotList.Scrollbar != none) {
			ZeSquad.m_kSlotList.Mask.SetHeight( BASE_HEIGHT + maxHeight + wiggleroom);
					`Log("SKILLS: SET MASK HEIGHT" @ BASE_HEIGHT @ ":" @ maxHeight @ "+" @ wiggleroom);
			ZeSquad.m_kSlotList.Mask.SetY( BASE_MASK_Y - wiggleroom);
					`Log("SKILLS: SET MASK Y" @ BASE_MASK_Y @ ":" @ BASE_MASK_Y @ "-" @ wiggleroom);
			ZeSquad.m_kSlotList.SetX(0);

			if(BASE_SCROLL_Y <= 0 )	scroll_y = BASE_HEIGHT;
			else scroll_y = BASE_SCROLL_Y;

			ZeSquad.m_kSlotList.Scrollbar.SetY( scroll_y + maxHeight + scrollpading);
		}

	}



}

function getInitSquad() {
	local UISquadSelect_ListItem ListItem;
	if(call < 1) {
		ListItem = UISquadSelect_ListItem(ZeSquad.m_kSlotList.GetItem(1));

		BASE_Y = ZeSquad.m_kSlotList.Y;
		BASE_MASK_Y = ZeSquad.m_kSlotList.Mask.Y;
		BASE_HEIGHT = ZeSquad.m_kSlotList.Mask.Height;
		if(BASE_HEIGHT <= 0) BASE_HEIGHT = ZeSquad.m_kSlotList.Height;
			`Log("SKILLS: BASE_HEIGHT:" @ BASE_HEIGHT);
			`Log("SKILLS: BASE_MASL_Y:" @ BASE_MASK_Y);
		BASE_WIDTH	= ListItem.Width;
			`Log("SKILLS: BASE_WIDTH:" @ BASE_WIDTH);

		if(ZeSquad.m_kSlotList.Scrollbar != none) BASE_SCROLL_Y =  ZeSquad.m_kSlotList.Scrollbar.Y;

		call++;
	}
}

function calculatePerkSize() {
	PERK_SIZE = ((PERK_LINE_SIZE - 20) / PERK_NUMBER_PER_LINE) - 5;
	PERKS_PADDING = ( ( ( PERK_LINE_SIZE - 20 ) - PERK_SIZE*PERK_NUMBER_PER_LINE ) / ( PERK_NUMBER_PER_LINE - 1 ) ) + 2;

	`Log("SKILLS: CALC PADDING " @ (PERK_LINE_SIZE - 20) @ "-" @ PERK_SIZE*PERK_NUMBER_PER_LINE @ "/" @  ( PERK_NUMBER_PER_LINE - 1 ) );
	`Log("SKILLS: PERK PADDING " @ PERKS_PADDING);

	PERK_ROW_HEIGHT = PERK_SIZE + 5;
}

function simulated setIcons(UISquadSelect_ListItem ListItem) {
		// The unit
	local XComGameState_Unit Unit;
		// Its ability tree
	local array<SoldierClassAbilityType> AbilityTree;
		// The ability template manager
	local X2AbilityTemplateManager AbilityTemplateManager;
		// The current Ability we're looking at
	local SoldierClassAbilityType Ability;
		// Its template
	local X2AbilityTemplate AbTemplate;

	 	// Miscialenous
	local int i;
	local UIIcon AbilityIcon;
	local String icoColor;
	local float descsize;
	local int NumberRow;
	local UIList MainPerk;
	local UIList currentRow;
	local int ActualN;

	PERKS_TOTAL_HEIGHT = 0;
	if(ListItem.GetUnitRef().ObjectID > 0) {
		// Background U.I

		//UIL.BG.SetBGColor("gray");


		// Get the current unit
		Unit = XComGameState_Unit(`XCOMHISTORY.GetGameStateForObjectID(ListItem.GetUnitRef().ObjectID));
		// Populate the tree of earned abilities.
		AbilityTree = Unit.GetEarnedSoldierAbilities();
		// Prepare the template manager.
		AbilityTemplateManager = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager();

		ActualN = 0;
		ActualN = AbilityTree.Length;
		if(ActualN > 0) {
			MainPerk = createMainList(ListItem,ActualN);

			i = 0;
			foreach AbilityTree(Ability) {
				AbTemplate = AbilityTemplateManager.FindAbilityTemplate(Ability.AbilityName);

				icoColor = "94c3c3";
				if(AbTemplate.AbilityIconColor != "") icoColor = AbTemplate.AbilityIconColor;
				else if(AbTemplate.AbilitySourceName == 'eAbilitySource_Psionic') icoColor = class'UIUtilities_Colors'.const.PSIONIC_HTML_COLOR;
				else if(AbTemplate.AbilitySourceName == 'eAbilitySource_Commander')	icoColor = class'UIUtilities_Colors'.const.GOOD_HTML_COLOR;
				else if(isAnAWCPerk(Ability, Unit)) icoColor = "ffce3a";

				NumberRow = (i/PERK_NUMBER_PER_LINE) + 0.5;
				currentRow = UIList(MainPerk.GetItem(NumberRow));

				AbilityIcon = currentRow.ItemContainer.Spawn(class'UIIcon', currentRow.ItemContainer);
				AbilityIcon.InitIcon(,AbTemplate.IconImage);
				AbilityIcon.SetForegroundColor("000000");
				AbilityIcon.SetBGColor(IcoColor);
				AbilityIcon.SetBGShape(EBGShape(eSquare));
				AbilityIcon.SetSize(PERK_SIZE,PERK_SIZE);

				`Log("SKILLS: CALCULATED " @ i @ " / " @ PERK_NUMBER_PER_LINE );
				`Log("SKILLS: CREATED AN ICON " @ i @ " INSIDE ROW:" @ NumberRow );


				// Anchor top doesn't seem to work so ugly fix.
				descsize = Len(AbTemplate.GetMyLongDescription());
				descsize = -(30 + (descsize/20)*30);

				AbilityIcon.SetTooltipText(AbTemplate.GetMyLongDescription(),AbTemplate.LocFriendlyName,,descsize,true,,false,0);



				LoadoutAbilities.AddItem(AbilityIcon);
				currentRow.Show();
				//AbilityIcons[i] = AbilityIcon;

				i++;
			}
		}
	}
}


function UIList createMainList(UISquadSelect_ListItem ListItem, int actualN) {
	local UIList MainPerk;
	local UIList aRow;
	local UIListItemMod UIMod;
	local int i, perk_y;
	if(actualN > 0) {
		PERKS_TOTAL_ROWS = ( actualN / PERK_NUMBER_PER_LINE ) + 0.5;
		if( actualN % PERK_NUMBER_PER_LINE != 0) PERKS_TOTAL_ROWS++;
		PERKS_TOTAL_ROWS++;

		PERKS_TOTAL_HEIGHT = PERK_ROW_HEIGHT * ( PERKS_TOTAL_ROWS - 1 );
		PERKS_TOTAL_MAX_HEIGHT = PERKS_TOTAL_HEIGHT > PERKS_TOTAL_MAX_HEIGHT ? PERKS_TOTAL_HEIGHT :	PERKS_TOTAL_MAX_HEIGHT;

		MainPerk = ListItem.DynamicContainer.Spawn(class'UIList', ListItem.DynamicContainer);

		perk_y = 320;
		if(DISPLAY_STATS && !STATS_VERTICAL && STATS_HORIZONTAL_ABOVE) perk_y += STATS_HEIGHT + 5;

		MainPerk.InitList('MOD_PERKS_UI',10,perk_y,PERK_LINE_SIZE,PERKS_TOTAL_HEIGHT, false, DISPLAY_PERK_BACKGROUND);


		if(DISPLAY_PERK_BACKGROUND == true) {
			MainPerk.BG.SetBGColor("cyan");
			MainPerk.BG.SetAlpha(50);
		}


		LoadoutAbilities.AddItem(MainPerk);

		`Log("SKILLS: ACTUAL N " @ actualN);
		`Log("SKILLS: CREATED MAINPERK:" @ PERKS_TOTAL_HEIGHT);
		`Log("SKILLS: ROW NEEDED:" @ PERKS_TOTAL_ROWS);

		for(i = 0; i<PERKS_TOTAL_ROWS; i++) {
			aRow = UIList(MainPerk.CreateItem(class 'UIList'));
			aRow.InitList(,,,PERK_LINE_SIZE,PERK_ROW_HEIGHT,true,false);
			aRow.ItemPadding = PERKS_PADDING;
			LoadoutAbilities.AddItem(aRow);
			`Log("SKILLS: CREATED A ROW INSIDE:" @ i);
		}

		UIMod = ListItems[ListItem.SlotIndex];
		UIMod.hasUnit		 = true;
		UIMod.hasPerks		 = true;
		UIMod.PerkTotalHeight = PERKS_TOTAL_HEIGHT;

		ListItems[ListItem.SlotIndex] = UIMod;


		return MainPerk;
	}
}

function bool isAnAWCPerk(SoldierClassAbilityType Ability, XComGameState_Unit Unit) {

	local X2SoldierClassTemplate ClassTemplate;
	local array<SoldierClassAbilityType> SoldierRank;
	local int i,j;

	// Get the class template
	ClassTemplate = Unit.GetSoldierClassTemplate();
	// Iterate over every rank, and branch
	for(i=0; i < ClassTemplate.GetMaxConfiguredRank(); ++i) {
	SoldierRank = ClassTemplate.GetAbilityTree(i);
		for(j=0; j < SoldierRank.Length; ++j) {
			// If that's the perk, break.
			if(ClassTemplate.GetAbilityName(i,j) == Ability.AbilityName) {
				return false;
				break;
			}
		}
	}
	// The perk was nowhere to be found, so it's from awc.
	return true;
}



// Destroy all current icons.
function DeleteAllAbilities()
{
	local int i;



	`Log("+++ Destroying all abilities");
    for (i = 0; i < LoadoutAbilities.Length; ++i)
    {
		LoadoutAbilities[i].Remove();
    }

	for (i = 0; i < StatsValues.Length; ++i)
    {
		StatsValues[i].Remove();
    }

	PERKS_TOTAL_ROWS = 0;
	moveZeSquad(true);
	LoadoutAbilities.Length = 0;
}

// Hide all the icons
function HideAllAbilities()
{
	local int i;

	`Log("+++ Hiding all abilities");
    for (i = 0; i < LoadoutAbilities.Length; ++i)
    {
		LoadoutAbilities[i].Hide();
    }


	for (i = 0; i < StatsValues.Length; ++i)
    {
		StatsValues[i].Remove();
    }

	PERKS_TOTAL_ROWS = 0;
	moveZeSquad(true);
}

event OnInit(UIScreen Screen)
{
	DeleteAllAbilities();
	createIcons(Screen);
}

event OnReceiveFocus(UIScreen Screen)
{
	DeleteAllAbilities();
	createIcons(Screen);
}

event OnLoseFocus(UIScreen Screen)
{
	HideAllAbilities();
}

event OnRemoved(UIScreen Screen)
{
	DeleteAllAbilities();
}


defaultproperties
{
	ScreenClass=class'UISquadSelect'
}
