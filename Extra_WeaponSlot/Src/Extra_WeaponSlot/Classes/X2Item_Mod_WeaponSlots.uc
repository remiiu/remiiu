class X2Item_Mod_WeaponSlots extends X2Item_DefaultWeapons config(Mod_WeaponSlots);

var config int ASSAULTRIFLE_CONVENTIONAL_IUPGRADESLOTS;
var config int ASSAULTRIFLE_MAGNETIC_IUPGRADESLOTS;
var config int ASSAULTRIFLE_BEAM_IUPGRADESLOTS;

var config int SHOTGUN_CONVENTIONAL_IUPGRADESLOTS;
var config int SHOTGUN_MAGNETIC_IUPGRADESLOTS;
var config int SHOTGUN_BEAM_IUPGRADESLOTS;

var config int LMG_CONVENTIONAL_IUPGRADESLOTS;
var config int LMG_MAGNETIC_IUPGRADESLOTS;
var config int LMG_BEAM_IUPGRADESLOTS;

var config int SNIPERRIFLE_CONVENTIONAL_IUPGRADESLOTS;
var config int SNIPERRIFLE_MAGNETIC_IUPGRADESLOTS;
var config int SNIPERRIFLE_BEAM_IUPGRADESLOTS;

// **********************************************************************************************************
// ***                                            Player Weapons                                          ***
// **********************************************************************************************************

// **************************************************************************
// ***                          AssaultRifle                              ***
// **************************************************************************

static function X2DataTemplate CreateTemplate_AssaultRifle_Conventional()
{
local X2WeaponTemplate Template;
Template = X2WeaponTemplate(Super.CreateTemplate_AssaultRifle_Conventional());

Template.NumUpgradeSlots = default.ASSAULTRIFLE_CONVENTIONAL_IUPGRADESLOTS;

return Template;
}

static function X2DataTemplate CreateTemplate_AssaultRifle_Magnetic()
{
local X2WeaponTemplate Template;
Template = X2WeaponTemplate(Super.CreateTemplate_AssaultRifle_Magnetic());

Template.NumUpgradeSlots = default.ASSAULTRIFLE_MAGNETIC_IUPGRADESLOTS;

return Template;
}

static function X2DataTemplate CreateTemplate_AssaultRifle_Beam()
{
local X2WeaponTemplate Template;
Template = X2WeaponTemplate(Super.CreateTemplate_AssaultRifle_Beam());

Template.NumUpgradeSlots = default.ASSAULTRIFLE_BEAM_IUPGRADESLOTS;

return Template;
}

// **************************************************************************
// ***                       Shotgun                                      ***
// **************************************************************************

static function X2DataTemplate CreateTemplate_Shotgun_Conventional()
{
local X2WeaponTemplate Template;
Template = X2WeaponTemplate(Super.CreateTemplate_Shotgun_Conventional());

Template.NumUpgradeSlots = default.SHOTGUN_CONVENTIONAL_IUPGRADESLOTS;

return Template;
}

static function X2DataTemplate CreateTemplate_Shotgun_Magnetic()
{
local X2WeaponTemplate Template;
Template = X2WeaponTemplate(Super.CreateTemplate_Shotgun_Magnetic());

Template.NumUpgradeSlots = default.SHOTGUN_MAGNETIC_IUPGRADESLOTS;

return Template;
}

static function X2DataTemplate CreateTemplate_Shotgun_Beam()
{
local X2WeaponTemplate Template;
Template = X2WeaponTemplate(Super.CreateTemplate_Shotgun_Beam());

Template.NumUpgradeSlots = default.SHOTGUN_BEAM_IUPGRADESLOTS;

return Template;
}

// **************************************************************************
// ***                       Cannon   (LMG)                               ***
// **************************************************************************

static function X2DataTemplate CreateTemplate_Cannon_Conventional()
{
local X2WeaponTemplate Template;
Template = X2WeaponTemplate(Super.CreateTemplate_Cannon_Conventional());

Template.NumUpgradeSlots = default.LMG_CONVENTIONAL_IUPGRADESLOTS;

return Template;
}

static function X2DataTemplate CreateTemplate_Cannon_Magnetic()
{
local X2WeaponTemplate Template;
Template = X2WeaponTemplate(Super.CreateTemplate_Cannon_Magnetic());

Template.NumUpgradeSlots = default.LMG_MAGNETIC_IUPGRADESLOTS;

return Template;
}

static function X2DataTemplate CreateTemplate_Cannon_Beam()
{
local X2WeaponTemplate Template;
Template = X2WeaponTemplate(Super.CreateTemplate_Cannon_Beam());

Template.NumUpgradeSlots = default.LMG_BEAM_IUPGRADESLOTS;

return Template;
}

// **************************************************************************
// ***                       Sniper Rifle                                 ***
// **************************************************************************

static function X2DataTemplate CreateTemplate_SniperRifle_Conventional()
{
local X2WeaponTemplate Template;
Template = X2WeaponTemplate(Super.CreateTemplate_SniperRifle_Conventional());

Template.NumUpgradeSlots = default.SNIPERRIFLE_CONVENTIONAL_IUPGRADESLOTS;

return Template;
}

static function X2DataTemplate CreateTemplate_SniperRifle_Magnetic()
{
local X2WeaponTemplate Template;
Template = X2WeaponTemplate(Super.CreateTemplate_SniperRifle_Magnetic());

Template.NumUpgradeSlots = default.SNIPERRIFLE_MAGNETIC_IUPGRADESLOTS;

return Template;
}

static function X2DataTemplate CreateTemplate_SniperRifle_Beam()
{
local X2WeaponTemplate Template;
Template = X2WeaponTemplate(Super.CreateTemplate_SniperRifle_Beam());

Template.NumUpgradeSlots = default.SNIPERRIFLE_BEAM_IUPGRADESLOTS;

return Template;
}
