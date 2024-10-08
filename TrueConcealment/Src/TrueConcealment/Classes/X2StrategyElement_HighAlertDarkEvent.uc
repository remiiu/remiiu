class X2StrategyElement_HighAlertDarkEvent extends X2StrategyElement
	config(TrueConcealment);

var config bool bDarkEventEnabled;

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> DarkEvents;
	if (default.bDarkEventEnabled)
	{
		`Log("High Alert Dark Event enabled");
		DarkEvents.AddItem(CreateHighAlertTemplate());
	}
	else
	{
		`Log("High Alert Dark Event confirmed not enabled");
	}

	return DarkEvents;
}


static function X2DataTemplate CreateHighAlertTemplate()
{
	local X2DarkEventTemplate Template;

	`CREATE_X2TEMPLATE(class'X2DarkEventTemplate', Template, 'DarkEvent_HighAlert');
	Template.Category = "DarkEvent";
	Template.ImagePath = "img:///UILibrary_StrategyImages.X2StrategyMap.DarkEvent_Crackdown";
	Template.bRepeatable = true;
	Template.bTactical = true;
	Template.bLastsUntilNextSupplyDrop = false;
	Template.MaxSuccesses = 0;
	Template.MinActivationDays = 10;
	Template.MaxActivationDays = 21;
	Template.MinDurationDays = 28;
	Template.MaxDurationDays = 28;
	Template.bInfiniteDuration = false;
	Template.StartingWeight = 5;
	Template.MinWeight = 1;
	Template.MaxWeight = 5;
	Template.WeightDeltaPerPlay = -2;
	Template.WeightDeltaPerActivate = 0;

	Template.OnActivatedFn = ActivateTacticalDarkEvent;
	Template.OnDeactivatedFn = DeactivateTacticalDarkEvent;

	return Template;
}
// #######################################################################################
// -------------------- HELPERS ----------------------------------------------------------
// #######################################################################################

//---------------------------------------------------------------------------------------
function ActivateTacticalDarkEvent(XComGameState NewGameState, StateObjectReference InRef, optional bool bReactivate = false)
{
	local XComGameState_DarkEvent DarkEventState;
	local Name DarkEventTemplateName;
	local XComGameState_HeadquartersXCom XComHQ;
	local XComGameStateHistory History;

	History = `XCOMHISTORY;

	DarkEventState = XComGameState_DarkEvent(History.GetGameStateForObjectID(InRef.ObjectID));
	DarkEventTemplateName = DarkEventState.GetMyTemplateName();

	XComHQ = XComGameState_HeadquartersXCom(History.GetSingleGameStateObjectForClass(class'XComGameState_HeadquartersXCom'));

	if( XComHQ.TacticalGameplayTags.Find(DarkEventTemplateName) == INDEX_NONE )
	{
		XComHQ = XComGameState_HeadquartersXCom(NewGameState.CreateStateObject(class'XComGameState_HeadquartersXCom', XComHQ.ObjectID));
		NewGameState.AddStateObject(XComHQ);

		XComHQ.TacticalGameplayTags.AddItem(DarkEventTemplateName);
	}
}

function DeactivateTacticalDarkEvent(XComGameState NewGameState, StateObjectReference InRef)
{
	local XComGameState_DarkEvent DarkEventState;
	local Name DarkEventTemplateName;
	local XComGameState_HeadquartersXCom XComHQ;
	local XComGameStateHistory History;

	History = `XCOMHISTORY;

	DarkEventState = XComGameState_DarkEvent(History.GetGameStateForObjectID(InRef.ObjectID));
	DarkEventTemplateName = DarkEventState.GetMyTemplateName();

	XComHQ = XComGameState_HeadquartersXCom(History.GetSingleGameStateObjectForClass(class'XComGameState_HeadquartersXCom'));

	if( XComHQ.TacticalGameplayTags.Find(DarkEventTemplateName) != INDEX_NONE )
	{
		XComHQ = XComGameState_HeadquartersXCom(NewGameState.CreateStateObject(class'XComGameState_HeadquartersXCom', XComHQ.ObjectID));
		NewGameState.AddStateObject(XComHQ);

		XComHQ.TacticalGameplayTags.RemoveItem(DarkEventTemplateName);
	}
}