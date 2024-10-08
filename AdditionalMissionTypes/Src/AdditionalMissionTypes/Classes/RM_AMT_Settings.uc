class RM_AMT_Settings extends UIScreenListener config(HavenSiegeSettings);

`include(AdditionalMissionTypes/Src/ModConfigMenuAPI/MCM_API_Includes.uci)
`include(AdditionalMissionTypes/Src/ModConfigMenuAPI/MCM_API_CfgHelpers.uci)


var config int Config_Version;

var config bool OverridePool;

var config bool NoTechsRequired;

var config bool UPGRADESINSTANT; //This denotes whether this research completes instantly once you do it. This is false by default.

//plated armor

var config int PLATEDUPGRADECOST; //this is research time cost, 120 per day is one day per scientist

var config int PLATEDUPGRADE_SUPPLIESCOST;

var config bool HIDEPLATEDRESEARCH;

//mag weapons

var config int MAGUPGRADECOST;

var config int MAGUPGRADE_SUPPLIESCOST;

var config bool HIDEMAGRESEARCH;

// plasma nades
var config int PLASMAGRENADECOST;

var config int PLASMAGRENADE_SUPPLIESCOST;

var config int PLASMAGRENADE_ELERIUMCOST;

var config bool HIDEGRENADERESEARCH;

//power armor

var config int POWERARMORCOST;

var config int POWERARMOR_SUPPLIESCOST;

var config int POWERARMOR_ELERIUMCOST;

var config bool HIDEPOWERARMORRESEARCH;

//plasma rifle

var config int BEAMRIFLESCOST;

var config int BEAMRIFLES_SUPPLIESCOST;

var config int BEAMRIFLES_ELERIUMCOST;

var config bool HIDEBEAMRIFLESRESEARCH;

