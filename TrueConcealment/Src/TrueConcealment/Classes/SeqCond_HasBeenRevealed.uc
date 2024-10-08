//-----------------------------------------------------------
//Returns whether or not XCOM has been revealed yet this mission
//By: FZeroRacer
//-----------------------------------------------------------
class SeqCond_HasBeenRevealed extends SequenceCondition;

event Activated()
{
	local XComGameState_Player PlayerState;
	local XComGameStateHistory History;
	History = `XCOMHISTORY;
	
	foreach History.IterateByClassType(class'XComGameState_Player', PlayerState)
	{
		if( PlayerState.GetTeam() == eTeam_XCom )
		{
			break;
		}
	}

	if (!PlayerState.bSquadIsConcealed)
	{
		OutputLinks[0].bHasImpulse = true;
	}
	else
	{
		OutputLinks[1].bHasImpulse = true;
	}
}

defaultproperties
{
	ObjName="Squad Concealed"
	ObjCategory="Check"

	bAutoActivateOutputLinks=false
	bCanBeUsedForGameplaySequence=true
	bConvertedForReplaySystem=true

	InputLinks(0)=(LinkDesc="In")
	OutputLinks(0)=(LinkDesc="No")
	OutputLinks(1)=(LinkDesc="Yes")
}
