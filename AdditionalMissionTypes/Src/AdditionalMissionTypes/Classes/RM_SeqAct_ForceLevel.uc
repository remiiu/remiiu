class RM_SeqAct_ForceLevel extends SequenceAction;

var int ForceLevel;

event Activated()
{
	local XComGameStateHistory History;
	local XComGameState_BattleData BattleData;

	History = `XCOMHISTORY;
	BattleData = XComGameState_BattleData(History.GetSingleGameStateObjectForClass(class'XComGameState_BattleData'));

	ForceLevel = BattleData.GetForceLevel();		
	
}

defaultproperties
{
	ObjName="Get Force Level"
	ObjCategory="Scripting"
	bCallHandler = false

	VariableLinks(1)=(ExpectedType=class'SeqVar_Int',LinkDesc="Force Level",bWriteable=TRUE,PropertyName=ForceLevel)
}