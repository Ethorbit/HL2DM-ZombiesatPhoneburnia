#include <sourcemod>
 
#include <sdktools>
 
#include <colors>

#define PLUGIN_VERSION "1.0.0"

public Plugin myinfo = {
    name = "Current Difficulty",
    author = "Ethorbit",
    description = "This will print the current difficulty. This file is enabled when the current difficulty is enabled.",
    version = PLUGIN_VERSION,
    url = ""
}

public OnPluginStart()
{
RegConsoleCmd("sm_currentdifficulty", PrintCurrentDifficulty)
RegConsoleCmd("sm_currentgamemode", PrintCurrentDifficulty)
RegConsoleCmd("sm_currentmode", PrintCurrentDifficulty)
RegConsoleCmd("sm_currentdiff", PrintCurrentDifficulty)
RegConsoleCmd("sm_gamemode", PrintCurrentDifficulty)
RegConsoleCmd("sm_mode", PrintCurrentDifficulty)
}

char g_sMatchInputs[][] = { "currentdifficulty", "currentmode", "currentgamemode", "gamemode", "mode" };

public void OnClientSayCommand_Post(int client, const char[] command, const char[] sArgs)
{
    for (int i = 0; i < sizeof(g_sMatchInputs); ++i)
    {
        if (!StrContains(sArgs, g_sMatchInputs[i], false)) // false == 0, <any int but 0> == true
            CPrintToChatAll("The current difficulty is {red}HARD{default}!");
    }
}  

//Something I was working on to stop people from silently spamming these commands using sm_command.
//It isn't working, even though the array SHOULD add double quotes inside.
//public Action:SayTheDifficulty(int client, const char[] command, int args)
//{
//char SayThis[][] = { "say !currentmode" };
//ServerCommand("sm_fexec #%i %s", GetClientUserId(client), SayThis);
//}

public Action:PrintCurrentDifficulty(int client, int args)
{
CPrintToChatAll("The current difficulty is {red}HARD{default}!");
}