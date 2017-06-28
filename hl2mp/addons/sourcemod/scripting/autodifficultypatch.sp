#pragma semicolon 1
#include <sourcemod>
 
#include <sdktools>
 
#pragma newdecls required
 
#define PLUGIN_VERSION "0.0.0"
public Plugin myinfo = {
    name = "entfire",
    author = "nosoop & Ethorbit",
    description = "Based on player count this will load a specific cfg file that will load a specific plugin that will mess with ent_fire commands for zombies in the map. This is the patch file, where the other ones can't see if there's 1 player or not, this one can.",
    version = PLUGIN_VERSION,
    url = "https://forums.alliedmods.net/showthread.php?t=294062"
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
    // teams 2 and 3, may vary depending on mod
	
    int nClients = GetClientCount(false);
    // int nClients = GetTeamClientCount(2) + GetTeamClientCount(3);
    char mapname[128];
    GetCurrentMap(mapname, sizeof(mapname));

  if (strncmp(mapname, "dm_mine_entrance_m", 18) == 0)
    {
	if (nClients == 0) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if (nClients == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if (nClients == 2) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if (nClients == 3) {
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if (nClients == 4) {
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
		ServerCommand("exec AutoHard.cfg");
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if (nClients == 5) {
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
		ServerCommand("exec AutoHard.cfg");
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if (nClients == 6) {
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
		ServerCommand("exec AutoHard.cfg");
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if (nClients == 7) {
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
		ServerCommand("exec AutoHard.cfg");
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if (nClients == 8) {
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
		ServerCommand("exec AutoHard.cfg");
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
if (strncmp(mapname, "dm_morbid_m", 13) == 0)
    {
	if (nClients == 0) {
	ServerCommand("exec AutoEasy.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if (nClients == 1) {
	ServerCommand("exec AutoEasy.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if (nClients == 2) {
	ServerCommand("exec AutoEasy.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if (nClients == 3) {
	ServerCommand("exec AutoMedium.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if (nClients == 4) {
	ServerCommand("exec AutoMedium.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if (nClients == 5) {
	ServerCommand("exec AutoHard.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if (nClients == 6) {
	ServerCommand("exec AutoHard.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if (nClients == 7) {
	ServerCommand("exec AutoInsane.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if (nClients >= 8) {
	ServerCommand("exec AutoInsane.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
		  }
		  }
	   }
	
	if (strncmp(mapname, "pb_z_richland_h", 15) == 0)
	    {
	if( nClients == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2 ){
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3 ){
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4 ){
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() >= 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }	
	
	if (strncmp(mapname, "pb_z_hometown1999_h", 19) == 0)
	    {
	if( nClients == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2 ){
	ServerCommand("exec AutoMedium.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3 ){
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4 ){
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() >= 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }	
	
		if (strncmp(mapname, "z_ravenhell_h", 13) == 0)
	    {
	if( nClients == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2 ){
	ServerCommand("exec AutoMedium.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3 ){
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4 ){
	ServerCommand("exec AutoInsane.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() >= 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }	
	
		if (strncmp(mapname, "dm_pinnacles_h", 14) == 0)
	    {
	if( nClients == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2 ){
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3 ){
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4 ){
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() >= 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }	
	
		if (strncmp(mapname, "dm_thetunnel_v1_h", 17) == 0)
	    {
	if( nClients == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2 ){
	ServerCommand("exec AutoMedium.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3 ){
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4 ){
	ServerCommand("exec AutoInsane.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() >= 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }	
	
		 if (strncmp(mapname, "dm_central_station_v1_h", 23) == 0)
	    {
	if( nClients == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2 ){
	ServerCommand("exec AutoMedium.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3 ){
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4 ){
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5 ){
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() >= 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
		 if (strncmp(mapname, "dm_snowfall_h", 19) == 0)
	    {
	if( nClients == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2 ){
	ServerCommand("exec AutoMedium.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3 ){
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4 ){
	ServerCommand("exec AutoInsane.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() >= 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
		if (strncmp(mapname, "dm_october_h", 14) == 0)
	    {
	if( nClients == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2 ){
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3 ){
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4 ){
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() >= 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }	
	
		 if (strncmp(mapname, "pb_z_office_tower_h", 19) == 0)
	    {
	if( nClients == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2 ){
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3 ){
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4 ){
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5 ){
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() >= 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
	 if (strncmp(mapname, "dm_hontana_h", 12) == 0)
	    {
	if( nClients == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2 ){
	ServerCommand("exec AutoMedium.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3 ){
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4 ){
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7 ){
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() >= 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
		if (strncmp(mapname, "pb_z_office_tower_v2_h", 22) == 0)
	    {
	if( nClients == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2 ){
	ServerCommand("exec AutoMedium.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3 ){
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4 ){
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5 ){
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6 ){
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7 ){
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() >= 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
	 if (strncmp(mapname, "pb_z_colony_h", 13) == 0)
	    {
	if( nClients == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2 ){
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3 ){
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4 ){
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5 ){
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6 ){
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7 ){
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() >= 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
	 if (strncmp(mapname, "pb_z_disorder_h", 15) == 0)
	    {
	if( nClients == 0) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2) {
	ServerCommand("exec AutoMedium.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3) {
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4) {
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5) {
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6) {
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7) {
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 8) {
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
 if (strncmp(mapname, "pb_z_underground_h", 18) == 0)
	    {
	if( nClients == 0) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2) {
	ServerCommand("exec AutoMedium.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3) {
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4) {
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5) {
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6) {
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7) {
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 8) {
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
 if (strncmp(mapname, "dm_cave_h", 9) == 0)
	    {
	if( nClients == 0) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3) {
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4) {
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5) {
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6) {
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7) {
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 8) {
	ServerCommand("exec AutoHard.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
	if (strncmp(mapname, "dm_coldruins_rc1_h", 18) == 0)
	    {
	if( nClients == 0) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2) {
	ServerCommand("exec AutoMedium.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3) {
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4) {
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5) {
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6) {
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7) {
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 8) {
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
	if (strncmp(mapname, "pb_z_industry_h", 15) == 0)
	    {
	if( nClients == 0) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3) {
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4) {
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5) {
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6) {
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7) {
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 8) {
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
	 if (strncmp(mapname, "pb_z_earthquake_h", 17) == 0)
        {
	if( nClients == 0) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3) {
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4) {
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5) {
	ServerCommand("exec AutoMedium.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6) {
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7) {
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 8) {
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
 if (strncmp(mapname, "dm_laststop_h", 13) == 0)
    {
	if( nClients == 0) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3) {
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4) {
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5) {
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6) {
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7) {
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 8) {
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
	 if (strncmp(mapname, "dm_raven_h", 10) == 0)
    {
	if( nClients == 0) {
	ServerCommand("exec AutoEasy.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 1) {
	ServerCommand("exec AutoEasy.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 2) {
	ServerCommand("exec AutoEasy.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 3) {
	ServerCommand("exec AutoMedium.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 4) {
	ServerCommand("exec AutoHard.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 5) {
	ServerCommand("exec AutoHard.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 6) {
	ServerCommand("exec AutoInsane.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 7) {
	ServerCommand("exec AutoInsane.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 8) {
	ServerCommand("exec AutoInsane.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
    }
	
  if (strncmp(mapname, "dm_hine_entrance_h", 18) == 0)
    {
	if( nClients == 0) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 1) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 2) {
	ServerCommand("exec AutoEasy.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 3) {
	ServerCommand("exec AutoMedium.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 4) {
	ServerCommand("exec AutoHard.cfg");
	int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 5) {
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 6) {
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 7) {
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if( GetClientCount() == 8) {
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
	 if (strncmp(mapname, "dm_raven_h", 10) == 0)
    {
	if( nClients == 0) {
	ServerCommand("exec AutoEasy.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 1) {
	ServerCommand("exec AutoEasy.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 2) {
	ServerCommand("exec AutoEasy.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 3) {
	ServerCommand("exec AutoMedium.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 4) {
	ServerCommand("exec AutoHard.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 5) {
	ServerCommand("exec AutoHard.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 6) {
	ServerCommand("exec AutoInsane.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 7) {
	ServerCommand("exec AutoInsane.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 8) {
	ServerCommand("exec AutoInsane.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
    }
	
	 if (strncmp(mapname, "pb_z_high_school_h", 18) == 0)
    {
		
	if( nClients == 0) {
	ServerCommand("exec AutoEasy.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 1) {
	ServerCommand("exec AutoEasy.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 2) {
	ServerCommand("exec AutoEasy.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 3) {
	ServerCommand("exec AutoMedium.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 4) {
	ServerCommand("exec AutoHard.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 5) {
	ServerCommand("exec AutoHard.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 6) {
	ServerCommand("exec AutoHard.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 7) {
	ServerCommand("exec AutoInsane.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 8) {
	ServerCommand("exec AutoInsane.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
    }
	
    if (strncmp(mapname, "pb_z_area51_h", 13) == 0)
    {
   
 	if( nClients == 0) {
	ServerCommand("exec AutoEasy.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
    if( GetClientCount() == 1) {
	ServerCommand("exec AutoEasy.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 2) {
	ServerCommand("exec AutoEasy.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 3) {
	ServerCommand("exec AutoEasy.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 4) {
	ServerCommand("exec AutoMedium.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 5) {
	ServerCommand("exec AutoMedium.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 6) {
	ServerCommand("exec AutoMedium.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 7) {
	ServerCommand("exec AutoHard.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 8) {
	ServerCommand("exec AutoHard.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
    }
	    
	if (strncmp(mapname, "dm_horbid_h", 13) == 0)
    {
	if( nClients == 0) {
	ServerCommand("exec AutoEasy.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 1) {
	ServerCommand("exec AutoEasy.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 2) {
	ServerCommand("exec AutoEasy.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 3) {
	ServerCommand("exec AutoMedium.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 4) {
	ServerCommand("exec AutoMedium.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 5) {
	ServerCommand("exec AutoHard.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 6) {
	ServerCommand("exec AutoHard.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 7) {
	ServerCommand("exec AutoInsane.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if( GetClientCount() == 8) {
	ServerCommand("exec AutoInsane.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
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