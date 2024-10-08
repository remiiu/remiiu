// This is an Unreal Script

class UITacticalHUD_Ability_CostBasedColors extends UITacticalHUD_Ability config(CostBasedAbilityColors);


struct AbilityCostOverride {
	var string TemplateName;
	var int NeededActionPoints; // Unit must have this many available AP to activate the ability
	var bool WillEndTurn;       // Activating ability will always end turn
};

enum ActionPointCostCategory {
   Free,
   WontEndTurn,
   WillEndTurn
};

var const config bool SingleColorMode;

var const config string AbilityCostColor_FreeAction;
var const config string AbilityCostColor_WontEndTurn;
var const config string AbilityCostColor_WillEndTurn;
var const config string AbilityCostColor_Unavailable;

var const config string AbilityTypeColor_MissionObjective;
var const config string AbilityTypeColor_Perk;
var const config string AbilityTypeColor_Debuff;
var const config string AbilityTypeColor_Psionic;
var const config string AbilityTypeColor_Commander;
var const config string AbilityTypeColor_Item;
var const config string AbilityTypeColor_Standard;

var const config array<AbilityCostOverride> AbilityCostOverrides;
var AbilityCostOverride NoOverrideFound; // Used as return value for FindAbilityCostOverride()

var UIIcon OverlayIcon;

simulated function UIPanel InitAbilityItem(optional name InitName) {
	InitPanel(InitName);

	// Original Icon Code
	Icon = Spawn(class'UIIcon', self);
	Icon.InitIcon('IconMC', , false, true, 36);
	Icon.SetPosition(-20, -20);
    Icon.SetForegroundColor("000000");

    // New Overlay Icon
    if (IsMultiColorMode()) {
        OverlayIcon = Spawn(class'UIIcon', self);
        OverlayIcon.InitIcon(, "img:///CBAC_Resources.IconBorder", false, false, Icon.Width + 4);
        OverlayIcon.setPosition(Icon.X - 2, Icon.Y - 2);
    }

	return self;
}

simulated function UpdateData(int NewIndex, const out AvailableAction AvailableActionInfo) {
    local XComGameState_Ability AbilityState;
    local int HotkeyNumber;

    AbilityState = XComGameState_Ability(`XCOMHISTORY.GetGameStateForObjectID(AvailableActionInfo.AbilityObjectRef.ObjectID));

    // Internal updates (copied from original sources)
    Index = NewIndex;
    AbilityTemplate = AbilityState.GetMyTemplate();

    // Icon enabled/disabled state
    SetAvailable(AvailableActionInfo.AvailableCode == 'AA_Success');

    // Show cooldown counter
    if (AbilityState.IsCoolingDown()) {
        SetCooldown(m_strCooldownPrefix $ string(AbilityState.GetCooldownRemaining()));
    } else {
        SetCooldown("");
    }

    // Symbol + Tooltip
    Icon.LoadIcon(AbilityState.GetMyIconImage());
    if (Movie.IsMouseActive()) {
        SetAntennaText(Caps(AbilityState.GetMyFriendlyName()));
    }

    // Show charge counter
	if (AbilityState.GetMyTemplateName() == 'Reload' && GetFreeReloadsCount(AbilityState) > 0) {
		SetCharge(m_strChargePrefix $ string(GetFreeReloadsCount(AbilityState)));
    } else if (AbilityState.GetCharges() >= 0 && !AbilityState.IsCoolingDown()) {
        SetCharge(m_strChargePrefix $ string(AbilityState.GetCharges()));
    } else {
        SetCharge("");
    }

    // Icon colors (symbol + border)
    if (IsMultiColorMode()) {
        Icon.EnableMouseAutomaticColor(GetAbilityTypeColor(AbilityState));
        OverlayIcon.SetForegroundColor(GetAbilityCostColor(AbilityState, AvailableActionInfo));
    } else {
        Icon.EnableMouseAutomaticColor(GetAbilityCostColor(AbilityState, AvailableActionInfo));
    }
    
    // Hotkey Label
    if (Movie.IsMouseActive()) {
        HotkeyNumber = eTBC_Ability1 + Index;
        if (HotkeyNumber <= eTBC_Ability0) {
            SetHotkeyLabel(PC.Pres.m_kKeybindingData.GetPrimaryOrSecondaryKeyStringForAction(PC.PlayerInput, HotkeyNumber));
        } else {
            SetHotkeyLabel("");
        }
    }

    RefreshShine();
}

simulated function string GetAbilityTypeColor(XComGameState_Ability AbilityState) {
    local XComGameState_BattleData BattleDataState;
    
    BattleDataState = XComGameState_BattleData(`XCOMHISTORY.GetSingleGameStateObjectForClass(class'XComGameState_BattleData'));
	if (BattleDataState != None && BattleDataState.IsAbilityObjectiveHighlighted(AbilityState.GetMyTemplate().DataName)) {
		return AbilityTypeColor_MissionObjective;
    } else if (AbilityState.GetMyTemplate().AbilityIconColor != "") {
		return AbilityState.GetMyTemplate().AbilityIconColor;
	} else {
        switch(AbilityState.GetMyTemplate().AbilitySourceName) {
            case 'eAbilitySource_Perk':
                return AbilityTypeColor_Perk;
            case 'eAbilitySource_Debuff':
                return AbilityTypeColor_Debuff;
            case 'eAbilitySource_Psionic':
                return AbilityTypeColor_Psionic;
            case 'eAbilitySource_Commander':
                return AbilityTypeColor_Commander;
            case 'eAbilitySource_Item':
                return AbilityTypeColor_Item;
            default:
                return AbilityTypeColor_Standard;
        }
    }
}

