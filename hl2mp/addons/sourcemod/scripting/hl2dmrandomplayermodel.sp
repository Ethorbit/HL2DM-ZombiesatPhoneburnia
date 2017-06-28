#include <sourcemod>
 
#include <sdktools>
 
#define PLUGIN_VERSION "1.0.0"
public Plugin myinfo = {
    name = "HL2DM Random Team/Playermodel",
    author = "Ethorbit",
    description = "This will set a random team on your first time joining, and a random playermodel based off the team it chose for you. It also has team balance implemented.",
    version = PLUGIN_VERSION,
    url = ""
}

public void OnPluginStart()
{
}

Handle NewPlayer[MAXPLAYERS+1];
 
public void OnClientPutInServer(int client)
{
	NewPlayer[client] = CreateTimer(0.0, RandomTeam, client);
}

public Action RandomTeam(Handle timer, any client)
{
int min = 2;
int max = 3;
int rand = GetRandomInt( min, max );
int random = GetRandomInt(0, 3);
int random2 = GetRandomInt(0, 14);
static const char combinemodels[4][] = {"models/combine_soldier.mdl","models/combine_soldier_prisonguard.mdl","models/combine_super_soldier.mdl","models/police.mdl"};
static const char rebelmodels[15][] = {"models/humans/group03/female_01.mdl","models/humans/group03/female_02.mdl","models/humans/group03/female_03.mdl","models/humans/group03/female_04.mdl","models/humans/group03/female_06.mdl","models/humans/group03/female_07.mdl","models/humans/group03/male_01.mdl","models/humans/group03/male_02.mdl","models/humans/group03/male_03.mdl","models/humans/group03/male_04.mdl","models/humans/group03/male_05.mdl","models/humans/group03/male_06.mdl","models/humans/group03/male_07.mdl","models/humans/group03/male_08.mdl","models/humans/group03/male_09.mdl"};

ChangeClientTeam(client,rand);
 
	if (GetClientTeam(client) == 2) 
	{
	ChangeClientTeam(client,rand);
	SetEntityModel(client, combinemodels[random]);
	PrintToChat(client, "Random team and playermodel selected.");
	new AmountOnCombine = GetTeamClientCount(2);
	new AmountOnRebels = GetTeamClientCount(3);
	if (GetTeamClientCount(2) > GetTeamClientCount(3))
	{
	ChangeClientTeam(client, 3);
	SetEntityModel(client, rebelmodels[random2]);
	SetEntityModel(client, rebelmodels[random2]);
	}
		}
		else if (GetClientTeam(client) == 3) 
		{
		ChangeClientTeam(client,rand);
		SetEntityModel(client, rebelmodels[random2]);
		
			PrintToChat(client, "Random team and playermodel selected.");
				if (GetTeamClientCount(3) > GetTeamClientCount(2))
				{
				ChangeClientTeam(client, 2);
				SetEntityModel(client, combinemodels[random]);
				SetEntityModel(client, combinemodels[random]);
				}
			}
		}


