
class Armor_Stats extends X2Ability
	dependson (XComGameStateContext_Ability) config(NewArmorStats);

static function array<X2DataTemplate> CreateTemplates() //Add our custom abilities to the array.
{
	local array<X2DataTemplate> Templates;

	Templates.AddItem(LightKevlarStats());
	Templates.AddItem(HeavyKevlarStats());
	Templates.AddItem(TechKevlarStats());

	Templates.AddItem(PlatedTechArmorStats());
	Templates.AddItem(PlatedEagleArmorStats());
	Templates.AddItem(PlatedJuggernautArmorStats());
	Templates.AddItem(PlatedPsiArmorStats());
	Templates.AddItem(PlatedChemArmorStats());

	Templates.AddItem(PoweredTechArmorStats());
	Templates.AddItem(PoweredEagleArmorStats());
	Templates.AddItem(PoweredJuggernautArmorStats());
	Templates.AddItem(PoweredPsiArmorStats());
	Templates.AddItem(PoweredChemArmorStats());

	Templates.AddItem(ArmorStats_FireImmunity());
	Templates.AddItem(ArmorStats_PoisonImmunity());
	Templates.AddItem(ArmorStats_AcidImmunity());
	Templates.AddItem(ArmorStats_ControlImmunity());	
	
	return Templates;
}



static function X2AbilityTemplate LightKevlarStats()
{
	//General Stuff
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'LightKevlarStats');
	
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;
	Template.AbilityToHitCalc = default.DeadEye;
	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;
	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);

	//Assign Stats
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP,  class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_SHIELD_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance,   class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation,   class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility,  class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge,   class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Will,   class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_WILL_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_CritChance,   class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_CRIT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_SightRadius,   class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_SIGHT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Offense,   class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_AIM_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense,   class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_DEFENSE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Hacking,   class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_HACK_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_PsiOffense,   class 'NewArmors.Armor_UI'.default.LIGHT_KEVLAR_PSI_BONUS);
	
	//General Stuff
	Template.AddTargetEffect(PersistentStatChangeEffect);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	return Template;
}


