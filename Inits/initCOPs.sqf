{
	_x addEventHandler ["Respawn", 
	{	
		private ["_COP"];
		_COP = (_this select 0);

		_COP execVM "\a3\Air_F_Heli\Heli_Transport_04\Scripts\Heli_Transport_04_pods_black.sqf";
		
		if (_COP in [COP_RU_1, COP_RU_2]) then
		{
			_COP setPos markerPos "respawn_vehicle_east";
		};
		
		if (_COP in [COP_USA_1, COP_USA_2]) then
		{
			_COP setPos markerPos "respawn_vehicle_west";
		};
	}];
} forEach [COP_USA_1, COP_USA_2, COP_RU_1, COP_RU_2];