#pragma semicolon 1
#include <sourcemod>
 
#include <sdktools>
 
#define PLUGIN_VERSION "1.0.0"
public Plugin myinfo = {
    name = "Difficulty stay medium",
    author = "Ethorbit",
    description = "This will keep the difficulty on medium if everyone voted for the medium difficulty, so when someone joins it doesn't change, this has a few understandable exceptions in place.",
    version = PLUGIN_VERSION,
    url = ""
}

public void Frame_StayOnMedium(any ignored) {
    StayOnMedium();
}

public void OnClientPutInServer(int client) {
    StayOnMedium();
}

public void OnClientDisconnect_Post(int client) {
    StayOnMedium();
}

void StayOnMedium() {
    int nClients = GetClientCount(false);
	int entity = -1;
if( nClients == 1) {
ServerCommand("exec StayMedium.cfg");
CreateTimer(2.0, StayMedium1ply);
	}
if( nClients == 0) {
ServerCommand("plugins enable autodifficultypatch.smx");
	}
	
if( nClients == 1) {
ServerCommand("plugins enable autodifficultypatch.smx");
	}
	
if( nClients == 2) {
ServerCommand("plugins disable autodifficultypatch.smx");
ServerCommand("exec StayMedium.cfg");
CreateTimer(2.0, StayMedium1ply);
	}
	
if( nClients == 3) {
ServerCommand("plugins disable autodifficultypatch.smx");
ServerCommand("exec StayMedium.cfg");
CreateTimer(2.0, StayMedium1ply);
	}
	
if( nClients == 4) {
ServerCommand("plugins enable autodifficultypatch.smx");
	}
	
if( nClients == 5) {
ServerCommand("plugins enable autodifficultypatch.smx");
	}
	
if( nClients == 6) {
ServerCommand("plugins enable autodifficultypatch.smx");
	}
	
if( nClients == 7) {
ServerCommand("plugins enable autodifficultypatch.smx");
	}

if( nClients == 8) {
ServerCommand("plugins enable autodifficultypatch.smx");
	}
}

public Action StayMedium1ply(Handle timer)
{
int entity = -1;
	 while ((entity = FindEntityByTargetName(entity, "MediumTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		 while ((entity = FindEntityByTargetName(entity, "MediumText")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		 while ((entity = FindEntityByTargetName(entity, "MediumTextDisabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		 while ((entity = FindEntityByTargetName(entity, "MediumStayTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
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