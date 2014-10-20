/*
	File: fn_copLights.sqf
	Autor: H4SHK3KS
	Description: Adds the sirenlights for cop cars
*/
Private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightright","_lightbackright","_lightbackleft","_leftRed"];
_vehicle = _this select 0;
_daytime = daytime;
	
if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "lights")) exitWith {};

_lightRed = [20, 0.1, 0.1];							// RGB für Rot, hat keinen Nutzen momentan
_lightBlue = [0.1, 0.1, 20];						// RGB für Blau
_intensity = 0;									
_intensityNight = 5;
_intensityDay = 30;
_maxDistance = 300;									// Sichtweite des Blaulichtes
_lightAttenuation = [0.01, 0, 500, 70];				// Keine Ahnung, aber diese Werte machen das Blaulicht schön klein und hell :P Standart: [0.01, 0, 500, 70] Debug: [0.181, 0, 1000, 130]
_flareSize = 0; 									// Setzt die Flare Größe, funktioniert aber so nicht.
_delay = 0.07;										// Abstand zwischen den einzelnen Blitzen

if (sunOrMoon < 1) then {
	_intensity = _intensityNight;
} else {
	_intensity = _intensityDay;
};

// linkes Licht
_lightleft = "#lightpoint" createVehicle getpos _vehicle;   
sleep 0.2;
_lightleft setLightColor _lightBlue; 
_lightleft setLightAmbient [0.1,0.1,1];

_lightleft setLightAttenuation _lightAttenuation; 
_lightleft setLightIntensity _intensity;
_lightleft setLightFlareSize _flareSize;
_lightleft setLightFlareMaxDistance _maxDistance;
_lightleft setLightUseFlare true;


switch (typeOf _vehicle) do
{	
	// Boden
	// Offroad
	case "C_Offroad_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
		_lightleft setLightAttenuation [0.181, 0, 1000, 130]; 
	};
	
	// Sportlimo
	case "C_Hatchback_01_sport_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.6, 2, -0.95]];
	};
	
	// Hunter
	case "B_MRAP_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-1, -2.8, 0.55]];
	};
	// Hunter HMG
	case "B_MRAP_01_hmg_F":
	{
		_lightleft lightAttachObject [_vehicle, [-1, -2.8, 0.55]];
	};
	
	// Strider
	case "B_MRAP_03_F":
	{
		_lightleft lightAttachObject [_vehicle, [1.13, -0.58, 0.44]];
	};
	
	// SUV
	case "C_SUV_01_F": // -0.4, 2.3, -0.55
	{
		_lightleft lightAttachObject [_vehicle, [-0.4, 2.3, -0.55]];
	};
	
	// Luft
	// Hummingbird
	case "B_Heli_Light_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
	};
	
	// Ghosthawk
	case "B_Heli_Transport_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.5, 0.0, 0.96]];
	};	
	
	// Hellcat
	case "I_Heli_light_03_unarmed_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
	};
};



// Rechtes Licht

_lightright = "#lightpoint" createVehicle getpos _vehicle;   
sleep 0.2;
_lightright setLightColor _lightRed;  
_lightright setLightAmbient [0.1,0.1,1]; 

_lightright setLightAttenuation _lightAttenuation; 
_lightright setLightIntensity _intensity;
_lightright setLightFlareSize _flareSize;
_lightright setLightFlareMaxDistance _maxDistance;
_lightright setLightUseFlare true;


switch (typeOf _vehicle) do
	// Boden
	
{	// Offroad
	case "C_Offroad_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
		_lightright setLightAttenuation [0.181, 0, 1000, 130]; 
	};
	
	// Sportlimo
	case "C_Hatchback_01_sport_F":
	{
		_lightright lightAttachObject [_vehicle, [0.6, 2, -0.95]];
	};
	
	// Hunter
	case "B_MRAP_01_F":
	{
		_lightright lightAttachObject [_vehicle, [1, -2.8, 0.55]];
	};
	
	// Hunter HMG
	case "B_MRAP_01_hmg_F":
	{
		_lightright lightAttachObject [_vehicle, [1, -2.8, 0.55]];
	};
	
	// Strider
	case "B_MRAP_03_F":
	{
		_lightleft lightAttachObject [_vehicle, [-1.13, -0.58, 0.44]];
	};
	
	// SUV
	case "C_SUV_01_F": // 0.4, 2.3, -0.52
	{
		_lightright lightAttachObject [_vehicle, [0.4, 2.3, -0.52]];
	};
	
	// Luft
	
	// Hummingbird
	case "B_Heli_Light_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
	};
	
	// Ghosthawk
	case "B_Heli_Transport_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.5, 0.0, 0.96]];
	};	
	
	// Hellcat
	case "I_Heli_light_03_unarmed_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
	};
	
};
  

