class UISoldierHeaderSQS extends UISoldierHeader;

var UIList SMTS_Stats;
var array< UIPanel > SMTS_Refs;
var bool isHorizontal;

// We do not want the SoldiersInfo.
simulated function SetSoldierInfo( string unitName, 
								   string statusLabel, string status,
								   string missionsLabel, string missions,
								   string killsLabel, string kills,
								   string classIcon, string classLabel,
								   string rankIcon, string rankLabel,
								   string flagIcon, bool showPromoteIcon, string statusTime )	{
	`Log("SKILLS: DIDN'T SET SOLDIER INFO");	
}

simulated function SetSoldierStats(optional string Health	 = "", 
								optional string Mobility = "", 
								optional string Aim	     = "", 
								optional string Will     = "", 
								optional string Armor	 = "", 
								optional string Dodge	 = "", 
								optional string Tech	 = "", 
								optional string Psi		 = "" ) {
	local UISoldierStatButton Image;
	local UIList target;
	local int Width;

	Width = 62;
	if(!isHorizontal) target = SMTS_Stats;
	else target = UIList(SMTS_Stats.ItemContainer.GetChild('STATS_ROW_ONE'));

	Image = target.ItemContainer.Spawn(class'UISoldierStatButton', target.ItemContainer);
	Image.InitMe(,"img:///ShowMe.Health",Width,22, m_strHealthLabel, Health);
	SMTS_Refs.AddItem(Image);	 
	
	Image = target.ItemContainer.Spawn(class'UISoldierStatButton', target.ItemContainer);
	Image.InitMe(,"img:///ShowMe.Mobility",Width,22, m_strMobilityLabel, Mobility);
	SMTS_Refs.AddItem(Image);	 

	Image = target.ItemContainer.Spawn(class'UISoldierStatButton', target.ItemContainer);
	Image.InitMe(,"img:///ShowMe.Aim",Width,22, m_strAimLabel, Aim); 
	SMTS_Refs.AddItem(Image);	 
	
	Image = target.ItemContainer.Spawn(class'UISoldierStatButton', target.ItemContainer);
	Image.InitMe(,"img:///ShowMe.Will",Width,22, m_strWillLabel, Will);
	SMTS_Refs.AddItem(Image);	 

	
	if(!isHorizontal) target = SMTS_Stats;
	else {
		target.RealizeItems();
		target.RealizeList();	
		target = UIList(SMTS_Stats.ItemContainer.GetChild('STATS_ROW_TWO'));
	}

	Image = target.ItemContainer.Spawn(class'UISoldierStatButton', target.ItemContainer);
	Image.InitMe(,"img:///ShowMe.Armor",Width,22,  m_strArmorLabel, Armor);
	SMTS_Refs.AddItem(Image);
		 
	Image = target.ItemContainer.Spawn(class'UISoldierStatButton', target.ItemContainer);
	Image.InitMe(,"img:///ShowMe.Dodge",Width,22, m_strDodgeLabel, Dodge);
	SMTS_Refs.AddItem(Image);
	
	Image = target.ItemContainer.Spawn(class'UISoldierStatButton', target.ItemContainer);
	Image.InitMe(,"img:///ShowMe.Hack",Width,22, m_strTechLabel,Tech);
	SMTS_Refs.AddItem(Image);

	if(Psi != "") {
		Image = target.ItemContainer.Spawn(class'UISoldierStatButton', target.ItemContainer);
		Image.InitMe(,"img:///ShowMe.Psy",Width,22, m_strPsiLabel, Psi);
		SMTS_Refs.AddItem(Image);
	}

	if(isHorizontal) {
		target.RealizeItems();
		target.RealizeList();
	}

	 SMTS_Stats.RealizeItems();
	 SMTS_Stats.RealizeList();		

	`Log("SKILLS: GONNA DISPLAY STATS");
	`Log("SKILLS:" @ Health @ Mobility @ Will @ Psi );
}

simulated function ShowMeTheSkills_Init(StateObjectReference initUnitRef, UIList TargetList, array< UIPanel > StatsValues, bool isVertical) {
	SMTS_Stats = TargetList;	
	SMTS_Refs = StatsValues;
	UnitRef = initUnitRef;
	isHorizontal = !isVertical;
	bSoldierStatsHidden = false;		
	PopulateData();
}

defaultproperties
{
	isHorizontal = false;
}