event OnInit(UIScreen Screen)
{   
 if (MCM_API(Screen) != none)
    {
	 `MCM_API_Register(Screen, ClientModCallback);
	}
}

simulated function ClientModCallback(MCM_API_Instance ConfigAPI, int GameMode)
{
    local MCM_API_SettingsPage Page;
    local MCM_API_SettingsGroup Group;
    LoadSavedSettings();

	if (GameMode == eGameMode_MainMenu || GameMode == eGameMode_Strategy)
    {

		Page = ConfigAPI.NewSettingsPage("Additional Mission Types");
		Page.SetPageTitle("AMT Settings");
		Page.SetSaveHandler(SaveButtonClicked);

		Group = Page.AddGroup('Group1', "General Settings");

		Group.AddCheckbox('checkbox', "Ignore Character Pool", "Forces resistance fighters to be spawned completely randomly, ignoring characters from the character pool entirely.", OverridePool, PoolCheckboxSaveHandler);
		Group.AddCheckbox('checkbox', "No Techs Required", "Resistance fighters will be automatically equipped with the highest squad level equipment XCOM has made", NoTechsRequired, TechRequiredCheckboxSaveHandler);
		Group.AddCheckbox('checkbox', "Instant Resistance Upgrades", "Resistance upgrades will be instantly completed if XCOM has the resources to build them", UPGRADESINSTANT, InstantUpgradesCheckboxSaveHandler);
		
		Group = Page.AddGroup('Group2', "Proving Grounds Settings");
		Group.AddLabel('label', "Alterations here need a restart of XCOM 2 to take effect", "Alterations here need a restart of XCOM 2 to take effect");
		Group.AddSlider('slider', "Plated Armor Upgrade Time", "Sets the upgrade time for Plated Armour", 0, 12000, 120, PLATEDUPGRADECOST, PlatedTimeSliderSaveHandler);
		Group.AddSlider('slider', "Plated Armor Supply Cost", "Sets the supply cost for Plated Armour", 0, 1000, 1, PLATEDUPGRADE_SUPPLIESCOST, PlatedSuppliesSliderSaveHandler);
		Group.AddCheckbox('checkbox', "Hide Plated Armour Project", "Hide this proving grounds project", HIDEPLATEDRESEARCH, PlatedCheckboxSaveHandler);
		Group.AddSlider('slider', "Mag Rifles Upgrade Time", "Sets the upgrade time for Magnetic Rifles", 0, 12000, 120, MAGUPGRADECOST, MagTimeSliderSaveHandler);
		Group.AddSlider('slider', "Mag Rifles Supply Cost", "Sets the supply cost for Magnetic Rifles", 0, 1000, 1, MAGUPGRADE_SUPPLIESCOST, MagSuppliesSliderSaveHandler);
		Group.AddCheckbox('checkbox', "Hide Mag Rifles Project", "Hide this proving grounds project", HIDEMAGRESEARCH, MagCheckboxSaveHandler);
		Group.AddSlider('slider', "Plasma Grenade Upgrade Time", "Sets the upgrade time for Plasma Grenades", 0, 12000, 120, PLASMAGRENADECOST, GrenadeTimeSliderSaveHandler);
		Group.AddSlider('slider', "Plasma Grenade Supply Cost", "Sets the supply cost for Plasma Grenades", 0, 1000, 1, PLASMAGRENADE_SUPPLIESCOST, GrenadeSuppliesSliderSaveHandler);
		Group.AddSlider('slider', "Plasma Grenade Elerium Cost", "Sets the elerium cost for Plasma Grenades", 0, 1000, 1, PLASMAGRENADE_ELERIUMCOST, GrenadeEleriumSliderSaveHandler);
		Group.AddCheckbox('checkbox', "Hide Plasma Grenades Project", "Hide this proving grounds project", HIDEGRENADERESEARCH, GrenadeCheckboxSaveHandler);
				
		Group = Page.AddGroup('Group3', "Research Settings");

		Group.AddLabel('label', "Alterations here need a restart of XCOM 2 to take effect", "Alterations here need a restart of XCOM 2 to take effect");
		Group.AddSlider('slider', "Power Armour Upgrade Time", "Sets the upgrade time for Power Armour", 0, 12000, 120, POWERARMORCOST, PowerTimeSliderSaveHandler);
		Group.AddSlider('slider', "Power Armour Supply Cost", "Sets the supply cost for Plasma Grenades", 0, 1000, 1, POWERARMOR_SUPPLIESCOST, PowerSuppliesSliderSaveHandler);
		Group.AddSlider('slider', "Power Armour Elerium Cost", "Sets the elerium cost for Plasma Grenades", 0, 1000, 1, POWERARMOR_ELERIUMCOST, PowerEleriumSliderSaveHandler);
		Group.AddCheckbox('checkbox', "Hide Power Armour Research", "Hide this research project", HIDEPOWERARMORRESEARCH, PowerCheckboxSaveHandler);
		Group.AddSlider('slider', "Plasma Rifle Upgrade Time", "Sets the upgrade time for Plasma Grenades", 0, 12000, 120, BEAMRIFLESCOST, PlasmaTimeSliderSaveHandler);
		Group.AddSlider('slider', "Plasma Rifle Supply Cost", "Sets the supply cost for Plasma Grenades", 0, 1000, 1, BEAMRIFLES_SUPPLIESCOST, PlasmaSuppliesSliderSaveHandler);
		Group.AddSlider('slider', "Plasma Rifle Elerium Cost", "Sets the elerium cost for Plasma Grenades", 0, 1000, 1, BEAMRIFLES_ELERIUMCOST, PlasmaEleriumSliderSaveHandler);
		Group.AddCheckbox('checkbox', "Hide Plasma Rifle Research", "Hide this research project", HIDEBEAMRIFLESRESEARCH, PlasmaCheckboxSaveHandler);


		Page.ShowSettings();
	}
}


`MCM_CH_VersionChecker(class'RM_AMT_Defaults'.default.Version, Config_Version)


static function LoadSavedSettingsInitial()
{
		`log("Saving initial settings");
		default.Config_Version = class'RM_AMT_Defaults'.default.Version;
		default.OverridePool = class'RM_AMT_Defaults'.default.OverridePool;
		default.NoTechsRequired = class'RM_AMT_Defaults'.default.NoTechsRequired;
		default.UPGRADESINSTANT = class'RM_AMT_Defaults'.default.UPGRADESINSTANT;
		default.PLATEDUPGRADECOST = class'RM_AMT_Defaults'.default.PLATEDUPGRADECOST;
		default.PLATEDUPGRADE_SUPPLIESCOST = class'RM_AMT_Defaults'.default.PLATEDUPGRADE_SUPPLIESCOST;
		default.HIDEPLATEDRESEARCH = class'RM_AMT_Defaults'.default.HIDEPLATEDRESEARCH;
		default.MAGUPGRADECOST = class'RM_AMT_Defaults'.default.MAGUPGRADECOST;
		default.MAGUPGRADE_SUPPLIESCOST = class'RM_AMT_Defaults'.default.MAGUPGRADE_SUPPLIESCOST;
		default.HIDEMAGRESEARCH = class'RM_AMT_Defaults'.default.HIDEMAGRESEARCH;
		default.PLASMAGRENADECOST = class'RM_AMT_Defaults'.default.PLASMAGRENADECOST;
		default.PLASMAGRENADE_SUPPLIESCOST = class'RM_AMT_Defaults'.default.PLASMAGRENADE_SUPPLIESCOST;
		default.PLASMAGRENADE_ELERIUMCOST = class'RM_AMT_Defaults'.default.PLASMAGRENADE_ELERIUMCOST;
		default.HIDEGRENADERESEARCH = class'RM_AMT_Defaults'.default.HIDEGRENADERESEARCH;
		default.POWERARMORCOST = class'RM_AMT_Defaults'.default.POWERARMORCOST;
		default.POWERARMOR_SUPPLIESCOST = class'RM_AMT_Defaults'.default.POWERARMOR_SUPPLIESCOST;
		default.POWERARMOR_ELERIUMCOST = class'RM_AMT_Defaults'.default.POWERARMOR_ELERIUMCOST;
		default.HIDEPOWERARMORRESEARCH = class'RM_AMT_Defaults'.default.HIDEPOWERARMORRESEARCH;
		default.BEAMRIFLESCOST = class'RM_AMT_Defaults'.default.BEAMRIFLESCOST;
		default.BEAMRIFLES_SUPPLIESCOST = class'RM_AMT_Defaults'.default.BEAMRIFLES_SUPPLIESCOST;
		default.BEAMRIFLES_ELERIUMCOST = class'RM_AMT_Defaults'.default.BEAMRIFLES_ELERIUMCOST;
		default.HIDEBEAMRIFLESRESEARCH = class'RM_AMT_Defaults'.default.HIDEBEAMRIFLESRESEARCH;

		class'RM_AMT_Settings'.static.StaticSaveConfig();
}


simulated function LoadSavedSettings()
{
	OverridePool = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.OverridePool, OverridePool);
	NoTechsRequired = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.NoTechsRequired, NoTechsRequired);
	UPGRADESINSTANT = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.UPGRADESINSTANT, UPGRADESINSTANT);
	PLATEDUPGRADECOST = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.PLATEDUPGRADECOST, PLATEDUPGRADECOST);
	PLATEDUPGRADE_SUPPLIESCOST = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.PLATEDUPGRADE_SUPPLIESCOST, PLATEDUPGRADE_SUPPLIESCOST);
	HIDEPLATEDRESEARCH = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.HIDEPLATEDRESEARCH, HIDEPLATEDRESEARCH);
	MAGUPGRADECOST = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.MAGUPGRADECOST, MAGUPGRADECOST);
	MAGUPGRADE_SUPPLIESCOST = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.MAGUPGRADE_SUPPLIESCOST, MAGUPGRADE_SUPPLIESCOST);
	HIDEMAGRESEARCH = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.HIDEMAGRESEARCH, HIDEMAGRESEARCH);
	PLASMAGRENADECOST = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.PLASMAGRENADECOST, PLASMAGRENADECOST);
	PLASMAGRENADE_SUPPLIESCOST = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.PLASMAGRENADE_SUPPLIESCOST, PLASMAGRENADE_SUPPLIESCOST);
	PLASMAGRENADE_ELERIUMCOST  = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.PLASMAGRENADE_ELERIUMCOST, PLASMAGRENADE_ELERIUMCOST);
	HIDEGRENADERESEARCH  = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.HIDEGRENADERESEARCH, HIDEGRENADERESEARCH);
	POWERARMORCOST = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.POWERARMORCOST, POWERARMORCOST);
	POWERARMOR_SUPPLIESCOST = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.POWERARMOR_SUPPLIESCOST, POWERARMOR_SUPPLIESCOST);
	POWERARMOR_ELERIUMCOST  = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.POWERARMOR_ELERIUMCOST, POWERARMOR_ELERIUMCOST);
	HIDEPOWERARMORRESEARCH  = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.HIDEPOWERARMORRESEARCH, HIDEPOWERARMORRESEARCH);
	BEAMRIFLESCOST  = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.BEAMRIFLESCOST, BEAMRIFLESCOST);
	BEAMRIFLES_SUPPLIESCOST = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.BEAMRIFLES_SUPPLIESCOST, BEAMRIFLES_SUPPLIESCOST);
	BEAMRIFLES_ELERIUMCOST = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.BEAMRIFLES_ELERIUMCOST, BEAMRIFLES_ELERIUMCOST);
	HIDEBEAMRIFLESRESEARCH = `MCM_CH_GETVALUE(class'RM_AMT_Defaults'.default.HIDEBEAMRIFLESRESEARCH, HIDEBEAMRIFLESRESEARCH); 

}

`MCM_API_BasicCheckboxSaveHandler(PoolCheckboxSaveHandler, OverridePool)
`MCM_API_BasicCheckboxSaveHandler(TechRequiredCheckboxSaveHandler, NoTechsRequired)
`MCM_API_BasicCheckboxSaveHandler(InstantUpgradesCheckboxSaveHandler, UPGRADESINSTANT)

`MCM_API_BasicSliderSaveHandler(PlatedTimeSliderSaveHandler, PLATEDUPGRADECOST)	
`MCM_API_BasicSliderSaveHandler(PlatedSuppliesSliderSaveHandler, PLATEDUPGRADE_SUPPLIESCOST)
`MCM_API_BasicCheckboxSaveHandler(PlatedCheckboxSaveHandler, HIDEPLATEDRESEARCH)

`MCM_API_BasicSliderSaveHandler(MagTimeSliderSaveHandler, MAGUPGRADECOST)
`MCM_API_BasicSliderSaveHandler(MagSuppliesSliderSaveHandler, MAGUPGRADE_SUPPLIESCOST)
`MCM_API_BasicCheckboxSaveHandler(MagCheckboxSaveHandler, HIDEMAGRESEARCH)

`MCM_API_BasicSliderSaveHandler(GrenadeTimeSliderSaveHandler, PLASMAGRENADECOST)	
`MCM_API_BasicSliderSaveHandler(GrenadeSuppliesSliderSaveHandler, PLASMAGRENADE_SUPPLIESCOST)
`MCM_API_BasicSliderSaveHandler(GrenadeEleriumSliderSaveHandler, PLASMAGRENADE_ELERIUMCOST)
`MCM_API_BasicCheckboxSaveHandler(GrenadeCheckboxSaveHandler, HIDEGRENADERESEARCH)

`MCM_API_BasicSliderSaveHandler(PowerTimeSliderSaveHandler, POWERARMORCOST)	
`MCM_API_BasicSliderSaveHandler(PowerSuppliesSliderSaveHandler, POWERARMOR_SUPPLIESCOST)
`MCM_API_BasicSliderSaveHandler(PowerEleriumSliderSaveHandler, POWERARMOR_ELERIUMCOST)
`MCM_API_BasicCheckboxSaveHandler(PowerCheckboxSaveHandler, HIDEPOWERARMORRESEARCH)

`MCM_API_BasicSliderSaveHandler(PlasmaTimeSliderSaveHandler, BEAMRIFLESCOST)	
`MCM_API_BasicSliderSaveHandler(PlasmaSuppliesSliderSaveHandler, BEAMRIFLES_SUPPLIESCOST)
`MCM_API_BasicSliderSaveHandler(PlasmaEleriumSliderSaveHandler, BEAMRIFLES_ELERIUMCOST)
`MCM_API_BasicCheckboxSaveHandler(PlasmaCheckboxSaveHandler, HIDEBEAMRIFLESRESEARCH)


simulated function SaveButtonClicked(MCM_API_SettingsPage Page)
{
    self.CONFIG_VERSION = `MCM_CH_GetCompositeVersion();
    self.SaveConfig();
}


defaultproperties
{
   ScreenClass = none;
}