// Light back right (special for the SUV)
_lightbackright = "#lightpoint" createVehicle getpos _vehicle;   
sleep 0.2;
_lightbackright setLightColor _lightBlue; 
_lightbackright setLightAmbient [0.1,0.1,1]; 

_lightbackright setLightAttenuation _lightAttenuation; 
_lightbackright setLightIntensity _intensity;
_lightbackright setLightFlareSize _flareSize;
_lightbackright setLightFlareMaxDistance _maxDistance;
_lightbackright setLightUseFlare true;

switch (typeOf _vehicle) do {
	// Offroad
	case "C_Offroad_01_F": // 0.4, 2.3, -0.52
	{
		_lightbackright lightAttachObject [_vehicle, [-0.37, 2, 2]];
	};
	// SUV
	case "C_SUV_01_F": // 0.4, 2.3, -0.52
	{
		_lightbackright lightAttachObject [_vehicle, [0.7, -3, -0.25]];
	};
};

// END


// Light back left (special for the SUV)
_lightbackleft = "#lightpoint" createVehicle getpos _vehicle;   
sleep 0.2;
_lightbackleft setLightColor _lightRed; 
_lightbackleft setLightAmbient [0.1,0.1,1]; 

_lightbackleft setLightAttenuation _lightAttenuation;
_lightbackleft setLightIntensity _intensity;
_lightbackleft setLightFlareSize _flareSize;
_lightbackleft setLightFlareMaxDistance _maxDistance;
_lightbackleft setLightUseFlare true;

switch (typeOf _vehicle) do {
	// Offroad
	case "C_Offroad_01_F": // -0.4, 2.3, -0.55
	{
		_lightbackleft lightAttachObject [_vehicle, [0.37, 2, 2]];
	};
	
	// SUV
	case "C_SUV_01_F": // -0.4, 2.3, -0.55
	{
		_lightbackleft lightAttachObject [_vehicle, [-0.7, -3, -0.25]];
	};
	
	
};


// END


// Blaulicht am Tag aktivieren
_lightleft setLightDayLight true;
_lightright setLightDayLight true;
_lightbackright setLightDayLight true;
_lightbackleft setLightDayLight true;



_leftRed = true;

_leftRed = true;  
if (typeOf _vehicle in ["C_SUV_01_F"]) then {	// Fahrzeuge mit 4 Blaulichtern	
	while{ (alive _vehicle)} do  
	{ 	
		if(!(_vehicle getVariable "lights")) exitWith {};
		if(_leftRed) then  
		{  			
			_leftRed = false;  
			_lightright setLightBrightness 0;  
			_lightbackleft setLightBrightness 0;  
			sleep _delay;
			for "_i" from 1 to 3 do {
				_lightleft setLightBrightness _intensity;
				_lightbackright setLightBrightness _intensity;
				sleep _delay;
				_lightleft setLightBrightness 0;
				_lightbackright setLightBrightness 0;
				sleep _delay;	
			};
			_lightleft setLightBrightness _intensity;  
			_lightbackright setLightBrightness _intensity;  
		}  
			else  
		{  
			_leftRed = true;  
			_lightleft setLightBrightness 0;  
			_lightbackright setLightBrightness 0;  
			sleep _delay;
			for "_i" from 1 to 3 do {
				_lightright setLightBrightness _intensity;
				_lightbackleft setLightBrightness _intensity;
				sleep _delay;
				_lightright setLightBrightness 0;
				_lightbackleft setLightBrightness 0;
				sleep _delay;	
			};
			_lightright setLightBrightness _intensity;  
			_lightbackleft setLightBrightness _intensity;  
		};  
		
	};
	
} else {	// alle anderen Fahrzeuge
	while{ (alive _vehicle)} do  
	{  
		if(!(_vehicle getVariable "lights")) exitWith {};
		if(_leftRed) then 
		{  
			_leftRed = false;  
			_lightright setLightBrightness 0;  
			sleep _delay;
			for "_i" from 1 to 3 do {
				_lightleft setLightBrightness _intensity;
				sleep _delay;
				_lightleft setLightBrightness 0;
				sleep _delay;
			};
			_lightleft setLightBrightness _intensity;    
		}  
			else  
		{  
			_leftRed = true;  
			_lightleft setLightBrightness 0;  
			sleep _delay;
			for "_i" from 1 to 3 do {
				_lightright setLightBrightness _intensity;
				sleep _delay;
				_lightright setLightBrightness 0;
				sleep _delay;	
			};
			_lightright setLightBrightness _intensity;  
		};  
		
	};
};  



deleteVehicle _lightleft;
deleteVehicle _lightright;
deleteVehicle _lightbackright;
deleteVehicle _lightbackleft;