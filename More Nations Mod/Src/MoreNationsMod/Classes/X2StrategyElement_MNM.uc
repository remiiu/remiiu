//---------------------------------------------------------------------------------------
//  FILE:    X2StrategyElement_MNM.uc
//  AUTHOR:  Astograph
//           
//	Country templates and the namelists for a country are defined here.
//---------------------------------------------------------------------------------------

class X2StrategyElement_MNM extends X2StrategyElement
	dependson(X2CharacterNameClass_MNM, X2CountryTemplate);

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Countries;
	Countries.AddItem(CreateMNMAfghanistanTemplate());
	Countries.AddItem(CreateMNMAlbaniaTemplate());
	Countries.AddItem(CreateMNMAlgeriaTemplate());
	Countries.AddItem(CreateMNMAndorraTemplate());
	Countries.AddItem(CreateMNMAngolaTemplate());
	Countries.AddItem(CreateMNMAntiguaTemplate());
	Countries.AddItem(CreateMNMArmeniaTemplate());
	Countries.AddItem(CreateMNMAustriaTemplate());
	Countries.AddItem(CreateMNMAzerbaijanTemplate());
	Countries.AddItem(CreateMNMBahamasTemplate());
	Countries.AddItem(CreateMNMBahrainTemplate());
	Countries.AddItem(CreateMNMBarbadosTemplate());
	Countries.AddItem(CreateMNMBangladeshTemplate());
	Countries.AddItem(CreateMNMBelarusTemplate());
	Countries.AddItem(CreateMNMBelizeTemplate());
	Countries.AddItem(CreateMNMBeninTemplate());
	Countries.AddItem(CreateMNMBhutanTemplate());
	Countries.AddItem(CreateMNMBoliviaTemplate());
	Countries.AddItem(CreateMNMBosniaTemplate());
	Countries.AddItem(CreateMNMBotswanaTemplate());
	Countries.AddItem(CreateMNMBruneiTemplate());
	Countries.AddItem(CreateMNMBulgariaTemplate());
	Countries.AddItem(CreateMNMBurkinaFasoTemplate());
	Countries.AddItem(CreateMNMBurundiTemplate());
	Countries.AddItem(CreateMNMCambodiaTemplate());
	Countries.AddItem(CreateMNMCameroonTemplate());
	Countries.AddItem(CreateMNMCapeVerdeTemplate());
	Countries.AddItem(CreateMNMCARTemplate());
	Countries.AddItem(CreateMNMChadTemplate());
	Countries.AddItem(CreateMNMChileTemplate());
	Countries.AddItem(CreateMNMComorosTemplate());
	Countries.AddItem(CreateMNMCongoTemplate());
	Countries.AddItem(CreateMNMCostaRicaTemplate());
	Countries.AddItem(CreateMNMCroatiaTemplate());
	Countries.AddItem(CreateMNMCubaTemplate());
	Countries.AddItem(CreateMNMCyprusTemplate());
	Countries.AddItem(CreateMNMCzechRepublicTemplate());
	Countries.AddItem(CreateMNMDenmarkTemplate());
	Countries.AddItem(CreateMNMDjiboutiTemplate());
	Countries.AddItem(CreateMNMDominicaTemplate());
	Countries.AddItem(CreateMNMDominicanRepTemplate());
	Countries.AddItem(CreateMNMDRCongoTemplate());
	Countries.AddItem(CreateMNMEastTimorTemplate());
	Countries.AddItem(CreateMNMEcuadorTemplate());
	Countries.AddItem(CreateMNMElSalvadorTemplate());
	Countries.AddItem(CreateMNMEnglandTemplate());
	Countries.AddItem(CreateMNMEqGuineaTemplate());
	Countries.AddItem(CreateMNMEritreaTemplate());
	Countries.AddItem(CreateMNMEstoniaTemplate());
	Countries.AddItem(CreateMNMEthiopiaTemplate());
	Countries.AddItem(CreateMNMFijiTemplate());
	Countries.AddItem(CreateMNMFinlandTemplate());
	Countries.AddItem(CreateMNMGabonTemplate());
	Countries.AddItem(CreateMNMGambiaTemplate());
	Countries.AddItem(CreateMNMGeorgiaTemplate());
	Countries.AddItem(CreateMNMGhanaTemplate());
	Countries.AddItem(CreateMNMGrenadaTemplate());
	Countries.AddItem(CreateMNMGuatemalaTemplate());
	Countries.AddItem(CreateMNMGuineaTemplate());
	Countries.AddItem(CreateMNMGuineaBissauTemplate());
	Countries.AddItem(CreateMNMGuyanaTemplate());
	Countries.AddItem(CreateMNMHaitiTemplate());
	Countries.AddItem(CreateMNMHondurasTemplate());
	Countries.AddItem(CreateMNMHongKongTemplate());
	Countries.AddItem(CreateMNMHungaryTemplate());
	Countries.AddItem(CreateMNMIcelandTemplate());
	Countries.AddItem(CreateMNMIraqTemplate());
	Countries.AddItem(CreateMNMIvoryCoastTemplate());
	Countries.AddItem(CreateMNMJamaicaTemplate());
	Countries.AddItem(CreateMNMJordanTemplate());
	Countries.AddItem(CreateMNMKazakhstanTemplate());
	Countries.AddItem(CreateMNMKenyaTemplate());
	Countries.AddItem(CreateMNMKiribatiTemplate());
	Countries.AddItem(CreateMNMKosovoTemplate());
	Countries.AddItem(CreateMNMKuwaitTemplate());
	Countries.AddItem(CreateMNMKyrgyzstanTemplate());
	Countries.AddItem(CreateMNMLaosTemplate());
	Countries.AddItem(CreateMNMLatviaTemplate());
	Countries.AddItem(CreateMNMLebanonTemplate());
	Countries.AddItem(CreateMNMLesothoTemplate());
	Countries.AddItem(CreateMNMLiberiaTemplate());
	Countries.AddItem(CreateMNMLibyaTemplate());
	Countries.AddItem(CreateMNMLiechtensteinTemplate());
	Countries.AddItem(CreateMNMLithuaniaTemplate());
	Countries.AddItem(CreateMNMLuxembourgTemplate());
	Countries.AddItem(CreateMNMMacedoniaTemplate());
	Countries.AddItem(CreateMNMMadagascarTemplate());
	Countries.AddItem(CreateMNMMalaysiaTemplate());
	Countries.AddItem(CreateMNMMalawiTemplate());
	Countries.AddItem(CreateMNMMaldivesTemplate());
	Countries.AddItem(CreateMNMMaliTemplate());
	Countries.AddItem(CreateMNMMaltaTemplate());
	Countries.AddItem(CreateMNMMarshallTemplate());
	Countries.AddItem(CreateMNMMauritaniaTemplate());
	Countries.AddItem(CreateMNMMauritiusTemplate());
	Countries.AddItem(CreateMNMMicronesiaTemplate());
	Countries.AddItem(CreateMNMMoldovaTemplate());
	Countries.AddItem(CreateMNMMonacoTemplate());
	Countries.AddItem(CreateMNMMongoliaTemplate());
	Countries.AddItem(CreateMNMMontenegroTemplate());
	Countries.AddItem(CreateMNMMoroccoTemplate());
	Countries.AddItem(CreateMNMMozambiqueTemplate());
	Countries.AddItem(CreateMNMMyanmarTemplate());
	Countries.AddItem(CreateMNMNamibiaTemplate());
	Countries.AddItem(CreateMNMNauruTemplate());
	Countries.AddItem(CreateMNMNepalTemplate());
	Countries.AddItem(CreateMNMNewZealandTemplate());
	Countries.AddItem(CreateMNMNicaraguaTemplate());
	Countries.AddItem(CreateMNMNigerTemplate());
	Countries.AddItem(CreateMNMNorthKoreaTemplate());
	Countries.AddItem(CreateMNMNorthernIrelandTemplate());
	Countries.AddItem(CreateMNMOmanTemplate());
	Countries.AddItem(CreateMNMPalauTemplate());
	Countries.AddItem(CreateMNMPalestineTemplate());
	Countries.AddItem(CreateMNMPanamaTemplate());
	Countries.AddItem(CreateMNMPapuaNewGuineaTemplate());
	Countries.AddItem(CreateMNMParaguayTemplate());
	Countries.AddItem(CreateMNMPeruTemplate());
	Countries.AddItem(CreateMNMPhilippinesTemplate());
	Countries.AddItem(CreateMNMPuertoRicoTemplate());
	Countries.AddItem(CreateMNMQatarTemplate());
	Countries.AddItem(CreateMNMRomaniaTemplate());
	Countries.AddItem(CreateMNMRwandaTemplate());
	Countries.AddItem(CreateMNMSamoaTemplate());
	Countries.AddItem(CreateMNMSanMarinoTemplate());
	Countries.AddItem(CreateMNMSaoTomeTemplate());
	Countries.AddItem(CreateMNMSaudiArabiaTemplate());
	Countries.AddItem(CreateMNMSenegalTemplate());
	Countries.AddItem(CreateMNMSerbiaTemplate());
	Countries.AddItem(CreateMNMSeychellesTemplate());
	Countries.AddItem(CreateMNMSierraLeoneTemplate());
	Countries.AddItem(CreateMNMSingaporeTemplate());
	Countries.AddItem(CreateMNMSlovakiaTemplate());
	Countries.AddItem(CreateMNMSloveniaTemplate());
	Countries.AddItem(CreateMNMSolomonTemplate());
	Countries.AddItem(CreateMNMSomaliaTemplate());
	Countries.AddItem(CreateMNMSouthSudanTemplate());
	Countries.AddItem(CreateMNMSriLankaTemplate());
	Countries.AddItem(CreateMNMStKittsTemplate());
	Countries.AddItem(CreateMNMStLuciaTemplate());
	Countries.AddItem(CreateMNMStVincentTemplate());
	Countries.AddItem(CreateMNMSudanTemplate());
	Countries.AddItem(CreateMNMSurinameTemplate());
	Countries.AddItem(CreateMNMSwazilandTemplate());
	Countries.AddItem(CreateMNMSwitzerlandTemplate());
	Countries.AddItem(CreateMNMSyriaTemplate());
	Countries.AddItem(CreateMNMTaiwanTemplate());
	Countries.AddItem(CreateMNMTajikistanTemplate());
	Countries.AddItem(CreateMNMTanzaniaTemplate());
	Countries.AddItem(CreateMNMThailandTemplate());
	Countries.AddItem(CreateMNMTogoTemplate());
	Countries.AddItem(CreateMNMTongaTemplate());
	Countries.AddItem(CreateMNMTrinidadTemplate());
	Countries.AddItem(CreateMNMTunisiaTemplate());
	Countries.AddItem(CreateMNMTurkmenistanTemplate());
	Countries.AddItem(CreateMNMTuvaluTemplate());
	Countries.AddItem(CreateMNMUgandaTemplate());
	Countries.AddItem(CreateMNMUAETemplate());
	Countries.AddItem(CreateMNMUruguayTemplate());
	Countries.AddItem(CreateMNMUzbekistanTemplate());
	Countries.AddItem(CreateMNMVanuatuTemplate());
	Countries.AddItem(CreateMNMVietnamTemplate());
	Countries.AddItem(CreateMNMWalesTemplate());
	Countries.AddItem(CreateMNMYemenTemplate());
	Countries.AddItem(CreateMNMZambiaTemplate());
	Countries.AddItem(CreateMNMZimbabweTemplate());

	return Countries;
}

