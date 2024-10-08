
class New_Techs_And_Proving_Ground_Projects extends X2StrategyElement_DefaultTechs config(GameCore);


static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Techs;

	// Armor Techs

	Techs.AddItem(OrderLightKevlar());
	Techs.AddItem(OrderHeavyKevlar());
	Techs.AddItem(OrderTechKevlar());

	Techs.AddItem(CreateGremlinSuitTemplate());
	Techs.AddItem(CreateJuggernautSuitTemplate());
	Techs.AddItem(CreateEagleSuitTemplate());

	Techs.AddItem(CreatePsiSuitTemplate());
	Techs.AddItem(CreateChemSuitTemplate());

	Techs.AddItem(CreatePoweredGremlinSuitTemplate());
	Techs.AddItem(CreatePoweredJuggernautSuitTemplate());
	Techs.AddItem(CreatePoweredEagleSuitTemplate());

	Techs.AddItem(CreatePoweredPsiSuitTemplate());
	Techs.AddItem(CreatePoweredChemSuitTemplate());
	return Techs;
}


//----------------------Gremlin Suit Tech

static function X2DataTemplate OrderLightKevlar()
{
	local X2TechTemplate Template;
	local ArtifactCost Artifacts;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'ResupplyLightKevlar');
	Template.PointsToComplete = StafferXDays(0, 1);
	Template.SortingTier = 1;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_SpiderSuit";
	
	Template.bProvingGround = true;
	Template.bArmor = true;
	Template.bRepeatable = true;
	Template.ResearchCompletedFn = GiveRandomItemReward;


	Template.ItemRewards.AddItem('LightKevlarArmor');



	// Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = 10;
	Template.Cost.ResourceCosts.AddItem(Resources);

	return Template;
}


static function X2DataTemplate OrderHeavyKevlar()
{
	local X2TechTemplate Template;
	local ArtifactCost Artifacts;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'ResupplyHeavyKevlar');
	Template.PointsToComplete = StafferXDays(0, 1);
	Template.SortingTier = 1;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_SpiderSuit";
	
	Template.bProvingGround = true;
	Template.bArmor = true;
	Template.bRepeatable = true;
	Template.ResearchCompletedFn = GiveRandomItemReward;



	Template.ItemRewards.AddItem('HeavyKevlarArmor');



	// Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = 10;
	Template.Cost.ResourceCosts.AddItem(Resources);

	return Template;
}


static function X2DataTemplate OrderTechKevlar()
{
	local X2TechTemplate Template;
	local ArtifactCost Artifacts;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'ResupplyTechKevlar');
	Template.PointsToComplete = StafferXDays(0, 1);
	Template.SortingTier = 1;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_SpiderSuit";
	
	Template.bProvingGround = true;
	Template.bArmor = true;
	Template.bRepeatable = true;
	Template.ResearchCompletedFn = GiveRandomItemReward;



	Template.ItemRewards.AddItem('TechKevlarArmor');


	// Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = 10;
	Template.Cost.ResourceCosts.AddItem(Resources);

	return Template;
}






//----------------------Gremlin Suit Tech

static function X2DataTemplate CreateGremlinSuitTemplate()
{
	local X2TechTemplate Template;
	local ArtifactCost Artifacts;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'GremlinSuit');
	Template.PointsToComplete = StafferXDays(1, 7);
	Template.SortingTier = 1;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_SpiderSuit";
	
	Template.bProvingGround = true;
	Template.bArmor = true;
	Template.bRepeatable = true;
	Template.ResearchCompletedFn = GiveRandomItemReward;



	// Randomized Item Rewards
	Template.ItemRewards.AddItem('PlatedTechArmor');

	// Requirements
	Template.Requirements.RequiredTechs.AddItem('PlatedArmor');
	Template.Requirements.RequiredTechs.AddItem('AutopsyAdventStunLancer');
	Template.Requirements.RequiredTechs.AddItem('AutopsyAdventShieldbearer');

	// Cost
	Resources.ItemTemplateName = 'AlienAlloy';
	Resources.Quantity = 7;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'CorpseAdventShieldbearer';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Artifacts.ItemTemplateName = 'CorpseAdventStunLancer';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Resources.ItemTemplateName = 'EleriumDust';
	Resources.Quantity = 7;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'EleriumCore';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	return Template;
}


//----------------------Juggernaut Suit Tech

