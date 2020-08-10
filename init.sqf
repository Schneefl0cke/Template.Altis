/////////init.sqf is executed on both player clients and server/////////
//////////////////////Feel free to edit below: /////////////////////////

execVM "parameter\briefing.sqf";

//activate if you want to spawn at a certain height, like on the Carrier! The last number is the height!
//"respawn_west" setMarkerPosLocal [markerPos "respawn_west" select 0, markerPos "respawn_west" select 1, 30];

//wait until mission has started:
waitUntil {time > 0};
//place your code below:

