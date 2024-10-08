class RM_SeqAct_AchievementFirebrand extends SequenceAction;

var int Property;

event Activated()
	{
		local MAS_API_AchievementName AchNameObj;

		AchNameObj = new class'MAS_API_AchievementName'; 
		AchNameObj.AchievementName = 'RM_AMT_Firebrand'; 
		`XEVENTMGR.TriggerEvent('UnlockAchievement', AchNameObj);
	}



defaultproperties
{
	ObjName="Firebrand Left"
	ObjCategory="Level"

	bConvertedForReplaySystem=true
	bCanBeUsedForGameplaySequence=true
	VariableLinks.Empty

}