//----------------Heavy Kevlar
static function X2AbilityTemplate HeavyKevlarStats()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;
	`CREATE_X2ABILITY_TEMPLATE(Template, 'HeavyKevlarStats');

	Template.AbilitySourceName = 'eAbilitySource_Item';
	
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;
	Template.AbilityToHitCalc = default.DeadEye;
	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;
	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);

	//Assign Stats
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP,  class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP,   class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_SHIELD_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance,   class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation,   class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility,   class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge,   class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Will,   class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_WILL_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_CritChance,   class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_CRIT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_SightRadius,   class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_SIGHT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Offense,   class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_AIM_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense,   class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_DEFENSE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Hacking,   class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_HACK_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_PsiOffense,   class 'NewArmors.Armor_UI'.default.HEAVY_KEVLAR_PSI_BONUS);
	
	//General Stuff
	Template.AddTargetEffect(PersistentStatChangeEffect);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	return Template;
}


//----------------Tech Kevlar


static function X2AbilityTemplate TechKevlarStats()
{
	//General Stuff
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'TechKevlarStats');
	
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;
	Template.AbilityToHitCalc = default.DeadEye;
	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;
	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);

	//Assign Stats
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP,  class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_SHIELD_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance,   class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation,   class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility,  class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge,   class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Will,   class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_WILL_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_CritChance,   class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_CRIT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_SightRadius,   class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_SIGHT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Offense,   class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_AIM_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense,   class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_DEFENSE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Hacking,   class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_HACK_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_PsiOffense,   class 'NewArmors.Armor_UI'.default.TECH_KEVLAR_PSI_BONUS);
	
	//General Stuff
	Template.AddTargetEffect(PersistentStatChangeEffect);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	return Template;
}


static function X2AbilityTemplate PlatedTechArmorStats()
{
	//General Stuff
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PlatedTechArmorStats');
	
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;
	Template.AbilityToHitCalc = default.DeadEye;
	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;
	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);

	//Assign Stats
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP,  class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_SHIELD_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance,   class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation,   class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility,  class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge,   class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Will,   class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_WILL_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_CritChance,   class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_CRIT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_SightRadius,   class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_SIGHT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Offense,   class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_AIM_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense,   class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_DEFENSE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Hacking,   class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_HACK_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_PsiOffense,   class 'NewArmors.Armor_UI'.default.PLATED_GREMLIN_PSI_BONUS);
	
	//General Stuff
	Template.AddTargetEffect(PersistentStatChangeEffect);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	return Template;
}


static function X2AbilityTemplate PlatedEagleArmorStats()
{
	//General Stuff
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PlatedEagleArmorStats');
	
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = true;
	Template.AbilityToHitCalc = default.DeadEye;
	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;
	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);

	//Assign Stats
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP,  class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_SHIELD_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance,   class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation,   class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility,  class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge,   class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Will,   class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_WILL_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_CritChance,   class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_CRIT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_SightRadius,   class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_SIGHT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Offense,   class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_AIM_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense,   class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_DEFENSE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Hacking,   class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_HACK_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_PsiOffense,   class 'NewArmors.Armor_UI'.default.PLATED_EAGLE_PSI_BONUS);
	
	//General Stuff
	Template.AddTargetEffect(PersistentStatChangeEffect);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	return Template;
}


static function X2AbilityTemplate PlatedJuggernautArmorStats()
{
	//General Stuff
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PlatedJuggernautArmorStats');
	
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = true;
	Template.AbilityToHitCalc = default.DeadEye;
	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;
	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);

	//Assign Stats
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP,  class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_SHIELD_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance,   class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation,   class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility,  class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge,   class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Will,   class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_WILL_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_CritChance,   class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_CRIT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_SightRadius,   class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_SIGHT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Offense,   class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_AIM_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense,   class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_DEFENSE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Hacking,   class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_HACK_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_PsiOffense,   class 'NewArmors.Armor_UI'.default.PLATED_JUGGERNAUT_PSI_BONUS);
	
	//General Stuff
	Template.AddTargetEffect(PersistentStatChangeEffect);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	return Template;
}



static function X2AbilityTemplate PlatedPsiArmorStats()
{
	//General Stuff
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PlatedPsiArmorStats');
	
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = true;
	Template.AbilityToHitCalc = default.DeadEye;
	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;
	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);

	//Assign Stats
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP,  class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_SHIELD_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance,   class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation,   class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility,  class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge,   class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Will,   class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_WILL_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_CritChance,   class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_CRIT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_SightRadius,   class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_SIGHT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Offense,   class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_AIM_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense,   class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_DEFENSE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Hacking,   class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_HACK_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_PsiOffense,   class 'NewArmors.Armor_UI'.default.PLATED_PSIONIC_PSI_BONUS);
	
	//General Stuff
	Template.AddTargetEffect(PersistentStatChangeEffect);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	return Template;
}


static function X2AbilityTemplate PlatedChemArmorStats()
{
	//General Stuff
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PlatedChemArmorStats');
	
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = true;
	Template.AbilityToHitCalc = default.DeadEye;
	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;
	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);

	//Assign Stats
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, class 'NewArmors.Armor_UI'.default.PLATED_CHEM_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP,  class 'NewArmors.Armor_UI'.default.PLATED_CHEM_SHIELD_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance,   class 'NewArmors.Armor_UI'.default.PLATED_CHEM_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation,   class 'NewArmors.Armor_UI'.default.PLATED_CHEM_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility,  class 'NewArmors.Armor_UI'.default.PLATED_CHEM_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge,   class 'NewArmors.Armor_UI'.default.PLATED_CHEM_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Will,   class 'NewArmors.Armor_UI'.default.PLATED_CHEM_WILL_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_CritChance,   class 'NewArmors.Armor_UI'.default.PLATED_CHEM_CRIT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_SightRadius,   class 'NewArmors.Armor_UI'.default.PLATED_CHEM_SIGHT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Offense,   class 'NewArmors.Armor_UI'.default.PLATED_CHEM_AIM_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense,   class 'NewArmors.Armor_UI'.default.PLATED_CHEM_DEFENSE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Hacking,   class 'NewArmors.Armor_UI'.default.PLATED_CHEM_HACK_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_PsiOffense,   class 'NewArmors.Armor_UI'.default.PLATED_CHEM_PSI_BONUS);
	
	//General Stuff
	Template.AddTargetEffect(PersistentStatChangeEffect);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	return Template;
}







//------------------Powered





static function X2AbilityTemplate PoweredTechArmorStats()
{
	//General Stuff
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PoweredTechArmorStats');
	
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;
	Template.AbilityToHitCalc = default.DeadEye;
	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;
	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);

	//Assign Stats
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP,  class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_SHIELD_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance,   class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation,   class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility,  class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge,   class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Will,   class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_WILL_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_CritChance,   class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_CRIT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_SightRadius,   class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_SIGHT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Offense,   class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_AIM_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense,   class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_DEFENSE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Hacking,   class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_HACK_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_PsiOffense,   class 'NewArmors.Armor_UI'.default.POWERED_GREMLIN_PSI_BONUS);
	
	//General Stuff
	Template.AddTargetEffect(PersistentStatChangeEffect);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	return Template;
}



static function X2AbilityTemplate PoweredEagleArmorStats()
{
	//General Stuff
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PoweredEagleArmorStats');
	
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = true;
	Template.AbilityToHitCalc = default.DeadEye;
	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;
	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);

	//Assign Stats
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP,  class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_SHIELD_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance,   class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation,   class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility,  class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge,   class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Will,   class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_WILL_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_CritChance,   class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_CRIT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_SightRadius,   class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_SIGHT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Offense,   class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_AIM_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense,   class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_DEFENSE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Hacking,   class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_HACK_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_PsiOffense,   class 'NewArmors.Armor_UI'.default.POWERED_EAGLE_PSI_BONUS);
	
	//General Stuff
	Template.AddTargetEffect(PersistentStatChangeEffect);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	return Template;
}


static function X2AbilityTemplate PoweredJuggernautArmorStats()
{
	//General Stuff
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PoweredJuggernautArmorStats');
	
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = true;
	Template.AbilityToHitCalc = default.DeadEye;
	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;
	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);

	//Assign Stats
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP,  class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_SHIELD_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance,   class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation,   class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility,  class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge,   class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Will,   class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_WILL_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_CritChance,   class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_CRIT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_SightRadius,   class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_SIGHT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Offense,   class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_AIM_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense,   class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_DEFENSE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Hacking,   class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_HACK_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_PsiOffense,   class 'NewArmors.Armor_UI'.default.POWERED_JUGGERNAUT_PSI_BONUS);
	
	//General Stuff
	Template.AddTargetEffect(PersistentStatChangeEffect);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	return Template;
}



static function X2AbilityTemplate PoweredPsiArmorStats()
{
	//General Stuff
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PoweredPsiArmorStats');
	
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = true;
	Template.AbilityToHitCalc = default.DeadEye;
	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;
	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);

	//Assign Stats
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP,  class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_SHIELD_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance,   class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation,   class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility,  class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge,   class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Will,   class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_WILL_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_CritChance,   class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_CRIT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_SightRadius,   class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_SIGHT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Offense,   class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_AIM_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense,   class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_DEFENSE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Hacking,   class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_HACK_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_PsiOffense,   class 'NewArmors.Armor_UI'.default.POWERED_PSIONIC_PSI_BONUS);
	
	//General Stuff
	Template.AddTargetEffect(PersistentStatChangeEffect);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	return Template;
}


static function X2AbilityTemplate PoweredChemArmorStats()
{
	//General Stuff
	local X2AbilityTemplate                 Template;
	local X2AbilityTrigger					Trigger;
	local X2AbilityTarget_Self				TargetStyle;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'PoweredChemArmorStats');
	
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = true;
	Template.AbilityToHitCalc = default.DeadEye;
	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;
	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	PersistentStatChangeEffect = new class'X2Effect_PersistentStatChange';
	PersistentStatChangeEffect.BuildPersistentEffect(1, true, false, false);

	//Assign Stats
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_HP, class 'NewArmors.Armor_UI'.default.POWERED_CHEM_HP_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ShieldHP,  class 'NewArmors.Armor_UI'.default.POWERED_CHEM_SHIELD_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorChance,   class 'NewArmors.Armor_UI'.default.POWERED_CHEM_MITIGATION_CHANCE);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_ArmorMitigation,   class 'NewArmors.Armor_UI'.default.POWERED_CHEM_MITIGATION_AMOUNT);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Mobility,  class 'NewArmors.Armor_UI'.default.POWERED_CHEM_MOBILITY_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Dodge,   class 'NewArmors.Armor_UI'.default.POWERED_CHEM_DODGE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Will,   class 'NewArmors.Armor_UI'.default.POWERED_CHEM_WILL_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_CritChance,   class 'NewArmors.Armor_UI'.default.POWERED_CHEM_CRIT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_SightRadius,   class 'NewArmors.Armor_UI'.default.POWERED_CHEM_SIGHT_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Offense,   class 'NewArmors.Armor_UI'.default.POWERED_CHEM_AIM_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Defense,   class 'NewArmors.Armor_UI'.default.POWERED_CHEM_DEFENSE_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_Hacking,   class 'NewArmors.Armor_UI'.default.POWERED_CHEM_HACK_BONUS);
	PersistentStatChangeEffect.AddPersistentStatChange(eStat_PsiOffense,   class 'NewArmors.Armor_UI'.default.POWERED_CHEM_PSI_BONUS);
	
	//General Stuff
	Template.AddTargetEffect(PersistentStatChangeEffect);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	return Template;
}






// General Abilities-----------------------Special thanks to raeli87



static function X2AbilityTemplate ArmorStats_FireImmunity()
{
	local X2AbilityTemplate                 Template;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;
	local X2Effect_DamageImmunity           DamageImmunity;
	`CREATE_X2ABILITY_TEMPLATE(Template, 'ArmorStats_FireImmunity');
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_item_nanofibervest";
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;
	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);	
	DamageImmunity = new class'X2Effect_DamageImmunity';
	DamageImmunity.ImmuneTypes.AddItem('Fire');
	DamageImmunity.BuildPersistentEffect(1, true, false, false);
	DamageImmunity.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	Template.AddTargetEffect(DamageImmunity);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	return Template;
}
static function X2AbilityTemplate ArmorStats_PoisonImmunity()
{
	local X2AbilityTemplate                 Template;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;
	local X2Effect_DamageImmunity           DamageImmunity;
	`CREATE_X2ABILITY_TEMPLATE(Template, 'ArmorStats_PoisonImmunity');
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_item_nanofibervest";
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;
	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);	
	DamageImmunity = new class'X2Effect_DamageImmunity';
	DamageImmunity.ImmuneTypes.AddItem('Poison');
	DamageImmunity.BuildPersistentEffect(1, true, false, false);
	DamageImmunity.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	Template.AddTargetEffect(DamageImmunity);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	return Template;
}
static function X2AbilityTemplate ArmorStats_AcidImmunity()
{
	local X2AbilityTemplate                 Template;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;
	local X2Effect_DamageImmunity           DamageImmunity;
	`CREATE_X2ABILITY_TEMPLATE(Template, 'ArmorStats_AcidImmunity');
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_item_nanofibervest";
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;
	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);	
	DamageImmunity = new class'X2Effect_DamageImmunity';
	DamageImmunity.ImmuneTypes.AddItem('Acid');
	DamageImmunity.ImmuneTypes.AddItem(class'X2Item_DefaultDamageTypes'.default.ParthenogenicPoisonType);
	DamageImmunity.BuildPersistentEffect(1, true, false, false);
	DamageImmunity.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	Template.AddTargetEffect(DamageImmunity);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	return Template;
}
static function X2AbilityTemplate ArmorStats_ControlImmunity()
{
	local X2AbilityTemplate                 Template;
	local X2Effect_PersistentStatChange		PersistentStatChangeEffect;
	local X2Effect_DamageImmunity           DamageImmunity;
	`CREATE_X2ABILITY_TEMPLATE(Template, 'ArmorStats_ControlImmunity');
	Template.IconImage = "img:///UILibrary_PerkIcons.UIPerk_item_nanofibervest";
	Template.AbilitySourceName = 'eAbilitySource_Item';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.bDisplayInUITacticalText = false;
	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);	
	DamageImmunity = new class'X2Effect_DamageImmunity';
	DamageImmunity.ImmuneTypes.AddItem('Stun');
	DamageImmunity.ImmuneTypes.AddItem('Mental');
	DamageImmunity.BuildPersistentEffect(1, true, false, false);
	DamageImmunity.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false, , Template.AbilitySourceName);
	Template.AddTargetEffect(DamageImmunity);
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	return Template;
}


