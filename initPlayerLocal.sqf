/////////initPlayerLocal.sqf is only executed on player clients/////////
//////////////////////Feel free to edit below: /////////////////////////

//put the WIP loadoutmenu on the board!
[hec_board] call HEC_fnc_addLoadoutMenu;

//wait for player object to be available.
waitUntil {player == player};
//place your code below:
[player] call HEC_fnc_prepareLoadout;
[ ]call HEC_fnc_greeting;

//postprocessing
//"colorCorrections" ppEffectEnable true;
//"colorCorrections" ppEffectAdjust[ 1, 1.3, 0.001, [-0.11, -0.65, -0.76, 0.015],[-5, -1.74, 0.09, 0.86],[-1.14, -0.73, 1.14, -0.09]];
//"colorCorrections" ppEffectCommit 0;

//wait until player has launched into mission:
waitUntil {time > 0};
//place your code below: