class RM_MainMenu_ScreenListener extends UIScreenListener config(HavenSiegeSettings);

var config bool FirstRun;

var UIPanel TestPanel;
var UIText TextStuff;
var UIText TextStuff2;
var UIButton DismissButton;


event OnInit(UIScreen Screen)
{

	if(UIFinalShell(Screen) != none || UIShell(Screen) != none)
	{
		FirstRun = IsGenerated();
		if(!FirstRun)
		{
		TestPanel = Screen.Spawn(class'UIPanel', Screen);
		TestPanel.InitPanel('BGBoxSimple', class'UIUtilities_Controls'.const.MC_X2BackgroundSimple);
		TestPanel.SetPosition(100, 200);
		TestPanel.SetSize(300, 200);

		TextStuff = Screen.Spawn(class'UIText', Screen);
		TextStuff.InitText(, "Test!");
		TextStuff.SetSize(280, 180); 
		TextStuff.SetPosition(185, 210);
		TextStuff.OriginTopCenter();


		TextStuff.SetHTMLText( class'UIUtilities_Text'.static.StyleText("WARNING", eUITextStyle_Title, eUIState_Bad ));

		TextStuff2 = Screen.Spawn(class'UIText', Screen);
		TextStuff2.InitText(, "Test!");
		TextStuff2.SetSize(280, 160); 
		TextStuff2.SetPosition(110, 260);

		TextStuff2.SetHTMLText( class'UIUtilities_Text'.static.StyleText("Additional Mission Types has generated a default config file in the My Games directory. You'll need to restart XCOM 2 for it to take effect. You'll only have to do this once.", eUITextStyle_Tooltip_Body, eUIState_Warning ));

		DismissButton = Screen.Spawn(class'UIButton', Screen);
		DismissButton.InitButton('TestButton', "OK", DismissButtonHandler, );
		DismissButton.SetSize(280, 30); 
		DismissButton.SetPosition(175, 340);
		DismissButton.SetResizeToText(true);
		DismissButton.OriginTopCenter();
		}

	}
}
	
simulated function DismissButtonHandler(UIButton Button)
{
	FirstRun = true;
	self.SaveConfig();
	class 'RM_AMT_Settings'.static.LoadSavedSettingsInitial();
	TestPanel.Remove();
	TextStuff.Remove();
	TextStuff2.Remove();
	DismissButton.Remove();
}

function bool IsGenerated()
{
	local int Version, DefaultVersion;

	Version = class'RM_AMT_Settings'.default.CONFIG_VERSION;
	DefaultVersion = class'RM_AMT_Defaults'.default.VERSION;
	`log("Default config is " $ Defaultversion $ " and normal config is " $ Version );
	if(Version >= DefaultVersion )
	{
		return true;
	}

	else
	{
		return false;
	}
}