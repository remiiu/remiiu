class AWC_Listener extends UIScreenListener;

function RefreshAWCRanks(XComGameState_Unit Unit, UIArmory_Promotion up)
{
	local XComGameStateHistory History;
	local XComGameState_HeadquartersXCom XComHQ;
	local int idx;
	local array<name> AWCAbilityNames;

	History = `XCOMHISTORY;
	XComHQ = XComGameState_HeadquartersXCom(History.GetSingleGameStateObjectForClass(class'XComGameState_HeadquartersXCom'));

	if(XComHQ.HasFacilityByName('AdvancedWarfareCenter'))
	{
		for(idx = 0; idx < Unit.AWCAbilities.Length; idx++)
		{
			if(!Unit.AWCAbilities[idx].bUnlocked && Unit.AWCAbilities[idx].iRank < Unit.GetSoldierRank())
			{
				`log("Unit got corrected requiredrank, was" @ Unit.AWCAbilities[idx].iRank @ "now" @ Unit.GetSoldierRank());
				Unit.AWCAbilities[idx].iRank = Unit.GetSoldierRank();
				if (!up.bShownAWCPopup)
				{
					AWCAbilityNames = up.AwardAWCAbilities();
		
					if(AWCAbilityNames.Length > 0)
					{
						up.ShowAWCDialog(AWCAbilityNames);
					}
				}
			}
		}
	}
}



Event OnInit(UIScreen scr)
{
	local XComGameState_Unit Unit;
	local UIArmory_Promotion up;
	up = UIArmory_Promotion(scr);

	Unit = up.GetUnit();
	RefreshAWCRanks(Unit, up);
}

Event OnReceiveFocus(UIScreen scr)
{
	local XComGameState_Unit Unit;
	local UIArmory_Promotion up;
	up = UIArmory_Promotion(scr);

	Unit = up.GetUnit();
	RefreshAWCRanks(Unit, up);
}

defaultproperties
{
	ScreenClass = class'UIArmory_Promotion';
}