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

public void Frame_StayOnInsane(any ignored) {
    StayOnInsane();
}

public void OnClientPutInServer(int client) {
    StayOnInsane();
}

public void OnClientDisconnect_Post(int client) {
    StayOnInsane();
}

void StayOnInsane() {
    int nClients = GetClientCount(false);
	int entity = -1;

if( nClients == 0) {
ServerCommand("plugins enable autodifficultypatch.smx");
	}
	
if( nClients == 2) {
ServerCommand("plugins disable autodifficultypatch.smx");
ServerCommand("exec StayInsane.cfg");
CreateTimer(2.0, StayInsane1ply);
	}
	
if( nClients == 3) {
ServerCommand("plugins disable autodifficultypatch.smx");
ServerCommand("exec StayInsane.cfg");
CreateTimer(2.0, StayInsane1ply);
	}
	
if( nClients == 4) {
ServerCommand("plugins disable autodifficultypatch.smx");
ServerCommand("exec StayInsane.cfg");
CreateTimer(2.0, StayInsane1ply);
	}
	
if( nClients == 5) {
ServerCommand("plugins disable autodifficultypatch.smx");
ServerCommand("exec StayInsane.cfg");
CreateTimer(2.0, StayInsane1ply);
	}

if( nClients == 6) {
ServerCommand("plugins disable autodifficultypatch.smx");
ServerCommand("exec StayInsane.cfg");
CreateTimer(2.0, StayInsane1ply);
	}

if( nClients == 7) {
ServerCommand("plugins disable autodifficultypatch.smx");
ServerCommand("exec StayInsane.cfg");
CreateTimer(2.0, StayInsane1ply);
	}
	
if( nClients == 8) {
ServerCommand("plugins disable autodifficultypatch.smx");
ServerCommand("exec StayInsane.cfg");
CreateTimer(2.0, StayInsane1ply);
	}
}

public Action StayInsane1ply(Handle timer)
{
int entity = -1;
		while ((entity = FindEntityByTargetName(entity, "InsaneTextEnabler")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		 while ((entity = FindEntityByTargetName(entity, "InsaneText")) != -1) {
            AcceptEntityInput(entity, "Disable");
        }
		 while ((entity = FindEntityByTargetName(entity, "InsaneTextDisabler")) != -1) {
            AcceptEntityInput(entity, "Enable");
        }
		 while ((entity = FindEntityByTargetName(entity, "InsaneStayTextEnabler")) != -1) {
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