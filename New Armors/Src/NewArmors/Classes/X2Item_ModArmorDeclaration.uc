//Reference to Config to acess variables
class X2Item_ModArmorDeclaration extends X2Item;



//Refernce to all armor creating functions
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> ModArmors;

	ModArmors.AddItem(CreateLightKevlar());
	ModArmors.AddItem(CreateHeavyKevlar());
	ModArmors.AddItem(CreateTechKevlar());

	//Plated Items
	ModArmors.AddItem(CreatePlatedTech());
	ModArmors.AddItem(CreatePlatedEagle());
	ModArmors.AddItem(CreatePlatedJuggernaut());

	ModArmors.AddItem(CreatePlatedPsi());
	ModArmors.AddItem(CreatePlatedChem());


	//Powered items
	ModArmors.AddItem(CreatePoweredTech());
	ModArmors.AddItem(CreatePoweredEagle());
	ModArmors.AddItem(CreatePoweredJuggernaut());
	ModArmors.AddItem(CreatePoweredPsi());
	ModArmors.AddItem(CreatePoweredChem());
	return ModArmors;
}


//Kevlar Vest Function
static function X2DataTemplate CreateLightKevlar()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'LightKevlarArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Kevlar_Armor";
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.ArmorTechCat = 'conventional';
	Template.Tier = 0;
	Template.AkAudioSoldierArmorSwitch = 'Conventional';
	Template.EquipSound = "StrategyUI_Armor_Equip_Conventional"; 
	Template.Abilities.AddItem('LightKevlarStats');
	Template.UpgradeItem = 'MediumPlatedArmor';
	//Assigns UI ToolTips
	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP,					class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation,		class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, eStat_Mobility,			class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, eStat_Dodge,					class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_DODGE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.WillLabel, eStat_Will,					class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_WILL_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.CritChanceLabel, eStat_CritChance,		class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_CRIT_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.AimLabel, eStat_Offense,					class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_AIM_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DefenseLabel, eStat_Defense,				class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_DEFENSE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.TechBonusLabel, eStat_Hacking,			class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_HACK_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.PsiOffenseBonusLabel, eStat_PsiOffense,	class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_PSI_BONUS);	

	return Template;
}

//Reinforced Kevlar Function
static function X2DataTemplate CreateHeavyKevlar()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'HeavyKevlarArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Kevlar_Armor";
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.ArmorTechCat = 'conventional';
	Template.Tier = 0;
	Template.AkAudioSoldierArmorSwitch = 'Conventional';
	Template.EquipSound = "StrategyUI_Armor_Equip_Conventional"; //HeavyKevlarArmorStats
	Template.Abilities.AddItem('HeavyKevlarStats');
	Template.UpgradeItem = 'MediumPlatedArmor';
	//Assigns UI ToolTips
	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP,					class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation,		class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, eStat_Mobility,			class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, eStat_Dodge,					class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_DODGE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.WillLabel, eStat_Will,					class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_WILL_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.CritChanceLabel, eStat_CritChance,		class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_CRIT_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.AimLabel, eStat_Offense,					class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_AIM_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DefenseLabel, eStat_Defense,				class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_DEFENSE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.TechBonusLabel, eStat_Hacking,			class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_HACK_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.PsiOffenseBonusLabel, eStat_PsiOffense,	class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_PSI_BONUS);

	return Template;
}


//Gremlin Kevlar Function
static function X2DataTemplate CreateTechKevlar()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'TechKevlarArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Kevlar_Armor";
	Template.StartingItem = true;
	Template.CanBeBuilt = false;
	Template.ArmorTechCat = 'conventional';
	Template.Tier = 0;
	Template.AkAudioSoldierArmorSwitch = 'Conventional';
	Template.EquipSound = "StrategyUI_Armor_Equip_Conventional"; //TechKevlarArmorStats
	Template.Abilities.AddItem('TechKevlarStats');
	Template.UpgradeItem = 'MediumPlatedArmor';

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP,					class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation,		class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, eStat_Mobility,			class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, eStat_Dodge,					class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_DODGE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.WillLabel, eStat_Will,					class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_WILL_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.CritChanceLabel, eStat_CritChance,		class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_CRIT_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.AimLabel, eStat_Offense,					class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_AIM_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DefenseLabel, eStat_Defense,				class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_DEFENSE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.TechBonusLabel, eStat_Hacking,			class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_HACK_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.PsiOffenseBonusLabel, eStat_PsiOffense,	class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_PSI_BONUS);


	return Template;
}



