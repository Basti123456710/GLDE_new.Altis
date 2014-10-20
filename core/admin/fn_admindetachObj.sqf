private["_pos","_isReammoBox","_isMan","_isVeh","_isBuilding","_position","_detachObject","_location","_isOk","_arguments","_detachObjectclass","_detachObjectworldspace","_detachObjectGetDir","_detachObjectDirection","_dir"];
_detachObject =  _this select 3;
_detachactionID = _this select 2;
_detachObjectclass = typeOf _detachObject;
//_isBuilding = _detachObject isKindOf "Building";
//_isThing = _detachObject isKindOf "Thing";
//_isVeh = _detachObject isKindOf "AllVehicles";
//_isMan = _detachObject isKindOf "Man";
//_isReammoBox = _detachObject isKindOf "ReammoBox_F";
//_isTent = _detachObject isKindOf "TentStorage";
//_isWire = _detachObject isKindOf "ItemWire";

AttachedObj = _detachObject;

//player removeaction _detachactionID;
if ((_detachObject == AttachedObj)) then {

    AttachedObj = nil;
   {
      player removeaction _x;
      admindetachids = admindetachids - [_x];
   }forEach admindetachids;

   sleep 0.2;
   detach _detachObject;
   sleep 1;   

   _dir = getDir _detachObject;
   _location = getposATL _detachObject;
   if(surfaceIsWater _location) then {
        _location = getposASL _detachObject;
   };   

   _pos = _location;
   _pos set [2,0];
   _detachObject setpos _pos;

   _detachObjectworldspace = [_dir,_location];

   //if (_isBuilding or _isThing or _isReammoBox or _isTent) then {
	
	//If (_ObjID == "0") then {
	//diag_log format ["Building %1 has no ID!",_detachObject];
	//} else {
	// "Trigger_Leo_hiveWrite",["updateDeployable",[_ObjID,_detachObjectworldspace]]] call callRpcProcedure;
	
	//SAR_savebuilding = _detachObject;
	
	//publicVariableServer "SAR_savebuilding";
	//if (isServer) then {
	//SAR_savebuilding call SAR_save2hive;
	//};
  //};
//}; 
	//if (_isVeh) then {
	
	//PVDZ_veh_Save = [_detachObject,"all"];
	//publicVariableServer "PVDZ_veh_Save";
	//if (isServer) then {
	//PVDZ_veh_Save call server_updateObject;
	//};

   cutText ["Placed " + str(_detachObjectclass) + " at Position" + str(_location) + " !", "PLAIN DOWN"];
};

//if (_detachObject == Placing_Obj) then {
     Placing_Obj = nil;
     player removeaction _detachactionID;
   {
      player removeaction _x;
      admindetachids = admindetachids - [_x];
   }forEach admindetachids;
//};

lhm_playerCarryItem = false;