static function X2DataTemplate CreateMNMAlgeriaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMAlgeria');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNorthAfricaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNorthAfricaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNorthAfricaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNorthAfricaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMAngolaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMAngola');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngolaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngolaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngolaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngolaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMAustriaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMAustria');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrGmMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrGmFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrGmLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrGmLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMAzerbaijanTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMAzerbaijan');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAzerbaijanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAzerbaijanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAzerbaijanMLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAzerbaijanFLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMBangladeshTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMBangladesh');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBangladeshLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBangladeshLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMChileTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMChile');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMChileMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMChileFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMChileLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMChileLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMCzechRepublicTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMCzechRepublic');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCzechRepublicMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCzechRepublicFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCzechRepublicMLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCzechRepublicFLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMDenmarkTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMDenmark');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMDenmarkMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMDenmarkFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMDenmarkLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMDenmarkLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMEthiopiaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMEthiopia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEthiopiaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEthiopiaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEthiopiaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEthiopiaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMFinlandTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMFinland');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMFinlandMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMFinlandFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMFinlandLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMFinlandLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMIraqTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMIraq');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMJordanTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMJordan');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMKuwaitTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMKuwait');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMMalaysiaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMMalaysia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMalaysiaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMalaysiaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMalaysiaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMalaysiaLastNames;
	NameStruct.PercentChance = 75;
	Template.Names.AddItem(NameStruct);

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrChMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrChFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrChLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrChLastNames;
	NameStruct.PercentChance = 25;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMMoroccoTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMMorocco');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNorthAfricaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNorthAfricaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNorthAfricaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNorthAfricaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMMyanmarTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMMyanmar');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMyanmarMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMyanmarFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMyanmarLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMyanmarLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMOmanTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMOman');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMPeruTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMPeru');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPeruMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPeruFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPeruLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPeruLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMPhilippinesTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMPhilippines');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPhilippinesMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPhilippinesFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPhilippinesLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPhilippinesLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSaudiArabiaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSaudiArabia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSingaporeTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSingapore');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSingaporeChFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSingaporeChFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSingaporeChLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSingaporeChFLastNames;
	NameStruct.PercentChance = 80;
	Template.Names.AddItem(NameStruct);
	
	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMalaysiaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMalaysiaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMalaysiaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMalaysiaLastNames;
	NameStruct.PercentChance = 20;
	Template.Names.AddItem(NameStruct);
	
	return Template;
}

