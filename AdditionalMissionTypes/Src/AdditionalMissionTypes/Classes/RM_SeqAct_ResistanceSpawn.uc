// This is an Unreal Script
class RM_SeqAct_ResistanceSpawn extends SequenceAction config (HavenSiegeSettings);

var XComGameState_Unit SpawnedUnit;

var public localized string ResistanceRecruit;

//var config bool OverridePool;

//var config bool NoTechsRequired;

event Activated()
{	
	SpawnedUnit = SpawnUnitFromHaven();

	OutputLinks[0].bHasImpulse = SpawnedUnit != none;
	OutputLinks[1].bHasImpulse = SpawnedUnit == none;
}

static function XComGameState_Unit SpawnUnitFromHaven()
{
	local XComGameStateHistory History;

	History = `XCOMHISTORY;


	// this is a debug game of some kind, so we need to make a new fake unit
	return CreateDebugUnit(History);
	
}


// chooses a location for the unit to spawn in the spawn zone
private static function bool ChooseSpawnLocation(out Vector SpawnLocation)
{
	local XComParcelManager ParcelManager;
	local XComGroupSpawn SoldierSpawn;
	local array<Vector> FloorPoints;

	// attempt to find a place in the spawn zone for this unit to spawn in
	ParcelManager = `PARCELMGR;
	SoldierSpawn = ParcelManager.SoldierSpawn;

	if(SoldierSpawn == none) // check for test maps, just grab any spawn
	{
		foreach `XComGRI.AllActors(class'XComGroupSpawn', SoldierSpawn)
		{
			break;
		}
	}

	SoldierSpawn.GetValidFloorLocations(FloorPoints);
	if(FloorPoints.Length == 0)
	{
		return false;
	}
	else
	{
		SpawnLocation = FloorPoints[0];
		return true;
	}
}

// Creates a random unit and places it on the game board
private static function XComGameState_Unit CreateDebugUnit(XComGameStateHistory History)
{
	local X2TacticalGameRuleset Rules;
	local Vector SpawnLocation;
	local XComGameState_HeadquartersXCom XComHQ;
	local XGCharacterGenerator CharacterGenerator;
	local X2CharacterTemplate CharTemplate;
	local XComGameStateContext_TacticalGameRule NewGameStateContext;
	local XComGameState NewGameState;
	local XComGameState_Unit Unit, NewUnitState;
	local XComGameState_Player PlayerState;
	local XComOnlineProfileSettings ProfileSettings;
	local TSoldier Soldier;
	local X2ArmorTemplate ArmorTemplate, RelevantTemplate;
	local X2WeaponTemplate WeaponTemplate;
	local X2EquipmentTemplate ItemTemplate;
	local X2GrenadeTemplate GrenadeTemplate;
	local XComGameState_Item SourceArmor, SourceWeapon, SourceItem, PlasmaGrenade, PlatedArmor, MagWeapon, PoweredArmor, BeamWeapon, RelevantItem;
	local X2ItemTemplateManager ItemTemplateManager;
	local RM_AMT_Settings Settings;
	local bool OverridePool, NoTechsRequired;
	local MAS_API_AchievementName AchNameObj;
	local XComGameState_Ability NewAbility;
	local StateObjectReference AbilityRef;
	local X2AbilityTemplateManager AbilityTemplateManager;
	local X2AbilityTemplate	AbilityTemplate;

	AbilityTemplateManager = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager();

	Settings = new class'RM_AMT_Settings';
	OverridePool = Settings.OverridePool;
	NoTechsRequired = Settings.NoTechsRequired;
	ItemTemplateManager = class'X2ItemTemplateManager'.static.GetItemTemplateManager();

	// pick a floor point at random to spawn the unit at
	if(!ChooseSpawnLocation(SpawnLocation))
	{
		return none;
	}

	ProfileSettings = `XPROFILESETTINGS;


	NewGameStateContext = class'XComGameStateContext_TacticalGameRule'.static.BuildContextFromGameRule(eGameRule_UnitAdded);
	NewGameState = History.CreateNewGameState(true, NewGameStateContext);
		XComHQ = XComGameState_HeadquartersXCom(`XCOMHISTORY.GetSingleGameStateObjectForClass( class'XComGameState_HeadquartersXCom' ) );

		XComHQ = XComGameState_HeadquartersXCom(NewGameState.CreateStateObject(class'XComGameState_HeadquartersXCom', XComHQ.ObjectID));
	NewGameState.AddStateObject(XComHQ);	


	if(OverridePool)
	{
		// generate a random unit
	CharacterGenerator = `XCOMGRI.Spawn(class'XGCharacterGenerator');

	CharTemplate = class'X2CharacterTemplateManager'.static.GetCharacterTemplateManager().FindCharacterTemplate('Soldier');
	`assert(CharTemplate != none);

	Unit = CharTemplate.CreateInstanceFromTemplate(NewGameState);

	}

	else if (!OverridePool)
	{
	//let's go take a look in the character pool
	Unit = `CHARACTERPOOLMGR.CreateCharacter(NewGameState, ProfileSettings.Data.m_eCharPoolUsage);
	}

	NewGameState.AddStateObject(Unit);
	// assign the player to him
	foreach History.IterateByClassType(class'XComGameState_Player', PlayerState)
	{
		if(PlayerState.GetTeam() == eTeam_XCom)
		{
			Unit.SetControllingPlayer(PlayerState.GetReference());
			break;
		}
	}

	//first we give soldiers a default loadout
	Unit.ApplyInventoryLoadout(NewGameState);

	
	if(NoTechsRequired) //then we either give them whatever XCOM has
	{
		Unit.ApplyBestGearLoadout(NewGameState);
		if (Unit != none)
			{
				SourceArmor = Unit.GetItemInSlot(eInvSlot_Armor);
				SourceWeapon = Unit.GetItemInSlot(eInvSlot_PrimaryWeapon);
				ArmorTemplate = X2ArmorTemplate(SourceArmor.GetMyTemplate());
				WeaponTemplate = X2WeaponTemplate(SourceWeapon.GetMyTemplate());

				`log("Checking your armour...");

				if (ArmorTemplate.ArmorTechCat == 'powered')
				{
					Unit.RemoveItemFromInventory(SourceArmor, NewGameState);
					ItemTemplate = X2EquipmentTemplate(ItemTemplateManager.FindItemTemplate('MediumPlatedArmor'));
					PlatedArmor = ItemTemplate.CreateInstanceFromTemplate(NewGameState);
					Unit.AddItemToInventory(PlatedArmor, eInvSlot_Armor, NewGameState) ;
					NewGameState.AddStateObject(PlatedArmor);

				}

				if (WeaponTemplate.WeaponTech == 'beam')
				{
					Unit.RemoveItemFromInventory(SourceWeapon, NewGameState);
					ItemTemplate = X2EquipmentTemplate(ItemTemplateManager.FindItemTemplate('AssaultRifle_MG'));
					MagWeapon = ItemTemplate.CreateInstanceFromTemplate(NewGameState);
					Unit.AddItemToInventory(MagWeapon, eInvSlot_PrimaryWeapon, NewGameState);
					NewGameState.AddStateObject(MagWeapon);
				}
			
			}
	}
	//or we now we start checking if the player has any of the projects done
	if( XComHQ.TacticalGameplayTags.Find('ResistanceIsGrenaded') != INDEX_NONE )
	{

			SourceArmor = Unit.GetItemInSlot(eInvSlot_Armor);
			SourceWeapon = Unit.GetItemInSlot(eInvSlot_PrimaryWeapon);
			SourceItem = Unit.GetItemInSlot(eInvSlot_Utility);
			ArmorTemplate = X2ArmorTemplate(SourceArmor.GetMyTemplate());
			WeaponTemplate = X2WeaponTemplate(SourceWeapon.GetMyTemplate());
			GrenadeTemplate = X2GrenadeTemplate(SourceItem.GetMyTemplate());
			`log("Checking your grenades...");

			 if (GrenadeTemplate.DataName != 'AlienGrenade')
			{

				Unit.RemoveItemFromInventory(SourceItem, NewGameState);
				ItemTemplate = X2EquipmentTemplate(ItemTemplateManager.FindItemTemplate('AlienGrenade'));
				PlasmaGrenade = ItemTemplate.CreateInstanceFromTemplate(NewGameState);
				Unit.AddItemToInventory(PlasmaGrenade, eInvSlot_Utility, NewGameState) ;
				NewGameState.AddStateObject(PlasmaGrenade);

			}



	}

	if( XComHQ.TacticalGameplayTags.Find('ResistanceIsPlated') != INDEX_NONE && XComHQ.TacticalGameplayTags.Find('ResistanceIsPowered') == INDEX_NONE )
	{
			SourceArmor = Unit.GetItemInSlot(eInvSlot_Armor);
			SourceWeapon = Unit.GetItemInSlot(eInvSlot_PrimaryWeapon);
			SourceItem = Unit.GetItemInSlot(eInvSlot_Utility);
			ArmorTemplate = X2ArmorTemplate(SourceArmor.GetMyTemplate());
			WeaponTemplate = X2WeaponTemplate(SourceWeapon.GetMyTemplate());
			GrenadeTemplate = X2GrenadeTemplate(SourceItem.GetMyTemplate());
			`log("Checking your armour...");

			 if (ArmorTemplate.DataName != 'MediumPlatedArmor')
			{

				Unit.RemoveItemFromInventory(SourceArmor, NewGameState);
				ItemTemplate = X2EquipmentTemplate(ItemTemplateManager.FindItemTemplate('MediumPlatedArmor'));
				PlatedArmor = ItemTemplate.CreateInstanceFromTemplate(NewGameState);
				Unit.AddItemToInventory(PlatedArmor, eInvSlot_Armor, NewGameState) ;
				NewGameState.AddStateObject(PlatedArmor);

			}


	}
	if( XComHQ.TacticalGameplayTags.Find('ResistanceIsMagnetic') != INDEX_NONE && XComHQ.TacticalGameplayTags.Find('ResistanceIsBeam') == INDEX_NONE )
	{
			SourceArmor = Unit.GetItemInSlot(eInvSlot_Armor);
			SourceWeapon = Unit.GetItemInSlot(eInvSlot_PrimaryWeapon);
			SourceItem = Unit.GetItemInSlot(eInvSlot_Utility);
			ArmorTemplate = X2ArmorTemplate(SourceArmor.GetMyTemplate());
			WeaponTemplate = X2WeaponTemplate(SourceWeapon.GetMyTemplate());
			GrenadeTemplate = X2GrenadeTemplate(SourceItem.GetMyTemplate());
			`log("Checking your weapon...");

			 if (WeaponTemplate.DataName != 'AssaultRifle_MG')
			{

				Unit.RemoveItemFromInventory(SourceWeapon, NewGameState);
				ItemTemplate = X2EquipmentTemplate(ItemTemplateManager.FindItemTemplate('AssaultRifle_MG'));
				MagWeapon = ItemTemplate.CreateInstanceFromTemplate(NewGameState);
				Unit.AddItemToInventory(MagWeapon, eInvSlot_PrimaryWeapon, NewGameState) ;
				NewGameState.AddStateObject(MagWeapon);

			}


	}

	if( XComHQ.TacticalGameplayTags.Find('ResistanceIsPowered') != INDEX_NONE )
	
	{
			SourceArmor = Unit.GetItemInSlot(eInvSlot_Armor);
			SourceWeapon = Unit.GetItemInSlot(eInvSlot_PrimaryWeapon);
			SourceItem = Unit.GetItemInSlot(eInvSlot_Utility);
			ArmorTemplate = X2ArmorTemplate(SourceArmor.GetMyTemplate());
			WeaponTemplate = X2WeaponTemplate(SourceWeapon.GetMyTemplate());
			GrenadeTemplate = X2GrenadeTemplate(SourceItem.GetMyTemplate());
			`log("Checking your armour...");

			 if (ArmorTemplate.DataName != 'MediumPoweredArmor')
			{

				Unit.RemoveItemFromInventory(SourceArmor, NewGameState);
				ItemTemplate = X2EquipmentTemplate(ItemTemplateManager.FindItemTemplate('MediumPoweredArmor'));
				PoweredArmor = ItemTemplate.CreateInstanceFromTemplate(NewGameState);
				Unit.AddItemToInventory(PoweredArmor, eInvSlot_Armor, NewGameState) ;
				NewGameState.AddStateObject(PoweredArmor);

			}


	}

	if( XComHQ.TacticalGameplayTags.Find('ResistanceIsBeam') != INDEX_NONE )
	{
			SourceArmor = Unit.GetItemInSlot(eInvSlot_Armor);
			SourceWeapon = Unit.GetItemInSlot(eInvSlot_PrimaryWeapon);
			SourceItem = Unit.GetItemInSlot(eInvSlot_Utility);
			ArmorTemplate = X2ArmorTemplate(SourceArmor.GetMyTemplate());
			WeaponTemplate = X2WeaponTemplate(SourceWeapon.GetMyTemplate());
			GrenadeTemplate = X2GrenadeTemplate(SourceItem.GetMyTemplate());
			`log("Checking your weapon...");

			 if (WeaponTemplate.DataName != 'AssaultRifle_BM')
			{

				Unit.RemoveItemFromInventory(SourceWeapon, NewGameState);
				ItemTemplate = X2EquipmentTemplate(ItemTemplateManager.FindItemTemplate('AssaultRifle_BM'));
				BeamWeapon = ItemTemplate.CreateInstanceFromTemplate(NewGameState);
				Unit.AddItemToInventory(BeamWeapon, eInvSlot_PrimaryWeapon, NewGameState) ;
				NewGameState.AddStateObject(BeamWeapon);

			}


	}
	// give him abilities
	NewUnitState = XComGameState_Unit(NewGameState.CreateStateObject(Unit.Class, Unit.ObjectID));
	NewGameState.AddStateObject(NewUnitState);
//
	//RelevantItem = NewUnitState.GetItemInSlot(eInvSlot_Armor);
	//RelevantTemplate = X2ArmorTemplate(RelevantItem.GetMyTemplate());
	//`log("Armor of spawned unit is " $ RelevantItem.GetMyTemplateName());
//
	//if(RelevantTemplate.DataName == 'MediumPlatedArmor')
	//{
		//AbilityTemplate = AbilityTemplateManager.FindAbilityTemplate('MediumPlatedArmorStats');
		//InitAbility(AbilityTemplate, NewUnitState, NewGameState, RelevantItem.GetReference());
	//}
//
	//if(RelevantTemplate.DataName == 'MediumPoweredArmor')
	//{
		//AbilityTemplate = AbilityTemplateManager.FindAbilityTemplate('MediumPoweredArmorStats');
		//InitAbility(AbilityTemplate, NewUnitState, NewGameState, RelevantItem.GetReference());
	//}

//
	//if(PoweredArmor != none)
	//{
	//AbilityTemplate = AbilityTemplateManager.FindAbilityTemplate('MediumPoweredArmorStats');
	//AbilityRef = Rules.InitAbilityForUnit(AbilityTemplate, Unit, NewGameState, PoweredArmor.GetReference());
    //NewAbility = XComGameState_Ability(NewGameState.GetGameStateForObjectID(AbilityRef.ObjectID));
    //NewAbility.CheckForPostBeginPlayActivation();
	//NewGameState.AddStateObject(NewAbility);
	//}
//
	NewUnitState.RandomizeStats();
	`XEVENTMGR.TriggerEvent( 'SoldierCreatedEvent', NewUnitState, NewUnitState, NewGameState );

	Rules = `TACTICALRULES;
	Rules.InitializeUnitAbilities(NewGameState, NewUnitState);

	if(OverridePool)
	{
	// give him an appearance if we didn't take on from the pool
	Soldier = CharacterGenerator.CreateTSoldier();
	NewUnitState.SetTAppearance(Soldier.kAppearance);
	NewUnitState.SetCharacterName(Soldier.strFirstName, Soldier.strLastName, Soldier.strNickName);
	NewUnitState.SetCountry(Soldier.nmCountry);
	NewUnitState.GenerateBackground(default.ResistanceRecruit);

	}

	// put him on the start tile
	NewUnitState.SetVisibilityLocationFromVector(SpawnLocation);

	AchNameObj = new class'MAS_API_AchievementName'; 
	AchNameObj.AchievementName = 'RM_AMT_Fighter'; 
	`XEVENTMGR.TriggerEvent('UnlockAchievement', AchNameObj);

	// submit the new unit
	NewUnitState.bSpawnedFromAvenger = true;
	XComHQ.AddToCrew(NewGameState, NewUnitState);
	NewUnitState.SetStatus(eStatus_Active);
	XComGameStateContext_TacticalGameRule(NewGameState.GetContext()).UnitRef = NewUnitState.GetReference();
	Rules.SubmitGameState(NewGameState);
	//`XCOMGAME.GameRuleset.SubmitGameState(NewGameState);

	// and cleanup the generator object
	CharacterGenerator.Destroy();
	
	return Unit;
}


simulated static function InitAbility(X2AbilityTemplate AbilityTemplate, XComGameState_Unit NewUnit, XComGameState NewGameState, optional StateObjectReference ItemRef, optional StateObjectReference AmmoRef)
{
	local XComGameState_Ability NewAbility, OtherAbility;
	local StateObjectReference AbilityRef;
	local XComGameStateHistory History;
	local X2AbilityTemplateManager AbilityTemplateMan;
	local name AdditionalAbility;

	History = `XCOMHISTORY;
	AbilityTemplateMan = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager();

	// Check for ability overrides
	foreach NewUnit.Abilities(AbilityRef)
	{
		OtherAbility = XComGameState_Ability(History.GetGameStateForObjectID(AbilityRef.ObjectID));

		if (OtherAbility.GetMyTemplate().OverrideAbilities.Find(AbilityTemplate.DataName) != INDEX_NONE)
			return;
	}

	AbilityRef = `TACTICALRULES.InitAbilityForUnit(AbilityTemplate, NewUnit, NewGameState, ItemRef, AmmoRef);
	NewAbility = XComGameState_Ability(NewGameState.GetGameStateForObjectID(AbilityRef.ObjectID));
	NewAbility.CheckForPostBeginPlayActivation();

	// Add additional abilities
	foreach AbilityTemplate.AdditionalAbilities(AdditionalAbility)
	{
		AbilityTemplate = AbilityTemplateMan.FindAbilityTemplate(AdditionalAbility);

		// Check for overrides of the additional abilities
		foreach NewUnit.Abilities(AbilityRef)
		{
			OtherAbility = XComGameState_Ability(History.GetGameStateForObjectID(AbilityRef.ObjectID));

			if (OtherAbility.GetMyTemplate().OverrideAbilities.Find(AbilityTemplate.DataName) != INDEX_NONE)
				return;
		}

		AbilityRef = `TACTICALRULES.InitAbilityForUnit(AbilityTemplate, NewUnit, NewGameState, ItemRef, AmmoRef);
		NewAbility = XComGameState_Ability(NewGameState.GetGameStateForObjectID(AbilityRef.ObjectID));
		NewAbility.CheckForPostBeginPlayActivation();
	}
}


defaultproperties
{
	ObjCategory="Unit"
	ObjName="Spawn Res.Fighter"

	bConvertedForReplaySystem=true
	bCanBeUsedForGameplaySequence=true
	bAutoActivateOutputLinks=false
	
	OutputLinks(0)=(LinkDesc="Success")
	OutputLinks(1)=(LinkDesc="Haven Empty")

	VariableLinks(0)=(ExpectedType=class'SeqVar_GameUnit',LinkDesc="Spawned Unit",PropertyName=SpawnedUnit)
}
