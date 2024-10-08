class RM_SeqAct_AchievementHavenEvac extends SequenceAction;

var int Property;

event Activated()
	{
		local MAS_API_AchievementName AchNameObj;

		AchNameObj = new class'MAS_API_AchievementName'; 
		AchNameObj.AchievementName = 'RM_AMT_HavenEvac'; 
		`XEVENTMGR.TriggerEvent('UnlockAchievement', AchNameObj);
	}



defaultproperties
{
	ObjName="Haven Siege Evac"
	ObjCategory="Level"

	bConvertedForReplaySystem=true
	bCanBeUsedForGameplaySequence=true
	VariableLinks.Empty

}