simulated function string GetAbilityCostColor(XComGameState_Ability AbilityState, AvailableAction AvailableActionInfo) {
    local XComGameState_Unit UnitState;
    
    UnitState = XComGameState_Unit(`XCOMHISTORY.GetGameStateForObjectID(AbilityState.OwnerStateObject.ObjectID));
    if (UnitState.ActionPoints.Length > 0 || AvailableActionInfo.AvailableCode == 'AA_Success') {
        switch(GetActionPointCostCategory(AbilityState, UnitState, AvailableActionInfo)) {
            case Free:
                return AbilityCostColor_FreeAction;
            case WontEndTurn:
                return AbilityCostColor_WontEndTurn;
            case WillEndTurn:
                return AbilityCostColor_WillEndTurn;
            default: // should never be reached
                return AbilityCostColor_Unavailable;
        }
    } else {
        return AbilityCostColor_Unavailable;
    }
}

simulated function ActionPointCostCategory GetActionPointCostCategory(XComGameState_Ability AbilityState, XComGameState_Unit UnitState, AvailableAction AvailableActionInfo) {
	local StateObjectReference FinalizeAbilityRef;
	local XComGameState_Ability FinalizeAbility;
    local X2AbilityCost_ActionPoints ActionPointCost;
    local AbilityCostOverride OverrideEntry;
    
    // Check list of exceptions
    OverrideEntry = FindAbilityCostOverride(AbilityState);
    if (OverrideEntry != NoOverrideFound) {
        `Log("[CBAC] Using ini-defined override for ability: " $ AbilityState.GetMyTemplateName() $ " (NeededActionPoints=" $ OverrideEntry.NeededActionPoints $ ", WillEndTurn=" $ OverrideEntry.WillEndTurn $ ")");
        if (!OverrideEntry.WillEndTurn && OverrideEntry.NeededActionPoints == 0) {
            return Free;
        } else if (!OverrideEntry.WillEndTurn && OverrideEntry.NeededActionPoints < UnitState.ActionPoints.Length) {
            return WontEndTurn;
        } else {
            return WillEndTurn;
        }
    }
    
    // Special handling for free reloads
    if (AbilityState.GetMyTemplateName() == 'Reload' && GetFreeReloadsCount(AbilityState) > 0) {
        return Free;
    }
    
	// Special handling for action with additional confirmation dialogs
	if (AbilityState.GetMyTemplate().FinalizeAbilityName != '') {
		FinalizeAbilityRef = UnitState.FindAbility(AbilityState.GetMyTemplate().FinalizeAbilityName);
		FinalizeAbility = XComGameState_Ability(`XCOMHISTORY.GetGameStateForObjectID(FinalizeAbilityRef.ObjectID));
		return GetActionPointCostCategory(FinalizeAbility, UnitState, AvailableActionInfo);
	}
    
    // Try to determine if action is free; method is not 100% correct, but works in the majority of cases
    ActionPointCost = GetActionPointCost(AbilityState);
    if (ActionPointCost == None || (ActionPointCost.bFreeCost && !ActionPointCost.ConsumeAllPoints(AbilityState, UnitState))) {
        return Free;
    }

    // Check now if using the ability would end the turn. This method often reports wrong answers,
    // especially for free abilities (grapple, serial, etc), so the check for free actions must be done first.
    return AbilityState.WillEndTurn() ? WillEndTurn : WontEndTurn;
}

simulated function X2AbilityCost_ActionPoints GetActionPointCost(XComGameState_Ability AbilityState) {
    local X2AbilityCost_ActionPoints ActionPointCost;
    local int i;

    for (i = 0; i < AbilityState.GetMyTemplate().AbilityCosts.Length; i++) {
        ActionPointCost = X2AbilityCost_ActionPoints(AbilityState.GetMyTemplate().AbilityCosts[i]);
        if (ActionPointCost != None) {
            return ActionPointCost;
        }
    }

    return None;
}

simulated function AbilityCostOverride FindAbilityCostOverride(XComGameState_Ability AbilityState) {
    local int i;
    
    for (i = 0; i < AbilityCostOverrides.Length; i++) {
        if (AbilityCostOverrides[i].TemplateName ~= string(AbilityState.GetMyTemplateName())) {
            return AbilityCostOverrides[i];
        }
    }

    return NoOverrideFound;
}

simulated function int GetFreeReloadsCount(XComGameState_Ability AbilityState) {
	local XComGameState_Unit UnitState;
	local UnitValue CurrentFreeReload;
	local array<X2WeaponUpgradeTemplate> UpgradeTemplates;
	local int i;

	// Get current unit
	UnitState = XComGameState_Unit(`XCOMHISTORY.GetGameStateForObjectID(AbilityState.OwnerStateObject.ObjectID));
	if (UnitState == None) {
		return 0; // Error Fallback
	}

	// Read number of already used-up free reloads
	UnitState.GetUnitValue('FreeReload', CurrentFreeReload);

	// Look for free reload upgrade
	UpgradeTemplates = AbilityState.GetSourceWeapon().GetMyWeaponUpgradeTemplates();
	for (i = 0; i < UpgradeTemplates.Length; ++i) {
		if (UpgradeTemplates[i].NumFreeReloads > 0)	{
			if (CurrentFreeReload.fValue < UpgradeTemplates[i].NumFreeReloads) {
            	return UpgradeTemplates[i].NumFreeReloads - CurrentFreeReload.fValue;
			}
		}
	}

	return 0;
}

simulated function bool IsSingleColorMode() {
    return SingleColorMode;
}

simulated function bool IsMultiColorMode() {
    return !SingleColorMode;
}