static function X2DataTemplate CreateJuggernautSuitTemplate()
{
	local X2TechTemplate Template;
	local ArtifactCost Artifacts;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'JuggernautSuit');
	Template.PointsToComplete = StafferXDays(1, 7);
	Template.SortingTier = 1;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_EXOSuit";

	Template.bProvingGround = true;
	Template.bArmor = true;
	Template.bRepeatable = true;
	Template.ResearchCompletedFn = GiveRandomItemReward;


	// Randomized Item Rewards
	Template.ItemRewards.AddItem('PlatedJuggernautArmor');

	// Requirements
	Template.Requirements.RequiredTechs.AddItem('PlatedArmor');
	Template.Requirements.RequiredTechs.AddItem('AutopsyAdventStunLancer');
	Template.Requirements.RequiredTechs.AddItem('AutopsyAdventMEC');
	// Cost
	Resources.ItemTemplateName = 'AlienAlloy';
	Resources.Quantity = 10;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'CorpseAdventStunLancer';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Artifacts.ItemTemplateName = 'CorpseAdventMEC';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Resources.ItemTemplateName = 'EleriumDust';
	Resources.Quantity = 10;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'EleriumCore';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	return Template;
}


//----------------------Eagle Suit Tech

static function X2DataTemplate CreateEagleSuitTemplate()
{
	local X2TechTemplate Template;
	local ArtifactCost Artifacts;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'EagleSuit');
	Template.PointsToComplete = StafferXDays(1, 7);
	Template.SortingTier = 1;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_SpiderSuit";
	
	Template.bProvingGround = true;
	Template.bArmor = true;
	Template.bRepeatable = true;
	Template.ResearchCompletedFn = GiveRandomItemReward;


	// Randomized Item Rewards
	Template.ItemRewards.AddItem('PlatedEagleArmor');

	// Requirements
	Template.Requirements.RequiredTechs.AddItem('PlatedArmor');
	Template.Requirements.RequiredTechs.AddItem('AutopsyAdventStunLancer');
	Template.Requirements.RequiredTechs.AddItem('AutopsyArchon');
	// Cost
	Resources.ItemTemplateName = 'AlienAlloy';
	Resources.Quantity = 5;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'CorpseAdventStunLancer';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Artifacts.ItemTemplateName = 'CorpseArchon';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Resources.ItemTemplateName = 'EleriumDust';
	Resources.Quantity = 15;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'EleriumCore';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	return Template;
}

//----------------------Psi Suit Tech

static function X2DataTemplate CreatePsiSuitTemplate()
{
	local X2TechTemplate Template;
	local ArtifactCost Artifacts;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'PsiSuit');
	Template.PointsToComplete = StafferXDays(1, 10);
	Template.SortingTier = 1;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_Nanofiber_Materials";
	
	Template.bProvingGround = true;
	Template.bArmor = true;
	Template.bRepeatable = true;
	Template.ResearchCompletedFn = GiveRandomItemReward;


	// Randomized Item Rewards
	Template.ItemRewards.AddItem('PlatedPsiArmor');

	// Requirements
	Template.Requirements.RequiredTechs.AddItem('PlatedArmor');
	Template.Requirements.RequiredTechs.AddItem('Psionics');
	Template.Requirements.RequiredTechs.AddItem('AutopsySectoid');
	Template.Requirements.RequiredTechs.AddItem('AutopsyAdventStunLancer');
	// Cost
	Resources.ItemTemplateName = 'AlienAlloy';
	Resources.Quantity = 10;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'CorpseAdventStunLancer';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Artifacts.ItemTemplateName = 'CorpseSectoid';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Resources.ItemTemplateName = 'EleriumDust';
	Resources.Quantity = 20;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'EleriumCore';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	return Template;
}

//----------------------Chem Suit Tech

static function X2DataTemplate CreateChemSuitTemplate()
{
	local X2TechTemplate Template;
	local ArtifactCost Artifacts;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'PlatedChemSuit');
	Template.PointsToComplete = StafferXDays(1, 7);
	Template.SortingTier = 1;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_SpiderSuit";
	
	Template.bProvingGround = true;
	Template.bArmor = true;
	Template.bRepeatable = true;
	Template.ResearchCompletedFn = GiveRandomItemReward;


	// Randomized Item Rewards
	Template.ItemRewards.AddItem('PlatedChemArmor');

	// Requirements
	Template.Requirements.RequiredTechs.AddItem('PlatedArmor');
	Template.Requirements.RequiredTechs.AddItem('AutopsyAdventStunLancer');
	Template.Requirements.RequiredTechs.AddItem('AutopsyBerserker');
	// Cost
	Resources.ItemTemplateName = 'AlienAlloy';
	Resources.Quantity = 15;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'CorpseAdventStunLancer';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Artifacts.ItemTemplateName = 'CorpseBerserker';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Resources.ItemTemplateName = 'EleriumDust';
	Resources.Quantity = 30;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'EleriumCore';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	return Template;
}


