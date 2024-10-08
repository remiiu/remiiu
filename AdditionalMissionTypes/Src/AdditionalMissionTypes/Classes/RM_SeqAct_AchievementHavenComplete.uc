class RM_SeqAct_AchievementHavenComplete extends SequenceAction;

var int Property;

event Activated()
	{
		local MAS_API_AchievementName AchNameObj;

		AchNameObj = new class'MAS_API_AchievementName'; 
		AchNameObj.AchievementName = 'RM_AMT_HavenComplete'; 
		`XEVENTMGR.TriggerEvent('UnlockAchievement', AchNameObj);
	}



defaultproperties
{
	ObjName="Haven Siege Success"
	ObjCategory="Level"

	bConvertedForReplaySystem=true
	bCanBeUsedForGameplaySequence=true
	VariableLinks.Empty

}
