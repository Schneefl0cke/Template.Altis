/////////initPlayerLocal.sqf is only executed on player clients/////////
//////////////////////Feel free to edit below: /////////////////////////

//put the WIP loadoutmenu on the board!
[hec_board] call HEC_fnc_addLoadoutMenu;

//add Rank Menu
[hec_computer] call HEC_fnc_addRankMenu;

//add parachute Action on flag
hec_flag addAction ["<t color='#00ffff'>Fallschirmsprung - Solo (HALO)</t> ", "functions\fn_parajump.sqf", [false,2000,70], 6, true, true, "","alive _target"];
hec_flag addAction ["<t color='#5eff00'>Fallschirmsprung - Gruppe (HALO)</t> ", "functions\fn_parajump.sqf", [true,2000,70], 6, true, true, "","alive _target"];

//wait for player object to be available.
waitUntil {player == player};

//postprocessing
//"colorCorrections" ppEffectEnable true;
//"colorCorrections" ppEffectAdjust[ 1, 1.3, 0.001, [-0.11, -0.65, -0.76, 0.015],[-5, -1.74, 0.09, 0.86],[-1.14, -0.73, 1.14, -0.09]];
//"colorCorrections" ppEffectCommit 0;

//wait until player has launched into mission:
waitUntil {time > 0};
//place your code below:

//Give the player a loadout, and greet him
[player] call HEC_fnc_prepareLoadout;

waitUntil {time > 7};
[ ]call HEC_fnc_greeting;