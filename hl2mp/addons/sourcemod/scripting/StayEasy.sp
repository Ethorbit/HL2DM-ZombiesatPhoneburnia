#pragma semicolon 1
#include <sourcemod>
 
#include <sdktools>
 
#define PLUGIN_VERSION "1.0.0"
public Plugin myinfo = {
    name = "Difficulty stay easy",
    author = "Ethorbit",
    description = "This will keep the difficulty on easy if everyone voted for the easy difficulty, so when someone joins it doesn't change, this has a few understandable exceptions in place.",
    version = PLUGIN_VERSION,
    url = ""
}

public void Frame_StayOnEasy(any ignored) {
    StayOnEasy();
}

public void OnClientPutInServer(int client) {
    StayOnEasy();
}

public void OnClientDisconnect_Post(int client) {
    StayOnEasy();
}

void StayOnEasy() {
    int nClients = GetClientCount(false);
	int entity = -1;
	
if( nClients == 0) {
ServerCommand("plugins enable autodifficultypatch.smx");
	}
	
if( nClients == 1) {
ServerCommand("plugins disable autodifficultypatch.smx");
ServerCommand("exec StayEasy.cfg");
CreateTimer(1.0, StayEasy1ply);
	}

if( nClients == 2) {
ServerCommand("exec StayEasy.cfg");
ServerCommand("plugins disable autodifficultypatch.smx");
CreateTimer(1.0, StayEasy1ply);
	}
	
if( nClients == 3) {
ServerCommand("plugins enable autodifficultypatch.smx");
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

public Action StayEasy1ply(Handle timer)
{
int entity = -1;
		 while ((entity = FindEntityByTargetName(entity, "EasyTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		 while ((entity = FindEntityByTargetName(entity, "EasyText")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		 while ((entity = FindEntityByTargetName(entity, "EasyTextDisabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		 while ((entity = FindEntityByTargetName(entity, "EasyStayTextEnabler")) != -1) {
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