//Reinforced Kevlar Function
static function X2DataTemplate CreatePlatedTech()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PlatedTechArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Predator_Armor";
	Template.ItemCat = 'armor';
	//Template.bAddsUtilitySlot = true;
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.TradingPostValue = 20;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('PlatedTechArmorStats');
	Template.ArmorTechCat = 'plated';
	Template.Tier = 2;
	Template.AkAudioSoldierArmorSwitch = 'Predator';
	Template.EquipNarrative = "X2NarrativeMoments.Strategy.CIN_ArmorIntro_PlatedMedium";
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";

	Template.UpgradeItem = 'MediumPoweredArmor';

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP,					class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation,		class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, eStat_Mobility,			class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, eStat_Dodge,					class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_DODGE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.WillLabel, eStat_Will,					class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_WILL_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.CritChanceLabel, eStat_CritChance,		class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_CRIT_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.AimLabel, eStat_Offense,					class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_AIM_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DefenseLabel, eStat_Defense,				class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_DEFENSE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.TechBonusLabel, eStat_Hacking,			class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_HACK_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.PsiOffenseBonusLabel, eStat_PsiOffense,	class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_PSI_BONUS);


	return Template;
}


static function X2DataTemplate CreatePlatedEagle()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PlatedEagleArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Spider_Suit";
	Template.ItemCat = 'armor';
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.TradingPostValue = 30;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('PlatedEagleArmorStats');
	Template.Abilities.AddItem('Grapple');
	Template.ArmorTechCat = 'plated';
	Template.Tier = 2;
	Template.AkAudioSoldierArmorSwitch = 'Spider';
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP,					class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation,		class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, eStat_Mobility,			class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, eStat_Dodge,					class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_DODGE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.WillLabel, eStat_Will,					class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_WILL_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.CritChanceLabel, eStat_CritChance,		class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_CRIT_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.AimLabel, eStat_Offense,					class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_AIM_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DefenseLabel, eStat_Defense,				class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_DEFENSE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.TechBonusLabel, eStat_Hacking,			class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_HACK_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.PsiOffenseBonusLabel, eStat_PsiOffense,	class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_PSI_BONUS);



	return Template;
}


static function X2DataTemplate CreatePlatedJuggernaut()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PlatedJuggernautArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Hammer_Armor";
	Template.ItemCat = 'armor';
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.TradingPostValue = 35;
	Template.PointsToComplete = 0;
	Template.bHeavyWeapon = true;
	Template.Abilities.AddItem('PlatedJuggernautArmorStats');
	Template.Abilities.AddItem('WallBreaking');
	Template.ArmorTechCat = 'plated';
	Template.Tier = 2;
	Template.AkAudioSoldierArmorSwitch = 'EXO';
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP,					class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation,		class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, eStat_Mobility,			class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, eStat_Dodge,					class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_DODGE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.WillLabel, eStat_Will,					class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_WILL_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.CritChanceLabel, eStat_CritChance,		class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_CRIT_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.AimLabel, eStat_Offense,					class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_AIM_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DefenseLabel, eStat_Defense,				class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_DEFENSE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.TechBonusLabel, eStat_Hacking,			class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_HACK_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.PsiOffenseBonusLabel, eStat_PsiOffense,	class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_PSI_BONUS);

	return Template;
}

static function X2DataTemplate CreatePlatedPsi()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PlatedPsiArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Stasis_Vest";
	Template.ItemCat = 'armor';
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.TradingPostValue = 50;
	Template.PointsToComplete = 0;
	Template.bHeavyWeapon = true;
	Template.Abilities.AddItem('PlatedPsiArmorStats');
	Template.Abilities.AddItem('Sustain');
	Template.ArmorTechCat = 'plated';
	Template.Tier = 2;
	Template.AkAudioSoldierArmorSwitch = 'Spider';
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP,					class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation,		class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, eStat_Mobility,			class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, eStat_Dodge,					class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_DODGE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.WillLabel, eStat_Will,					class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_WILL_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.CritChanceLabel, eStat_CritChance,		class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_CRIT_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.AimLabel, eStat_Offense,					class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_AIM_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DefenseLabel, eStat_Defense,				class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_DEFENSE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.TechBonusLabel, eStat_Hacking,			class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_HACK_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.PsiOffenseBonusLabel, eStat_PsiOffense,	class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_PSI_BONUS);


	return Template;
}


