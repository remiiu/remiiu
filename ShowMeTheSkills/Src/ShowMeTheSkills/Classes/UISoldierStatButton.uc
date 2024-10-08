class UISoldierStatButton extends UIImage;

var UIMask Mask;
var UIText Text;

simulated function UISoldierStatButton InitMe(optional name InitName,optional string initImagePath,optional int width,optional int height,optional string txtLabel, optional string txtValue) {
	InitPanel(InitName); 	   
	LoadImage(initImagePath);
																  
	Text = Spawn(class'UIText', self);
	txtValue = "<font size='13' color='#bcbcbc'>" $ txtValue $ "</font>";
	Text.InitText(,txtValue);	
	Text.SetSize(width,18);

	Text.SetX(Text.X + 20);  
	Text.SetY(Text.Y + 2);

	Mask = Spawn(class'UIMask', self).InitMask('BMask');
	Mask.SetMask(self);
	Mask.SetSize(width, height);

	self.Height = height;
	self.Width = width;

	self.SetTooltipText(txtLabel,,,,,,,0);

	return self;
}			   

defaultproperties
{
	bIsNavigable = true;
	bProcessesMouseEvents = true;
}