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
 
public void OnPluginStart() {
    HookEvent("player_team", OnPlayerTeamChange);
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
	
	if (strncmp(mapname, "dm_coldruins_rc1_m", 18) == 0)
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
	ServerCommand("exec AutoMedium.cfg");
			int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
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
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
		ServerCommand("exec AutoInsane.cfg");
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if (nClients == 8) {
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
		ServerCommand("exec AutoInsane.cfg");
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
	if (strncmp(mapname, "pb_z_industry_m", 15) == 0)
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
		ServerCommand("exec AutoHard.cfg");
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
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
		ServerCommand("exec AutoInsane.cfg");
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if (nClients == 8) {
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
		ServerCommand("exec AutoInsane.cfg");
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
	 if (strncmp(mapname, "pb_z_earthquake_m", 17) == 0)
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
	ServerCommand("exec AutoMedium.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
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
	ServerCommand("exec AutoHard.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
		
	if (nClients == 8) {
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
 if (strncmp(mapname, "dm_laststop_m", 13) == 0)
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
			 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
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
	ServerCommand("exec AutoInsane.cfg");
		int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
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
		
	if (nClients == 8) {
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
	 if (strncmp(mapname, "dm_raven_m", 10) == 0)
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
		 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
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
	ServerCommand("exec AutoInsane.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
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
		
	if (nClients == 8) {
	ServerCommand("exec AutoInsane.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
    }
	
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
	
	 if (strncmp(mapname, "dm_raven_m", 10) == 0)
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
		 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
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
	ServerCommand("exec AutoInsane.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
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
		
	if (nClients == 8) {
	ServerCommand("exec AutoInsane.cfg");
				int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
    }
	
	 if (strncmp(mapname, "pb_z_high_school_m", 18) == 0)
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
		 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
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
		
	if (nClients == 8) {
	ServerCommand("exec AutoInsane.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
    }
	
    if (strncmp(mapname, "pb_z_area51_m", 13) == 0)
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
	ServerCommand("exec AutoHard.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
			}
        }
		
	if (nClients == 8) {
	ServerCommand("exec AutoHard.cfg");
					int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
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
		
	if (nClients == 8) {
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