static function X2DataTemplate CreateMNMSouthSudanTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSouthSudan');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSouthSudanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSouthSudanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSouthSudanLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSouthSudanLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSriLankaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSriLanka');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSriLankaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSriLankaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSriLankaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSriLankaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSudanTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSudan');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSwitzerlandTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSwitzerland');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrGmMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrGmFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrGmLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrGmLastNames;
	NameStruct.PercentChance = 70;
	Template.Names.AddItem(NameStruct);

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrFrMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrFrFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrFrLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrFrLastNames;
	NameStruct.PercentChance = 22;
	Template.Names.AddItem(NameStruct);

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrItMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrItFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrItLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrItLastNames;
	NameStruct.PercentChance = 8;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSyriaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSyria');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMTaiwanTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMTaiwan');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrChMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrChFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrChLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrChLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMThailandTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMThailand');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMThailandMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMThailandFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMThailandLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMThailandLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMUAETemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMUAE');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMVietnamTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMVietnam');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMVietnamMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMVietnamFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMVietnamLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMVietnamLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMWalesTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMWales');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMWalesMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMWalesFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMWalesLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMWalesLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMBelarusTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMBelarus');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBelarusMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBelarusFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBelarusMLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBelarusFLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMBulgariaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMBulgaria');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBulgariaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBulgariaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBulgariaMLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBulgariaFLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMCambodiaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMCambodia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCambodiaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCambodiaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCambodiaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCambodiaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMCroatiaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMCroatia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSerboCroatMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSerboCroatFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSerboCroatLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSerboCroatLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMCubaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMCuba');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCubaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCubaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCubaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCubaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMDRCongoTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMDRCongo');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCongoleseMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCongoleseFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCongoleseLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCongoleseLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMEcuadorTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMEcuador');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEcuadorMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEcuadorFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEcuadorLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEcuadorLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMEritreaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMEritrea');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEritreaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEritreaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEritreaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEritreaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMEstoniaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMEstonia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEstoniaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEstoniaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEstoniaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEstoniaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMHungaryTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMHungary');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMHungaryMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMHungaryFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMHungaryLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMHungaryLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMLatviaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMLatvia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLatviaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLatviaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLatviaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLatviaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMLebanonTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMLebanon');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLebanonMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLebanonFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMLibyaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMLibya');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMLithuaniaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMLithuania');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLithuaniaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLithuaniaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLithuaniaMLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLithuaniaFLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMNewZealandTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMNewZealand');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNewZealandMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNewZealandFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNewZealandLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNewZealandLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMaoriMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMaoriFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMaoriLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMaoriLastNames;
	NameStruct.PercentChance = 100;
	NameStruct.bRaceSpecific = true;
	NameStruct.Race = eRace_Hispanic;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMPalestineTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMPalestine');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMRomaniaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMRomania');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMRomaniaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMRomaniaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMRomaniaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMRomaniaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSerbiaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSerbia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSerboCroatMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSerboCroatFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSerboCroatLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSerboCroatLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSlovakiaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSlovakia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSlovakiaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSlovakiaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSlovakiaMLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSlovakiaFLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMYemenTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMYemen');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMArmeniaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMArmenia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArmeniaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArmeniaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArmeniaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArmeniaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMBoliviaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMBolivia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBoliviaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBoliviaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBoliviaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBoliviaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMCostaRicaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMCostaRica');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCostaRicaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCostaRicaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCostaRicaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCostaRicaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMDominicanRepTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMDominicanRep');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMDominicanRepMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMDominicanRepFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMDominicanRepLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMDominicanRepLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMGeorgiaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMGeorgia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGeorgiaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGeorgiaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGeorgiaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGeorgiaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMGuatemalaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMGuatemala');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGuatemalaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGuatemalaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGuatemalaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGuatemalaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMIvoryCoastTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMIvoryCoast');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMIvoryCoastMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMIvoryCoastFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMIvoryCoastLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMIvoryCoastLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMKazakhstanTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMKazakhstan');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKazakhstanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKazakhstanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKazakhstanMLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKazakhstanFLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMKenyaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMKenya');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKenyaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKenyaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKenyaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKenyaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMNepalTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMNepal');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNepalMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNepalFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNepalLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNepalLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMPanamaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMPanama');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPanamaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPanamaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPanamaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPanamaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMParaguayTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMParaguay');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMParaguayMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMParaguayFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMParaguayLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMParaguayLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMQatarTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMQatar');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSloveniaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSlovenia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSloveniaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSloveniaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSloveniaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSloveniaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMTanzaniaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMTanzania');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTanzaniaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTanzaniaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTanzaniaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTanzaniaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMTunisiaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMTunisia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNorthAfricaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNorthAfricaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNorthAfricaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNorthAfricaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMUgandaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMUganda');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMUgandaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMUgandaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMUgandaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMUgandaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMUruguayTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMUruguay');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMUruguayMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMUruguayFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMUruguayLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMUruguayLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMUzbekistanTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMUzbekistan');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKazakhstanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKazakhstanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKazakhstanMLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKazakhstanFLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMZimbabweTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMZimbabwe');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMZimbabweMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMZimbabweFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMZimbabweLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMZimbabweLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMAfghanistanTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMAfghanistan');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMAlbaniaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMAlbania');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAlbaniaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAlbaniaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAlbaniaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAlbaniaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMBahrainTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMBahrain');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMBosniaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMBosnia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSerboCroatMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSerboCroatFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSerboCroatLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSerboCroatLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMBotswanaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMBotswana');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBotswanaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBotswanaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBotswanaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBotswanaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMBruneiTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMBrunei');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMalaysiaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMalaysiaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMalaysiaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMalaysiaLastNames;
	NameStruct.PercentChance = 90;
	Template.Names.AddItem(NameStruct);

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrChMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrChFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrChLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrChLastNames;
	NameStruct.PercentChance = 10;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMBurkinaFasoTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMBurkinaFaso');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBurkinaFasoMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBurkinaFasoFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBurkinaFasoLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBurkinaFasoLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMBurundiTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMBurundi');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrFrMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrFrFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBurundiLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBurundiLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMCameroonTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMCameroon');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCameroonMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCameroonFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCameroonLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCameroonLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMChadTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMChad');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMChadMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMChadFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMChadLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMChadLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	NameStruct.bRaceSpecific = true;
	NameStruct.Race = eRace_Hispanic;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMCongoTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMCongo');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCongoleseMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCongoleseFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCongoleseLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCongoleseLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMCyprusTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMCyprus');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrGrMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrGrFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrGrLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrGrLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMElSalvadorTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMElSalvador');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMElSalvadorMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMElSalvadorFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMElSalvadorLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMElSalvadorLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMGhanaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMGhana');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGhanaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGhanaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGhanaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGhanaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMHondurasTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMHonduras');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMHondurasMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMHondurasFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMHondurasLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMHondurasLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMIcelandTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMIceland');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMIcelandMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMIcelandFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMIcelandMLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMIcelandFLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMKyrgyzstanTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMKyrgyzstan');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKyrgyzstanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKyrgyzstanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKyrgyzstanMLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKyrgyzstanFLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMLaosTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMLaos');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLaosMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLaosFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLaosLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLaosLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMMadagascarTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMMadagascar');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrFrMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMadagascarFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMadagascarLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMadagascarLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMMauritaniaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMMauritania');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMMongoliaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMMongolia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMongoliaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMongoliaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMongoliaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMongoliaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMMozambiqueTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMMozambique');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMozambiqueMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMozambiqueFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMozambiqueLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMozambiqueLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMNamibiaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMNamibia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNamibiaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNamibiaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNamibiaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNamibiaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrDuMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrDuFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrDuLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrDuLastNames;
	NameStruct.bRaceSpecific = true;
	NameStruct.Race = eRace_Caucasian;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMNorthKoreaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMNorthKorea');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrSkMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrSkFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrSkLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrSkLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMNorthernIrelandTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMNorthernIreland');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrIrMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrIrFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrIrLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrIrLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMRwandaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMRwanda');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrFrMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrFrFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMRwandaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMRwandaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSenegalTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSenegal');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSenegalMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSenegalFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSenegalLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSenegalLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMTurkmenistanTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMTurkmenistan');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTurkmenistanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTurkmenistanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTurkmenistanMLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTurkmenistanFLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMZambiaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMZambia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMZambiaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMZambiaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMZambiaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMZambiaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMBhutanTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMBhutan');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBhutanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBhutanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBhutanLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBhutanLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMDjiboutiTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMDjibouti');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMGabonTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMGabon');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGabonMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGabonFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGabonLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGabonLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMGuineaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMGuinea');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGuineaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGuineaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGuineaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGuineaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMHaitiTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMHaiti');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMHaitiMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMHaitiFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMHaitiLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMHaitiLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMHongKongTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMHongKong');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrChMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrChFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrChLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrChLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMJamaicaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMJamaica');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMJamaicaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMJamaicaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMJamaicaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMJamaicaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMKosovoTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMKosovo');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAlbaniaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAlbaniaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAlbaniaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAlbaniaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMLuxembourgTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMLuxembourg');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrFrMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrFrFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrGmLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrGmLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMMacedoniaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMMacedonia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMacedoniaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMacedoniaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMacedoniaMLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMacedoniaFLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMMalawiTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMMalawi');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMalawiMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMalawiFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMalawiLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMalawiLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMMaliTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMMali');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMaliMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMaliFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMaliLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMaliLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMMoldovaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMMoldova');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMRomaniaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMRomaniaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMRomaniaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMRomaniaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMMontenegroTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMMontenegro');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSerboCroatMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSerboCroatFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSerboCroatLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSerboCroatLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMNicaraguaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMNicaragua');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNicaraguaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNicaraguaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNicaraguaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNicaraguaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMPuertoRicoTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMPuertoRico');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPuertoRicoMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPuertoRicoFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPuertoRicoLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPuertoRicoLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSierraLeoneTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSierraLeone');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSierraLeoneMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSierraLeoneFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSierraLeoneLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSierraLeoneLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMTajikistanTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMTajikistan');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTajikistanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTajikistanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTajikistanMLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTajikistanFLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKazakhstanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKazakhstanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKazakhstanMLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKazakhstanFLastNames;
	NameStruct.bRaceSpecific = true;
	NameStruct.Race = eRace_Asian;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMTogoTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMTogo');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTogoMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTogoFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTogoLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTogoLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMTrinidadTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMTrinidad');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTrinidadMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTrinidadFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTrinidadLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTrinidadLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrInMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrInFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrInLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrInLastNames;
	NameStruct.bRaceSpecific = true;
	NameStruct.Race = eRace_Hispanic;
	NameStruct.PercentChance = 50;
	Template.Names.AddItem(NameStruct);

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTrinidadMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTrinidadFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTrinidadLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTrinidadLastNames;
	NameStruct.bRaceSpecific = true;
	NameStruct.Race = eRace_Hispanic;
	NameStruct.PercentChance = 50;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMEnglandTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMEngland');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrEnMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrEnFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrEnLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrEnLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMAndorraTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMAndorra');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAndorraMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAndorraFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAndorraLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAndorraLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMAntiguaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMAntigua');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMBahamasTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMBahamas');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMBarbadosTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMBarbados');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMBelizeTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMBelize');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBelizeMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBelizeFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBelizeLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBelizeLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMBeninTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMBenin');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBeninMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBeninFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBeninLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMBeninLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMCapeVerdeTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMCapeVerde');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLusophoneMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLusophoneFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLusophoneLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLusophoneLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMCARTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMCAR');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCARMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCARFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCARLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMCARLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMComorosTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMComoros');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMComorosLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMComorosLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMDominicaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMDominica');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMEastTimorTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMEastTimor');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLusophoneMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLusophoneFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEastTimorLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEastTimorLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMEqGuineaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMEqGuinea');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEqGuineaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEqGuineaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEqGuineaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMEqGuineaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMFijiTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMFiji');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMFijiMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMFijiFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMFijiLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMFijiFLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMGambiaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMGambia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGambiaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGambiaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGambiaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGambiaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMGrenadaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMGrenada');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMGuineaBissauTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMGuineaBissau');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLusophoneMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLusophoneFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGuineaBissauLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMGuineaBissauLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMGuyanaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMGuyana');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrInMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrInFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrInLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrInLastNames;
	NameStruct.bRaceSpecific = true;
	NameStruct.Race = eRace_Hispanic;
	NameStruct.PercentChance = 80;
	Template.Names.AddItem(NameStruct);

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.bRaceSpecific = true;
	NameStruct.Race = eRace_Hispanic;
	NameStruct.PercentChance = 20;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMKiribatiTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMKiribati');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKiribatiMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKiribatiFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKiribatiLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMKiribatiLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMLesothoTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMLesotho');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLesothoMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLesothoFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLesothoLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLesothoLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMLiberiaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMLiberia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLiberiaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLiberiaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLiberiaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLiberiaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMLiechtensteinTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMLiechtenstein');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrGmMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrGmFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrGmLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrGmLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMMaldivesTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMMaldives');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMMaltaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMMalta');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMaltaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMaltaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMaltaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMaltaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMMarshallTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMMarshall');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMarshallMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMarshallFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMarshallLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMarshallLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMMauritiusTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMMauritius');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrFrMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrFrFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMHaitiLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMHaitiLastNames;
	NameStruct.Race = eRace_African;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrInMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrInFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrInLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrInLastNames;
	NameStruct.bRaceSpecific = true;
	NameStruct.Race = eRace_Hispanic;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMMicronesiaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMMicronesia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMicronesiaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMicronesiaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMicronesiaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMMicronesiaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMMonacoTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMMonaco');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrFrMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrFrFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrFrLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrFrLastNames;
	NameStruct.PercentChance = 70;
	Template.Names.AddItem(NameStruct);

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrItMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrItFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrItLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrItLastNames;
	NameStruct.PercentChance = 30;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMNauruTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMNauru');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNauruLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNauruLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMNigerTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMNiger');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSenegalMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSenegalFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNigerLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMNigerLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMPalauTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMPalau');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPalauMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPalauFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPalauLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPalauLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMPapuaNewGuineaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMPapuaNewGuinea');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPapuaNewGuineaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPapuaNewGuineaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPapuaNewGuineaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMPapuaNewGuineaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMStKittsTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMStKitts');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMStLuciaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMStLucia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMStVincentTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMStVincent');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMAngloCaribbeanLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSamoaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSamoa');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSamoaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSamoaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSamoaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSamoaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSanMarinoTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSanMarino');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrItMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrItFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrItLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrItLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSaoTomeTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSaoTome');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLusophoneMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLusophoneFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLusophoneLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMLusophoneLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSeychellesTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSeychelles');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSeychellesMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSeychellesFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSeychellesLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSeychellesLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSolomonTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSolomon');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSolomonMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSolomonFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSolomonLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSolomonLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSomaliaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSomalia');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMArabLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSurinameTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSuriname');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSurinameMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSurinameFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSurinameLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSurinameLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrInMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrInFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrInLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrInLastNames;
	NameStruct.bRaceSpecific = true;
	NameStruct.Race = eRace_Hispanic;
	NameStruct.PercentChance = 70;
	Template.Names.AddItem(NameStruct);

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSurinameMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSurinameFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSurinameLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSurinameLastNames;
	NameStruct.bRaceSpecific = true;
	NameStruct.Race = eRace_Hispanic;
	NameStruct.PercentChance = 30;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMSwazilandTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMSwaziland');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSwazilandMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSwazilandFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSwazilandLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMSwazilandLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMTongaTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMTonga');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTongaMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTongaFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTongaLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTongaLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMTuvaluTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMTuvalu');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTuvaluMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTuvaluFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTuvaluLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMTuvaluLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

static function X2DataTemplate CreateMNMVanuatuTemplate()
{
	local X2CountryTemplate Template;
	local CountryNames NameStruct;

	`CREATE_X2TEMPLATE(class'X2CountryTemplate', Template, 'Country_MNMVanuatu');

	NameStruct.MaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMVanuatuMFirstNames;
	NameStruct.FemaleNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMVanuatuFFirstNames;
	NameStruct.MaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMVanuatuLastNames;
	NameStruct.FemaleLastNames = class'X2CharacterNameClass_MNM'.default.m_arrMNMVanuatuLastNames;
	NameStruct.PercentChance = 100;
	Template.Names.AddItem(NameStruct);

	return Template;
}

defaultproperties
{

}