static function X2DataTemplate CreatePlatedChem()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PlatedChemArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Predator_Armor";
	Template.ItemCat = 'armor';
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.TradingPostValue = 40;
	Template.PointsToComplete = 0;
	Template.bHeavyWeapon = true;
	Template.Abilities.AddItem('PlatedChemArmorStats');
	Template.Abilities.AddItem('WallBreaking');
	Template.ArmorTechCat = 'plated';
	Template.Tier = 2;
	Template.AkAudioSoldierArmorSwitch = 'Predator';
	Template.EquipSound = "StrategyUI_Armor_Equip_Plated";

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP,					class 'NewArmors.Armor_UI'.default.PLATED_CHEM_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation,		class 'NewArmors.Armor_UI'.default.PLATED_CHEM_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, eStat_Mobility,			class 'NewArmors.Armor_UI'.default.PLATED_CHEM_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, eStat_Dodge,					class 'NewArmors.Armor_UI'.default.PLATED_CHEM_DODGE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.WillLabel, eStat_Will,					class 'NewArmors.Armor_UI'.default.PLATED_CHEM_WILL_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.CritChanceLabel, eStat_CritChance,		class 'NewArmors.Armor_UI'.default.PLATED_CHEM_CRIT_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.AimLabel, eStat_Offense,					class 'NewArmors.Armor_UI'.default.PLATED_CHEM_AIM_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DefenseLabel, eStat_Defense,				class 'NewArmors.Armor_UI'.default.PLATED_CHEM_DEFENSE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.TechBonusLabel, eStat_Hacking,			class 'NewArmors.Armor_UI'.default.PLATED_CHEM_HACK_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.PsiOffenseBonusLabel, eStat_PsiOffense,	class 'NewArmors.Armor_UI'.default.PLATED_CHEM_PSI_BONUS);


	return Template;
}




static function X2DataTemplate CreatePoweredTech()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PoweredTechArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Warden_Armor";
	Template.ItemCat = 'armor';
	//Template.bAddsUtilitySlot = true;
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.TradingPostValue = 80;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('PoweredTechArmorStats');
	Template.Abilities.AddItem('Teleport');
	Template.ArmorTechCat = 'powered';
	Template.Tier = 3;
	Template.AkAudioSoldierArmorSwitch = 'Warden';

	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP,					class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation,		class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, eStat_Mobility,			class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, eStat_Dodge,					class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_DODGE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.WillLabel, eStat_Will,					class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_WILL_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.CritChanceLabel, eStat_CritChance,		class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_CRIT_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.AimLabel, eStat_Offense,					class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_AIM_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DefenseLabel, eStat_Defense,				class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_DEFENSE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.TechBonusLabel, eStat_Hacking,			class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_HACK_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.PsiOffenseBonusLabel, eStat_PsiOffense,	class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_PSI_BONUS);



	return Template;
}


static function X2DataTemplate CreatePoweredEagle()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PoweredEagleArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_WraithSuit";
	Template.ItemCat = 'armor';
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.TradingPostValue = 80;
	Template.PointsToComplete = 0;
	Template.Abilities.AddItem('PoweredEagleArmorStats');
	Template.Abilities.AddItem('Grapple');
	Template.ArmorTechCat = 'powered';
	Template.Tier = 3;
	Template.AkAudioSoldierArmorSwitch = 'Wraith';

	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP,					class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation,		class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, eStat_Mobility,			class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, eStat_Dodge,					class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_DODGE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.WillLabel, eStat_Will,					class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_WILL_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.CritChanceLabel, eStat_CritChance,		class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_CRIT_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.AimLabel, eStat_Offense,					class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_AIM_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DefenseLabel, eStat_Defense,				class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_DEFENSE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.TechBonusLabel, eStat_Hacking,			class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_HACK_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.PsiOffenseBonusLabel, eStat_PsiOffense,	class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_PSI_BONUS);



	return Template;
}


