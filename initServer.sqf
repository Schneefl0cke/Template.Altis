////////////////initServer.sqf is only executed on server///////////////

//Weather and Time
[] call HEC_fnc_time;
[] call HEC_fnc_weather;

//setup the restricted Arsenal
["hec_arsenal_1"] call HEC_fnc_setupArsenal;
["hec_arsenal_2"] call HEC_fnc_setupArsenal;

//texture the board and the flag
[hec_board, "images\briefingBoard.jpg"] call HEC_fnc_boardTexture;
hec_flag setFlagTexture "images\flag.jpg";

//wait until mission has started:
waitUntil {time > 0};

//Changing vanilla- or CUP-IEDs to ACE-IEDs:
[] call HEC_fnc_IEDhandler;