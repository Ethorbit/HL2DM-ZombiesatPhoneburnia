#pragma semicolon 1
#include <sourcemod>
 
#include <sdktools>
 
#define PLUGIN_VERSION "1.0.0"
public Plugin myinfo = {
    name = "Difficulty stay hard",
    author = "Ethorbit",
    description = "This will keep the difficulty on hard if everyone voted for the hard difficulty, so when someone joins it doesn't change, this has a few understandable exceptions in place.",
    version = PLUGIN_VERSION,
    url = ""
}

public void Frame_StayOnHard(any ignored) {
    StayOnHard();
}

public void OnClientPutInServer(int client) {
    StayOnHard();
}

public void OnClientDisconnect_Post(int client) {
    StayOnHard();
}

void StayOnHard() {
    int nClients = GetClientCount(false);
	int entity = -1;

if( nClients == 0) {
ServerCommand("plugins enable autodifficultypatch.smx");
	}
	
if( nClients == 2) {
ServerCommand("plugins disable autodifficultypatch.smx");
ServerCommand("exec StayHard.cfg");
CreateTimer(2.0, StayHard1ply);
	}
	
if( nClients == 3) {
ServerCommand("plugins disable autodifficultypatch.smx");
ServerCommand("exec StayHard.cfg");
CreateTimer(2.0, StayHard1ply);
	}
	
if( nClients == 4) {
ServerCommand("plugins disable autodifficultypatch.smx");
ServerCommand("exec StayHard.cfg");
CreateTimer(2.0, StayHard1ply);
	}
	
if( nClients == 5) {
ServerCommand("plugins disable autodifficultypatch.smx");
ServerCommand("exec StayHard.cfg");
CreateTimer(2.0, StayHard1ply);
	}

if( nClients == 6) {
ServerCommand("plugins disable autodifficultypatch.smx");
ServerCommand("exec StayHard.cfg");
CreateTimer(2.0, StayHard1ply);
	}

if( nClients == 7) {
ServerCommand("plugins disable autodifficultypatch.smx");
ServerCommand("exec StayHard.cfg");
CreateTimer(2.0, StayHard1ply);
	}

if( nClients == 8) {
ServerCommand("plugins enable autodifficultypatch.smx");
	}
}

public Action StayHard1ply(Handle timer)
{
int entity = -1;
		while ((entity = FindEntityByTargetName(entity, "HardTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		 while ((entity = FindEntityByTargetName(entity, "HardText")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		 while ((entity = FindEntityByTargetName(entity, "HardTextDisabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		 while ((entity = FindEntityByTargetName(entity, "HardStayTextEnabler")) != -1) {
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