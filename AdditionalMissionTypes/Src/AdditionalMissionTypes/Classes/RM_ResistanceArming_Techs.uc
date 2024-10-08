// This is an Unreal Script
class RM_ResistanceArming_Techs extends X2StrategyElement config(HavenSiegeSettings);

var config bool UpgradesInstant;

var config int PLATEDUPGRADECOST;

var config int PLATEDUPGRADE_SUPPLIESCOST;

var config bool HIDEPLATEDRESEARCH;


var config int MAGUPGRADECOST;

var config int MAGUPGRADE_SUPPLIESCOST;

var config bool HIDEMAGRESEARCH;


var config int PLASMAGRENADECOST;

var config int PLASMAGRENADE_SUPPLIESCOST;

var config int PLASMAGRENADE_ELERIUMCOST;

var config bool HIDEGRENADERESEARCH;


var config int POWERARMORCOST;

var config int POWERARMOR_SUPPLIESCOST;

var config int POWERARMOR_ELERIUMCOST;

var config bool HIDEPOWERARMORRESEARCH;


var config int BEAMRIFLESCOST;

var config int BEAMRIFLES_SUPPLIESCOST;

var config int BEAMRIFLES_ELERIUMCOST;

var config bool HIDEBEAMRIFLESRESEARCH;


static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Techs;
	local RM_AMT_Settings Settings;

	Settings = new class'RM_AMT_Settings';

	default.UpgradesInstant = Settings.UPGRADESINSTANT;
	default.PLATEDUPGRADECOST = Settings.PLATEDUPGRADECOST;
	default.PLATEDUPGRADE_SUPPLIESCOST = Settings.PLATEDUPGRADE_SUPPLIESCOST;
	default.HIDEPLATEDRESEARCH = Settings.HIDEPLATEDRESEARCH;
	default.MAGUPGRADECOST = Settings.MAGUPGRADECOST;
	default.MAGUPGRADE_SUPPLIESCOST = Settings.MAGUPGRADE_SUPPLIESCOST;
	default.HIDEMAGRESEARCH = Settings.HIDEMAGRESEARCH;
	default.PLASMAGRENADECOST = Settings.PLASMAGRENADECOST;
	default.PLASMAGRENADE_SUPPLIESCOST = Settings.PLASMAGRENADE_SUPPLIESCOST;
	default.PLASMAGRENADE_ELERIUMCOST = Settings.PLASMAGRENADE_ELERIUMCOST;
	default.HIDEGRENADERESEARCH = Settings.HIDEGRENADERESEARCH;
	default.POWERARMORCOST = Settings.POWERARMORCOST;
	default.POWERARMOR_SUPPLIESCOST = Settings.POWERARMOR_SUPPLIESCOST;
	default.POWERARMOR_ELERIUMCOST = Settings.POWERARMOR_ELERIUMCOST;
	default.HIDEPOWERARMORRESEARCH = Settings.HIDEPOWERARMORRESEARCH;
	default.BEAMRIFLESCOST = Settings.BEAMRIFLESCOST;
	default.BEAMRIFLES_SUPPLIESCOST = Settings.BEAMRIFLES_SUPPLIESCOST;
	default.BEAMRIFLES_ELERIUMCOST = Settings.BEAMRIFLES_ELERIUMCOST;
	default.HIDEBEAMRIFLESRESEARCH = Settings.HIDEBEAMRIFLESRESEARCH;
	
	Techs.AddItem(ArmPlatedArmor());
	Techs.AddItem(ArmMagWeapons());
	Techs.AddItem(ArmPlasmaGrenade());
	Techs.AddItem(ArmPoweredArmor());
	Techs.AddItem(ArmBeamRifles());

	return Techs;
}


static function X2DataTemplate ArmPlatedArmor()
{
	local X2TechTemplate Template;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'Tech_ArmPlatedArmor');
	Template.PointsToComplete = default.PLATEDUPGRADECOST;
	Template.bCheckForceInstant = default.UpgradesInstant;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_PlatedArmor";
	Template.SortingTier = 2;
	Template.ResearchCompletedFn = OnArmPlatedArmorCompletion;
	Template.bProvingGround = true;

	Template.Requirements.RequiredItems.AddItem('MediumPlatedArmor');

	if(default.HIDEPLATEDRESEARCH == true)
	{
	Template.Requirements.RequiredScienceScore = 999999;
	Template.Requirements.bVisibleIfPersonnelGatesNotMet = false;
	}

	// Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = default.PLATEDUPGRADE_SUPPLIESCOST;
	Template.Cost.ResourceCosts.AddItem(Resources);

	return Template;
}

