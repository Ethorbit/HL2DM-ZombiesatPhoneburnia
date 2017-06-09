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

		if (strncmp(mapname, "dm_pinnacles_m", 14) == 0)
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
		
	if( GetClientCount() == 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }	
	
		if (strncmp(mapname, "dm_thetunnel_v1_m", 17) == 0)
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
		
	if( GetClientCount() == 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }	
	
		 if (strncmp(mapname, "dm_central_station_v1_m", 23) == 0)
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
		
	if( GetClientCount() == 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
		 if (strncmp(mapname, "dm_snowfall_m", 19) == 0)
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
		
	if( GetClientCount() == 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
		if (strncmp(mapname, "dm_october_m", 14) == 0)
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
		
	if( GetClientCount() == 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }	
	
		 if (strncmp(mapname, "pb_z_office_tower_m", 19) == 0)
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
		
	if( GetClientCount() == 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
	 if (strncmp(mapname, "dm_montana_m", 12) == 0)
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
		
	if( GetClientCount() == 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
		if (strncmp(mapname, "pb_z_office_tower_v2_m", 22) == 0)
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
		
	if( GetClientCount() == 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
	 if (strncmp(mapname, "pb_z_colony_m", 13) == 0)
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
		
	if( GetClientCount() == 8 ){
	ServerCommand("exec AutoInsane.cfg");
			int entity = -1;
			 while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
        }
    }
	
	 if (strncmp(mapname, "pb_z_disorder_m", 15) == 0)
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
	
 if (strncmp(mapname, "pb_z_underground_m", 18) == 0)
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
	
 if (strncmp(mapname, "dm_cave_m", 9) == 0)
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
	
	if (strncmp(mapname, "dm_coldruins_rc1_m", 18) == 0)
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
	
	if (strncmp(mapname, "pb_z_industry_m", 15) == 0)
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
	
	 if (strncmp(mapname, "pb_z_earthquake_m", 17) == 0)
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
	
 if (strncmp(mapname, "dm_laststop_m", 13) == 0)
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
	
	 if (strncmp(mapname, "dm_raven_m", 10) == 0)
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
	
  if (strncmp(mapname, "dm_mine_entrance_m", 18) == 0)
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
	
	 if (strncmp(mapname, "dm_raven_m", 10) == 0)
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
	
	 if (strncmp(mapname, "pb_z_high_school_m", 18) == 0)
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
	
    if (strncmp(mapname, "pb_z_area51_m", 13) == 0)
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
	    
	if (strncmp(mapname, "dm_morbid_m", 13) == 0)
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