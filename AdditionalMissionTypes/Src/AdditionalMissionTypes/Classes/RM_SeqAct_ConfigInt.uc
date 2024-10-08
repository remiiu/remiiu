
class RM_SeqAct_ConfigInt extends SequenceAction;

var int Property;

event Activated()
	{
		Property = class'X2DownloadableContentInfo_AdditionalMissionTypes'.default.ReinforcementTimer;
	}



defaultproperties
{
	ObjName="Reinforcement Int"

	bConvertedForReplaySystem=true
	bCanBeUsedForGameplaySequence=true
	VariableLinks.Empty
	VariableLinks(0)=(ExpectedType=class'SeqVar_Int',LinkDesc="Target",bWriteable=true,PropertyName=Property)
}