static function X2DataTemplate ArmMagWeapons()
{
	local X2TechTemplate Template;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'Tech_ArmMagWeapons');
	Template.PointsToComplete = default.MAGUPGRADECOST;
	Template.bCheckForceInstant = default.UpgradesInstant;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_Magnetized_Weapons";
	Template.SortingTier = 2;
	Template.ResearchCompletedFn = OnArmMagWeaponCompletion;
	Template.bProvingGround = true;

	Template.Requirements.RequiredItems.AddItem('AssaultRifle_MG');

	if(default.HIDEMAGRESEARCH == true)
	{
	Template.Requirements.RequiredScienceScore = 999999;
	Template.Requirements.bVisibleIfPersonnelGatesNotMet = false;
	}

	// Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = default.MAGUPGRADE_SUPPLIESCOST;
	Template.Cost.ResourceCosts.AddItem(Resources);

	return Template;
}

static function X2DataTemplate ArmPlasmaGrenade()
{
	local X2TechTemplate Template;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'Tech_ArmPlasmaGrenade');
	Template.PointsToComplete = default.PLASMAGRENADECOST;
	Template.bCheckForceInstant = default.UpgradesInstant;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_Plasma_Grenade_Project";
	Template.SortingTier = 2;
	Template.ResearchCompletedFn = OnArmPlasmaGrenadeCompletion;
	Template.bProvingGround = true;
	
	// Requirements
	Template.Requirements.RequiredTechs.AddItem('PlasmaGrenade');

	if(default.HIDEGRENADERESEARCH == true)
	{
	Template.Requirements.RequiredScienceScore = 999999;
	Template.Requirements.bVisibleIfPersonnelGatesNotMet = false;
	}

	// Cost
 	Resources.ItemTemplateName = 'Supplies';
 	Resources.Quantity = default.POWERARMOR_SUPPLIESCOST;
 	Template.Cost.ResourceCosts.AddItem(Resources);

	Resources.ItemTemplateName = 'EleriumDust';
	Resources.Quantity = default.POWERARMOR_ELERIUMCOST;
	Template.Cost.ResourceCosts.AddItem(Resources);

	return Template;
}

static function X2DataTemplate ArmPoweredArmor()
{
	local X2TechTemplate Template;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'Tech_ArmPoweredArmor');
	Template.PointsToComplete = default.POWERARMORCOST;
	Template.bCheckForceInstant = default.UpgradesInstant;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_PoweredArmor";
	Template.SortingTier = 2;
	Template.ResearchCompletedFn = OnArmPoweredArmorCompletion;
	
	// Requirements
	Template.Requirements.RequiredItems.AddItem('MediumPoweredArmor');

	if(default.HIDEPOWERARMORRESEARCH == true)
	{
	Template.Requirements.RequiredScienceScore = 999999;
	Template.Requirements.bVisibleIfPersonnelGatesNotMet = false;
	}

	// Cost
 	Resources.ItemTemplateName = 'Supplies';
 	Resources.Quantity = default.POWERARMOR_SUPPLIESCOST;
 	Template.Cost.ResourceCosts.AddItem(Resources);

	Resources.ItemTemplateName = 'EleriumDust';
	Resources.Quantity = default.POWERARMOR_ELERIUMCOST;
	Template.Cost.ResourceCosts.AddItem(Resources);

	return Template;
}