static function X2DataTemplate CreatePoweredJuggernaut()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PoweredJuggernautArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_Marauder_Armor";
	Template.ItemCat = 'armor';
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.TradingPostValue = 80;
	Template.PointsToComplete = 0;
	Template.bHeavyWeapon = true;
	Template.Abilities.AddItem('PoweredJuggernautArmorStats');
	Template.Abilities.AddItem('WallBreaking');
	Template.Abilities.AddItem('HighCoverGenerator');
	Template.ArmorTechCat = 'powered';
	Template.Tier = 3;
	Template.AkAudioSoldierArmorSwitch = 'WAR';
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP,					class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation,		class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, eStat_Mobility,			class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, eStat_Dodge,					class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_DODGE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.WillLabel, eStat_Will,					class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_WILL_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.CritChanceLabel, eStat_CritChance,		class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_CRIT_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.AimLabel, eStat_Offense,					class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_AIM_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DefenseLabel, eStat_Defense,				class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_DEFENSE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.TechBonusLabel, eStat_Hacking,			class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_HACK_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.PsiOffenseBonusLabel, eStat_PsiOffense,	class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_PSI_BONUS);

	return Template;
}



static function X2DataTemplate CreatePoweredPsi()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PoweredPsionicArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_WraithSuit";
	Template.ItemCat = 'armor';
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.TradingPostValue = 80;
	Template.PointsToComplete = 0;
	Template.bHeavyWeapon = true;
	Template.Abilities.AddItem('PoweredPsiArmorStats');
	Template.Abilities.AddItem('Sustain');
	Template.ArmorTechCat = 'powered';
	Template.Tier = 3;
	Template.AkAudioSoldierArmorSwitch = 'Wraith';
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP,					class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation,		class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, eStat_Mobility,			class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, eStat_Dodge,					class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_DODGE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.WillLabel, eStat_Will,					class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_WILL_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.CritChanceLabel, eStat_CritChance,		class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_CRIT_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.AimLabel, eStat_Offense,					class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_AIM_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DefenseLabel, eStat_Defense,				class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_DEFENSE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.TechBonusLabel, eStat_Hacking,			class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_HACK_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.PsiOffenseBonusLabel, eStat_PsiOffense,	class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_PSI_BONUS);

	return Template;
}



static function X2DataTemplate CreatePoweredChem()
{
	local X2ArmorTemplate Template;

	`CREATE_X2TEMPLATE(class'X2ArmorTemplate', Template, 'PoweredChemArmor');
	Template.strImage = "img:///UILibrary_StrategyImages.X2InventoryIcons.Inv_WraithSuit";
	Template.ItemCat = 'armor';
	Template.StartingItem = false;
	Template.CanBeBuilt = false;
	Template.TradingPostValue = 80;
	Template.PointsToComplete = 0;
	Template.bHeavyWeapon = true;
	Template.Abilities.AddItem('PoweredChemArmorStats');
	Template.ArmorTechCat = 'powered';
	Template.Tier = 3;
	Template.AkAudioSoldierArmorSwitch = 'Wraith';
	Template.EquipSound = "StrategyUI_Armor_Equip_Powered";

	Template.SetUIStatMarkup(class'XLocalizedData'.default.HealthLabel, eStat_HP,					class 'NewArmors.Armor_UI'.default.POWERED_CHEM_HP_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.ArmorLabel, eStat_ArmorMitigation,		class 'NewArmors.Armor_UI'.default.POWERED_CHEM_MITIGATION_AMOUNT);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.MobilityLabel, eStat_Mobility,			class 'NewArmors.Armor_UI'.default.POWERED_CHEM_MOBILITY_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DodgeLabel, eStat_Dodge,					class 'NewArmors.Armor_UI'.default.POWERED_CHEM_DODGE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.WillLabel, eStat_Will,					class 'NewArmors.Armor_UI'.default.POWERED_CHEM_WILL_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.CritChanceLabel, eStat_CritChance,		class 'NewArmors.Armor_UI'.default.POWERED_CHEM_CRIT_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.AimLabel, eStat_Offense,					class 'NewArmors.Armor_UI'.default.POWERED_CHEM_AIM_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.DefenseLabel, eStat_Defense,				class 'NewArmors.Armor_UI'.default.POWERED_CHEM_DEFENSE_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.TechBonusLabel, eStat_Hacking,			class 'NewArmors.Armor_UI'.default.POWERED_CHEM_HACK_BONUS);
	Template.SetUIStatMarkup(class'XLocalizedData'.default.PsiOffenseBonusLabel, eStat_PsiOffense,	class 'NewArmors.Armor_UI'.default.POWERED_CHEM_PSI_BONUS);

	return Template;
}