static function X2DataTemplate CreatePoweredGremlinSuitTemplate()
{
	local X2TechTemplate Template;
	local ArtifactCost Artifacts;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'PowredGremlinSuit');
	Template.PointsToComplete = StafferXDays(1, 12);
	Template.SortingTier = 1;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_PoweredArmor";
	
	Template.bProvingGround = true;
	Template.bArmor = true;
	Template.bRepeatable = true;
	Template.ResearchCompletedFn = GiveRandomItemReward;



	// Randomized Item Rewards
	Template.ItemRewards.AddItem('PowredTechArmor');

	// Requirements
	Template.Requirements.RequiredTechs.AddItem('PoweredArmor');
	Template.Requirements.RequiredTechs.AddItem('AutopsyAdventStunLancer');
	Template.Requirements.RequiredTechs.AddItem('AutopsyAdventShieldbearer');
	Template.Requirements.RequiredTechs.AddItem('CodexBrainPt1');

	// Cost
	Resources.ItemTemplateName = 'AlienAlloy';
	Resources.Quantity = 50;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'CorpseAdventShieldbearer';
	Artifacts.Quantity = 2;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Artifacts.ItemTemplateName = 'CorpseCyberus';
	Artifacts.Quantity = 2;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Artifacts.ItemTemplateName = 'CorpseAdventStunLancer';
	Artifacts.Quantity = 2;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Resources.ItemTemplateName = 'EleriumDust';
	Resources.Quantity = 110;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'EleriumCore';
	Artifacts.Quantity = 2;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	return Template;
}


//----------------------Juggernaut Suit Tech

static function X2DataTemplate CreatePoweredJuggernautSuitTemplate()
{
	local X2TechTemplate Template;
	local ArtifactCost Artifacts;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'PowredJuggernautSuit');
	Template.PointsToComplete = StafferXDays(1, 12);
	Template.SortingTier = 1;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_WARSuit";

	Template.bProvingGround = true;
	Template.bArmor = true;
	Template.bRepeatable = true;
	Template.ResearchCompletedFn = GiveRandomItemReward;


	// Randomized Item Rewards
	Template.ItemRewards.AddItem('PoweredJuggernautArmor');

	// Requirements
	Template.Requirements.RequiredTechs.AddItem('PoweredArmor');
	Template.Requirements.RequiredTechs.AddItem('AutopsyAdventStunLancer');
	Template.Requirements.RequiredTechs.AddItem('AutopsyAdventMEC');
	Template.Requirements.RequiredTechs.AddItem('AutopsyAndromedon');
	// Cost
	Resources.ItemTemplateName = 'AlienAlloy';
	Resources.Quantity = 70;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'CorpseAdventStunLancer';
	Artifacts.Quantity = 2;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Artifacts.ItemTemplateName = 'CorpseAdventMEC';
	Artifacts.Quantity = 2;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Artifacts.ItemTemplateName = 'CorpseAndromedon';
	Artifacts.Quantity = 2;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Resources.ItemTemplateName = 'EleriumDust';
	Resources.Quantity = 60;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'EleriumCore';
	Artifacts.Quantity = 2;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	return Template;
}


//----------------------Eagle Suit Tech