static function X2DataTemplate ArmBeamRifles()
{
	local X2TechTemplate Template;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'Tech_ArmBeamRifles');
	Template.PointsToComplete = default.BEAMRIFLESCOST;
	Template.bCheckForceInstant = default.UpgradesInstant;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_PlasmaRifle";
	Template.SortingTier = 2;
	Template.ResearchCompletedFn = OnArmBeamRiflesCompletion;
	
	// Requirements
	Template.Requirements.RequiredItems.AddItem('AssaultRifle_BM');

	if(default.HIDEBEAMRIFLESRESEARCH == true)
	{
	Template.Requirements.RequiredScienceScore = 999999;
	Template.Requirements.bVisibleIfPersonnelGatesNotMet = false;
	}

	// Cost
 	Resources.ItemTemplateName = 'Supplies';
 	Resources.Quantity = default.BEAMRIFLES_SUPPLIESCOST;
 	Template.Cost.ResourceCosts.AddItem(Resources);

	Resources.ItemTemplateName = 'EleriumDust';
	Resources.Quantity = default.BEAMRIFLES_ELERIUMCOST;
	Template.Cost.ResourceCosts.AddItem(Resources);

	return Template;
}


function OnArmPlatedArmorCompletion(XComGameState NewGameState, XComGameState_Tech TechState)
{
	local XComGameState_HeadquartersXCom XComHQ;
	local XComGameStateHistory History;

	History = `XCOMHISTORY;
	XComHQ = XComGameState_HeadquartersXCom(History.GetSingleGameStateObjectForClass(class'XComGameState_HeadquartersXCom'));

	XComHQ = XComGameState_HeadquartersXCom(NewGameState.CreateStateObject(class'XComGameState_HeadquartersXCom', XComHQ.ObjectID));
	NewGameState.AddStateObject(XComHQ);

	XComHQ.TacticalGameplayTags.AddItem('ResistanceIsPlated');

}

function OnArmMagWeaponCompletion(XComGameState NewGameState, XComGameState_Tech TechState)
{
	local XComGameState_HeadquartersXCom XComHQ;
	local XComGameStateHistory History;

	History = `XCOMHISTORY;
	XComHQ = XComGameState_HeadquartersXCom(History.GetSingleGameStateObjectForClass(class'XComGameState_HeadquartersXCom'));

	XComHQ = XComGameState_HeadquartersXCom(NewGameState.CreateStateObject(class'XComGameState_HeadquartersXCom', XComHQ.ObjectID));
	NewGameState.AddStateObject(XComHQ);

	XComHQ.TacticalGameplayTags.AddItem('ResistanceIsMagnetic');

}

function OnArmPlasmaGrenadeCompletion(XComGameState NewGameState, XComGameState_Tech TechState)
{
	local XComGameState_HeadquartersXCom XComHQ;
	local XComGameStateHistory History;

	History = `XCOMHISTORY;
	XComHQ = XComGameState_HeadquartersXCom(History.GetSingleGameStateObjectForClass(class'XComGameState_HeadquartersXCom'));

	XComHQ = XComGameState_HeadquartersXCom(NewGameState.CreateStateObject(class'XComGameState_HeadquartersXCom', XComHQ.ObjectID));
	NewGameState.AddStateObject(XComHQ);

	XComHQ.TacticalGameplayTags.AddItem('ResistanceIsGrenaded');

}

function OnArmPoweredArmorCompletion(XComGameState NewGameState, XComGameState_Tech TechState)
{
	local XComGameState_HeadquartersXCom XComHQ;
	local XComGameStateHistory History;

	History = `XCOMHISTORY;
	XComHQ = XComGameState_HeadquartersXCom(History.GetSingleGameStateObjectForClass(class'XComGameState_HeadquartersXCom'));

	XComHQ = XComGameState_HeadquartersXCom(NewGameState.CreateStateObject(class'XComGameState_HeadquartersXCom', XComHQ.ObjectID));
	NewGameState.AddStateObject(XComHQ);

	XComHQ.TacticalGameplayTags.AddItem('ResistanceIsPowered');

}

function OnArmBeamRiflesCompletion(XComGameState NewGameState, XComGameState_Tech TechState)
{
	local XComGameState_HeadquartersXCom XComHQ;
	local XComGameStateHistory History;

	History = `XCOMHISTORY;
	XComHQ = XComGameState_HeadquartersXCom(History.GetSingleGameStateObjectForClass(class'XComGameState_HeadquartersXCom'));

	XComHQ = XComGameState_HeadquartersXCom(NewGameState.CreateStateObject(class'XComGameState_HeadquartersXCom', XComHQ.ObjectID));
	NewGameState.AddStateObject(XComHQ);

	XComHQ.TacticalGameplayTags.AddItem('ResistanceIsBeam');

}