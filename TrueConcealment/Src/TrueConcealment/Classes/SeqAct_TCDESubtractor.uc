class SeqAct_TCDESubtractor extends SequenceAction
	config(TrueConcealment);

var config int DEVal_Small;
var config int DEVal_Large;
var int TimerIn;
var int TimerOut;

event Activated()
{
	`Log("Entered into TCDE action");
	`Log("Timer:" $ TimerIn);
	`Log("Small Value:" $ DEVal_Small);
	`Log("Large Value:" $ DEVal_Large);
	if (TimerIn >= 10)
	{
		`Log("Large subtraction");
		TimerOut = TimerIn - default.DEVal_Large;
		return;
	}
	`Log("Small subtraction");
	TimerOut = TimerIn - default.DEVal_Small;
}
defaultproperties
{
	ObjName="TrueConcealment DE controller"
	ObjCategory="True Concealment"
	ObjColor=(R=255,G=100,B=100,A=255)
	
	bConvertedForReplaySystem=true
	bCanBeUsedForGameplaySequence=true
	bAutoActivateOutputLinks=true

	VariableLinks(0)=(ExpectedType=class'SeqVar_Int',LinkDesc="Timer In",PropertyName=TimerIn)
	VariableLinks(1)=(ExpectedType=class'SeqVar_Int',LinkDesc="Timer Out",PropertyName=TimerOut,bWriteable=true)

}