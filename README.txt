This is the HEC Template. It is still WIP.


------------------ Arsenal -------------------
This Template provides an unrestricted ACE Arsenal and an restricted Arsenal based on the chosen param for the Loadout.
The restricted Arsenal is to help players with their choice of weapon and uniform according to the faction the mission author wants to play.
----------------------------------------------

------------------ Loadouts ------------------
Night Vision Googles are added if your starting time is in the night hours.

To add a loadout, 
1. add it in the loadouts\CfgFunctions.hpp like the others. 
2. write the loadout. Orient on other loadouts
3. add the loadout to the fn_prepareLoadout, so a player gets it on missionstart
4. add a menu to the functions\ fn_addLoadoutmenu.sqf

Loadout names, to assign to players:
Loadout : what it is
opz : commanding officer

sql : Squadleader
ftl: Fire team leader
lmg : Light machine gunner
ulg : Grenadier
rfm : Rifleman

sniper : Sniper :)
mmg : Heavy machine gunner

med : Medic 
pilot : Pilot
crew : Vehicle Crew
----------------------------------------------

------------------ Rank ----------------------
You can change your Rank on the Computer next to the Arsenal
----------------------------------------------

TODOS:
Loadout Dialog,
Loadouts Uniform und Waffen,
Logistic Crates and Dialog,
Side Relations Function,
Leere Gruppen löschen,
Zeus syncronisation,