
class RM_SeqAct_ConfigFighterInt extends SequenceAction;

var int Property;

event Activated()
	{

		Property = class'X2DownloadableContentInfo_AdditionalMissionTypes'.default.FighterCount;
	}



defaultproperties
{
	ObjName="Fighter Int"
	bConvertedForReplaySystem=true
	bCanBeUsedForGameplaySequence=true
	VariableLinks.Empty
	VariableLinks(0)=(ExpectedType=class'SeqVar_Int',LinkDesc="Target",bWriteable=true,PropertyName=Property)
}