static function X2DataTemplate CreatePoweredEagleSuitTemplate()
{
	local X2TechTemplate Template;
	local ArtifactCost Artifacts;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'PoweredEagleSuit');
	Template.PointsToComplete = StafferXDays(1, 10);
	Template.SortingTier = 1;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_WraithSuit";
	
	Template.bProvingGround = true;
	Template.bArmor = true;
	Template.bRepeatable = true;
	Template.ResearchCompletedFn = GiveRandomItemReward;


	// Randomized Item Rewards
	Template.ItemRewards.AddItem('PoweredEagleArmor');

	// Requirements
	Template.Requirements.RequiredTechs.AddItem('PoweredArmor');
	Template.Requirements.RequiredTechs.AddItem('AutopsyAdventStunLancer');
	Template.Requirements.RequiredTechs.AddItem('AutopsyArchon');
	Template.Requirements.RequiredTechs.AddItem('AutopsyChryssalid');
	// Cost
	Resources.ItemTemplateName = 'AlienAlloy';
	Resources.Quantity = 40;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'CorpseAdventStunLancer';
	Artifacts.Quantity = 2;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Artifacts.ItemTemplateName = 'CorpseArchon';
	Artifacts.Quantity = 2;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Artifacts.ItemTemplateName = 'CorpseChryssalid';
	Artifacts.Quantity = 2;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Resources.ItemTemplateName = 'EleriumDust';
	Resources.Quantity = 67;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'EleriumCore';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	return Template;
}

//----------------------Psi Suit Tech

static function X2DataTemplate CreatePoweredPsiSuitTemplate()
{
	local X2TechTemplate Template;
	local ArtifactCost Artifacts;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'PoweredPsiSuit');
	Template.PointsToComplete = StafferXDays(1, 10);
	Template.SortingTier = 1;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_Nanofiber_Materials";
	
	Template.bProvingGround = true;
	Template.bArmor = true;
	Template.bRepeatable = true;
	Template.ResearchCompletedFn = GiveRandomItemReward;


	// Randomized Item Rewards
	Template.ItemRewards.AddItem('PoweredPsiArmor');

	// Requirements
	Template.Requirements.RequiredTechs.AddItem('PoweredArmor');
	Template.Requirements.RequiredTechs.AddItem('Psionics');
	Template.Requirements.RequiredTechs.AddItem('AutopsySectoid');
	Template.Requirements.RequiredTechs.AddItem('AutopsyGatekeeper');
	Template.Requirements.RequiredTechs.AddItem('AutopsyAdventStunLancer');
	// Cost
	Resources.ItemTemplateName = 'AlienAlloy';
	Resources.Quantity = 40;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'CorpseAdventStunLancer';
	Artifacts.Quantity = 2;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Artifacts.ItemTemplateName = 'CorpseGatekeeper';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Artifacts.ItemTemplateName = 'CorpseSectoid';
	Artifacts.Quantity = 2;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Resources.ItemTemplateName = 'EleriumDust';
	Resources.Quantity = 70;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'EleriumCore';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	return Template;
}

//----------------------Chem Suit Tech

static function X2DataTemplate CreatePoweredChemSuitTemplate()
{
	local X2TechTemplate Template;
	local ArtifactCost Artifacts;
	local ArtifactCost Resources;

	`CREATE_X2TEMPLATE(class'X2TechTemplate', Template, 'PoweredChemSuit');
	Template.PointsToComplete = StafferXDays(1, 10);
	Template.SortingTier = 1;
	Template.strImage = "img:///UILibrary_StrategyImages.ResearchTech.TECH_SpiderSuit";
	
	Template.bProvingGround = true;
	Template.bArmor = true;
	Template.bRepeatable = true;
	Template.ResearchCompletedFn = GiveRandomItemReward;


	// Randomized Item Rewards
	Template.ItemRewards.AddItem('PoweredChemArmor');

	// Requirements
	Template.Requirements.RequiredTechs.AddItem('PoweredArmor');
	Template.Requirements.RequiredTechs.AddItem('AutopsyAdventStunLancer');
	Template.Requirements.RequiredTechs.AddItem('AutopsyBerserker');
	Template.Requirements.RequiredTechs.AddItem('AutopsyChryssalid');
	// Cost
	Resources.ItemTemplateName = 'AlienAlloy';
	Resources.Quantity = 30;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'CorpseAdventStunLancer';
	Artifacts.Quantity = 2;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Artifacts.ItemTemplateName = 'CorpseBerserker';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Artifacts.ItemTemplateName = 'CorpseChryssalid';
	Artifacts.Quantity = 2;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	Resources.ItemTemplateName = 'EleriumDust';
	Resources.Quantity = 50;
	Template.Cost.ResourceCosts.AddItem(Resources);

	Artifacts.ItemTemplateName = 'EleriumCore';
	Artifacts.Quantity = 1;
	Template.Cost.ArtifactCosts.AddItem(Artifacts);

	return Template;
}