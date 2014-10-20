private["_WorldToPlayerObj","_position","_attachObject","_location","_isOk","_sleeptime","_worldspace","_arguments","_attachObjectclass","_attachObjectworldspace","_attachObjectGetDir","_attachObjectDirection","_dir"];

player removeAction s_admin_attach; // remove attach action so player cant attach this target again
s_admin_attach = -1;

_attachObject = _this select 3;
_attachType = typeOf _attachObject;
_attachObjectclass = _attachType;
cutText ["Class: " + str(_attachObjectclass)," Object: " + str(_attachObject) + " Type: " + str(_attachType), "PLAIN DOWN"];
_korrekturfaktor = 0;
AttachedObj = _attachObject;
admindetachids = [];
_text = getText (configFile >> "CfgVehicles" >> _attachType >> "displayName");
detachid = player addaction ['<img image="lhm\icons\misc\detach.paa"/> <t color="#FF00FF">' + "Detach " + str(_text) + '</t>', "core\admin\fn_admindetachObj.sqf", _attachObject, 98, false, true, "", ""];
admindetachids set [count admindetachids,detachid];

_WorldToPlayerObj = player worldtomodel getPos AttachedObj;
while {!isnil "AttachedObj"} do {
    detach AttachedObj;
    _posiplayerATL = getTerrainHeightASL (position player);
    _posirelterrainObj = getTerrainHeightASL (position AttachedObj);
    _ObjPosiRelTerra = getPosATL AttachedObj select 2;
    if (_ObjPosiRelTerra != 0 ) then {
      _korrekturfaktor = _korrekturfaktor - _ObjPosiRelTerra;
    };
    /*if (_ObjPosiRelTerra > 0 ) then {
      _korrekturfaktor = _korrekturfaktor - _ObjPosiRelTerra;
    };
    if (_ObjPosiRelTerra < 0 ) then {
      _korrekturfaktor = _korrekturfaktor - _ObjPosiRelTerra;
    };
    */
    _posirelterrainObjOffset = _posirelterrainObj - _posiplayerATL + _korrekturfaktor;
    _posiObj = player modelToWorld _WorldToPlayerObj;
    _dir = direction player;
    AttachedObj setdir _dir;
    _posiObjATL = [getPosATL AttachedObj select 0,getPosATL AttachedObj select 1,getPosATL AttachedObj select 2];
    _posiATLPlayer = [getPosATL player select 0,getPosATL player select 1,getPosATL player select 2];
    //hintSilent format["%1 | %2 | %3 | %4 | %5 | %6",_posiObjATL,_posiATLPlayer,_posirelterrainObjOffset,_posiplayerATL,_posirelterrainObj,_korrekturfaktor];
    AttachedObj attachTo [player, [_WorldToPlayerObj select 0,_WorldToPlayerObj select 1,_posirelterrainObjOffset]];
    //_x setdir direction player;
    sleep 0.1;
};
player removeaction detachid;
thisismyattachtarget = objNull;

