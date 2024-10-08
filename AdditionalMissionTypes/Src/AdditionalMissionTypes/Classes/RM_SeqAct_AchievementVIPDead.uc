class RM_SeqAct_AchievementVIPDead extends SequenceAction;

var int Property;

event Activated()
	{
		local MAS_API_AchievementName AchNameObj;

		AchNameObj = new class'MAS_API_AchievementName'; 
		AchNameObj.AchievementName = 'RM_AMT_VIP_Dead'; 
		`XEVENTMGR.TriggerEvent('UnlockAchievement', AchNameObj);
	}



defaultproperties
{
	ObjName="PR VIP Dead"
	ObjCategory="Level"

	bConvertedForReplaySystem=true
	bCanBeUsedForGameplaySequence=true
	VariableLinks.Empty

}
