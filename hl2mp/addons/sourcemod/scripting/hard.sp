#pragma semicolon 1
#include <sourcemod>
 
#include <sdktools>
 
#pragma newdecls required
 
#define PLUGIN_VERSION "0.0.0"
public Plugin myinfo = {
    name = "medium",
    author = "nosoop & Ethorbit",
    description = "An ent_fire script that triggers based on a series of map checks. This is a script for Zombies (@ Phoneburnia) to change difficulty based on players, this plugin automatically enables if people vote for hard difficulty.",
    version = PLUGIN_VERSION,
    url = "https://forums.alliedmods.net/showthread.php?t=294062"
}
 
public void OnPluginStart() {
    HookEvent("player_team", OnPlayerTeamChange);
	UpdateHeadcrab();
}
 
public void OnPlayerTeamChange(Event event, const char[] name, bool dontBroadcast) {
    // just in case teams aren't switched yet, huzzah blind coding
    RequestFrame(Frame_UpdateHeadcrab);
}
 
public void Frame_UpdateHeadcrab(any ignored) {
    UpdateHeadcrab();
}
 
public void OnClientPutInServer(int client) {
    UpdateHeadcrab();
}
 
public void OnClientDisconnect_Post(int client) {
    UpdateHeadcrab();
}
 
void UpdateHeadcrab() {
    // int nClients = GetClientCount(false);
   
    // teams 2 and 3, may vary depending on mod
   
    int nClients = GetTeamClientCount(2) + GetTeamClientCount(3);
    char mapname[128];
    GetCurrentMap(mapname, sizeof(mapname));
	
	 if (strncmp(mapname, "dm_october_m", 12) == 0)
    {
	int entity = -1;
	
	/* Delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "antlion1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion5killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlionguard1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Dont delete enemies below */ 
		
	 while ((entity = FindEntityByTargetName(entity, "antlion2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		
		/* Enable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }	

		/* Disable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	}	
	
	 if (strncmp(mapname, "dm_pinnacles_m", 14) == 0)
    {
	int entity = -1;
	
	/* Delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Dont delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "headcrab1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "headcrab2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "headcrab3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie15killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie16killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie17killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie18killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie19killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie20killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie21killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie22killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie23killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie24killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie25killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie26killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie27killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie28killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie29killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie30killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie31killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie32killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		
		/* Enable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone06frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }		

		/* Disable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }		
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }		
			 while ((entity = FindEntityByTargetName(entity, "campzone06frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone06frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone06frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	}	
	
	 if (strncmp(mapname, "dm_thetunnel_v1_m", 17) == 0)
    {
	int entity = -1;
	
	/* Delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast3killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast4killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast6killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast8killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Dont delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }		
	 while ((entity = FindEntityByTargetName(entity, "fastzombie14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie15killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie16killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie17killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie18killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	}	
	
	 if (strncmp(mapname, "dm_central_station_v1_m", 23) == 0)
    {
	int entity = -1;
	
	/* Delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie22killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }		

		
		/* Dont delete enemies below */ 

	 while ((entity = FindEntityByTargetName(entity, "antlionguard1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "antlion5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "antlion6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }			
	 while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie15killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie16killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie17killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie18killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie19killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie20killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie21killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie23killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie24killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie25killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }			
	 while ((entity = FindEntityByTargetName(entity, "fastzombie26killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie27killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie28killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		
		/* Enable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone06frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }		
			 while ((entity = FindEntityByTargetName(entity, "campzone07frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		/* Disable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }		
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }		
			 while ((entity = FindEntityByTargetName(entity, "campzone06frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone06frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone06frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
			 while ((entity = FindEntityByTargetName(entity, "campzone07frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone07frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone07frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	}	
	
		 if (strncmp(mapname, "dm_snowfall_m", 19) == 0)
    {
	int entity = -1;
	
	/* Delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "antlion1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }	
		
		/* Dont delete enemies below */ 
		
	 while ((entity = FindEntityByTargetName(entity, "heacrab_fast1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "heacrab_fast2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "heacrab_fast3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "heacrab_fast4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "heacrab_fast5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "antlion2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "zombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "zombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	}	
	
		 if (strncmp(mapname, "pb_z_office_tower_m", 19) == 0)
    {
	int entity = -1;
	
	/* Delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie42killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie45killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie49killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt3killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }

		/* Dont delete enemies below */ 
		
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }		
	 while ((entity = FindEntityByTargetName(entity, "headcrab3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie15killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie16killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie15killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie16killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie17killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie18killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie19killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie20killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie21killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie22killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie23killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie24killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie25killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie26killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie27killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie28killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie29killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie30killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie31killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie32killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie33killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie34killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie35killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie36killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie37killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie38killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie39killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie40killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie41killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie43killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie44killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie46killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie47killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie48killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie50killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie51killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }

		/* Enable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Disable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }		
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }		
	}	
	
	
		 if (strncmp(mapname, "dm_montana_m", 12) == 0)
    {
	int entity = -1;
	
	/* Delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast111killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion4killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlionguard1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Dont delete enemies below */ 
		
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie15killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "antlion3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		
		
		/* Enable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Disable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }			
	}	
	
		 if (strncmp(mapname, "pb_z_office_tower_v2_m", 22) == 0)
    {
	int entity = -1;
	
	/* Delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie18killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie25killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie46killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion4killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }

		/* Dont delete enemies below */ 
		
	 while ((entity = FindEntityByTargetName(entity, "headcrab1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie15killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie16killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie17killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie19killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie20killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie21killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie22killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie23killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie24killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie26killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie27killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie28killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie29killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie30killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie31killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie32killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie33killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie34killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie35killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie36killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie37killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie38killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie39killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie40killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie41killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie42killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie43killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie44killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie45killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie447killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		
		/* Enable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Disable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }		
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }		
	}	
	
		 if (strncmp(mapname, "pb_z_colony_m", 13) == 0)
    {
	
	int entity = -1;
	
	/* Delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie13killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie14killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie21killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie22killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie30killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie31killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie34killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie38killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie46killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie54killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie61killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie63killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion4killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion5killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion7killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion8killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion16killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion17killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion23killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion24killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlionguard2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }

		/* Dont delete enemies below */ 

	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie15killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie16killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie17killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie18killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie19killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie20killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie23killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie24killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie25killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie26killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie27killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie28killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie29killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie32killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie33killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie35killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie36killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie37killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie39killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie40killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie41killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie42killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie43killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie44killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie45killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie47killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie48killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie49killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie50killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie51killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie52killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie53killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie55killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie56killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie57killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie58killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie59killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie60killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie62killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie64killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie65killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie66killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie67killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie68killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion15killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion18killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion20killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion19killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion21killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion22killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		
		/* Enable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone06frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone07frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone08frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Disable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }		
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }		
			 while ((entity = FindEntityByTargetName(entity, "campzone06frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone06frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone06frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }			
			 while ((entity = FindEntityByTargetName(entity, "campzone07frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone07frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone07frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
			 while ((entity = FindEntityByTargetName(entity, "campzone08frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone08frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone08frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	}	
	
		 if (strncmp(mapname, "pb_z_disorder_m", 15) == 0)
    {
	
	int entity = -1;
	
	/* Delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie15killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie18killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie23killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie27killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie34killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie37killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt3killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Dont delete enemies below */ 
		
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }		
	 while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie16killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie17killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie19killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie20killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie21killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie22killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie24killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie25killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie26killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie29killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie33killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie28killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie30killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie31killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie32killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie33killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie35killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie36killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		
		/* Enable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Disable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	}	
	
 if (strncmp(mapname, "pb_z_underground_m", 18) == 0)
    {
	
	int entity = -1;
	
	/* Delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }		
		
		/* Dont delete enemies below */ 
		
	 while ((entity = FindEntityByTargetName(entity, "headcrab1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie15killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie16killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		
		/* Enable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Disable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	}	
	
	 if (strncmp(mapname, "dm_cave_m", 9) == 0)
    {
	
	int entity = -1;
	
	/* Delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt3killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Dont delete enemies below */ 

	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie15killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie16killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie17killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie18killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie19killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		
		/* Enable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Disable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	}	
	
	 if (strncmp(mapname, "dm_coldruins_rc1_m", 18) == 0)
    {
	
	int entity = -1;
	
	/* Delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie14killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion4killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Dont delete enemies below */ 

	 while ((entity = FindEntityByTargetName(entity, "headcrab1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }

		
		/* Enable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Disable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	}	
	
	 if (strncmp(mapname, "pb_z_industry_m", 15) == 0)
    {
	
	int entity = -1;
	
	/* Delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "headcrab2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie15killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie16killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie20killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Dont delete enemies below */ 
		
	 while ((entity = FindEntityByTargetName(entity, "headcrab1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie17killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie18killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie19killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		
		
		/* Enable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Disable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	}	
	
		 if (strncmp(mapname, "pb_z_earthquake_m", 17) == 0)
    {
	
	int entity = -1;
	
	/* Delete enemies below */ 

	 while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie15killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie16killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie18killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie20killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie30killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie36killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie37killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie39killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion5killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion6killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion7killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt3killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt4killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Dont delete enemies below */ 
		
	 while ((entity = FindEntityByTargetName(entity, "zombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	while ((entity = FindEntityByTargetName(entity, "zombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie15killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie16killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie17killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie19killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie21killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie22killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie23killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie24killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie25killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie26killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie27killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie28killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie29killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie31killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie32killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie33killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie34killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie35killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie38killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie40killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie41killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie42killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		
		/* Enable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Disable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	}	
	
		 if (strncmp(mapname, "dm_laststop_m", 13) == 0)
    {
	
	int entity = -1;
	
	/* Delete enemies below */ 
		
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast9killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast10killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast12killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast13killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast24killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast25killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie20killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie25killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Dont delete enemies below */ 
		
	 while ((entity = FindEntityByTargetName(entity, "headcrab1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "headcrab2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "headcrab3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie15killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie16killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie17killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie18killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie19killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie20killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie21killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie22killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie23killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie24killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		
		/* Enable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Disable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	}
	
	 if (strncmp(mapname, "dm_mine_entrance_m", 18) == 0)
    {
	
	int entity = -1;
	
	/* Delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast3killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast7killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast9killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast11killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast14killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast15killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion3killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion4killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Dont delete enemies below */ 

	 while ((entity = FindEntityByTargetName(entity, "headcrab1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast16killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast17killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "zombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie15killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie16killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie17killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie18killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie19killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie20killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		
		/* Enable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "tunnelfrequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Disable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "tunnelfrequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "tunnelfrequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "tunnelfrequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	}
	
			 if (strncmp(mapname, "dm_raven_m", 10) == 0)
    {
	
	int entity = -1;
	
	/* Delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie20killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast6killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Dont delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "zombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie15killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie16killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie17killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie18killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie19killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie21killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie22killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie23killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie24killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie25killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie26killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }		
	 while ((entity = FindEntityByTargetName(entity, "fastzombie27killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie28killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "headcrab_fast11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	while ((entity = FindEntityByTargetName(entity, "headcrab_fast11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		
		/* Enable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone06frequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
			 while ((entity = FindEntityByTargetName(entity, "zombiefrequencyMedium")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		
		/* Disable frequencies */ 
		
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone01frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone02frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone03frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone04frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone05frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone06frequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone06frequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "campzone06frequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "zombiefrequencyHighest")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "zombiefrequencyHigh")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
			 while ((entity = FindEntityByTargetName(entity, "zombiefrequencyLow")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	}
	
	 if (strncmp(mapname, "pb_z_high_school_m", 18) == 0)
    {
	
	int entity = -1;
	
	/* Delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie33killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie33killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie36killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie37killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie41killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "vortigaunt2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlionguard1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
	 while ((entity = FindEntityByTargetName(entity, "healthandarmorpool")) != -1) {
            AcceptEntityInput(entity, "Kill");
        }
		
		/* Dont delete enemies below */ 
	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie15killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie16killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie17killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie18killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie19killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie20killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie21killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie22killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie23killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie24killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie25killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie26killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie27killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie28killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie29killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie30killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie31killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie32killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie34killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie35killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie38killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie39killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }	
	 while ((entity = FindEntityByTargetName(entity, "fastzombie40killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie42killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie42killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie43killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie44killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie45killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie255killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "fastzombie444killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	 while ((entity = FindEntityByTargetName(entity, "antlion1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
	}
	
			if (strncmp(mapname, "pb_z_area51_m", 13) == 0)
    {
	int entity = -1;
	 
		/* Delete enemies below */ 
			
		while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
		}			
		while ((entity = FindEntityByTargetName(entity, "headcrab_fast2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
		}
		while ((entity = FindEntityByTargetName(entity, "headcrab_fast3killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
		}
		while ((entity = FindEntityByTargetName(entity, "antlion1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
		}
		while ((entity = FindEntityByTargetName(entity, "antlion4killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
		}
		while ((entity = FindEntityByTargetName(entity, "vortigaunt2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
		}

		/* Dont delete enemies below */ 
		
		while ((entity = FindEntityByTargetName(entity, "zombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "zombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}		
		while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}		
		while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}		
		while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie13killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie14killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie15killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}		
		while ((entity = FindEntityByTargetName(entity, "fastzombie16killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie17killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie18killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie19killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie20killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}		
		while ((entity = FindEntityByTargetName(entity, "fastzombie21killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie22killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie23killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie24killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie25killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie26killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie27killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie28killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie29killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie30killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}		
		while ((entity = FindEntityByTargetName(entity, "fastzombie31killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie32killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie33killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie34killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie35killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie36killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie37killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}	
		while ((entity = FindEntityByTargetName(entity, "fastzombie38killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie39killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie40killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie41killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "headcrab_fast1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "antlion2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "antlion3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "antlion5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "antlion6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "antlion7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "antlion8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "antlion9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "antlion10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
	}
	
	if (strncmp(mapname, "dm_morbid_m", 11) == 0)
    {
	int entity = -1;
	 
		/* Delete enemies below */ 
		
	 	while ((entity = FindEntityByTargetName(entity, "vortigaunt1killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie5killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie7killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie8killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie12killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie20killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
		}
		while ((entity = FindEntityByTargetName(entity, "headcrab_fast2killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
		}
		while ((entity = FindEntityByTargetName(entity, "headcrab_fast5killer")) != -1) {
            AcceptEntityInput(entity, "Enable");
		}
		
		/* Dont delete enemies below */ 
		
		while ((entity = FindEntityByTargetName(entity, "headcrab_fast3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "headcrab_fast6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "headcrab_fast7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "headcrab_fast8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "headcrab_fast9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "headcrab_fast10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "headcrab_fast11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "headcrab_fast12killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie5killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie7killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie8killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie2killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie3killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie4killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie6killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie9killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie10killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie11killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie17killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "zombie18killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie22killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie24killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "fastzombie28killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
		while ((entity = FindEntityByTargetName(entity, "antlion1killer")) != -1) {
            AcceptEntityInput(entity, "Disable");
		}
	}
}
      
    int FindEntityByTargetName(int startEnt = -1, const char[] target,
    const char[] className = "*") {
    char targetbuf[64];
    while ((startEnt = FindEntityByClassname(startEnt, className)) != -1) {
        GetEntPropString(startEnt, Prop_Data, "m_iName", targetbuf, sizeof(targetbuf));
       
        if (StrEqual(target, targetbuf)) {
            return startEnt;
        }
    }
    return startEnt;
}