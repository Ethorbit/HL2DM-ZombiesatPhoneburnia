#include <sdktools>
 
#define PLUGIN_VERSION "1.0.0"
public Plugin myinfo = {
    name = "HL2DM Auto Stopsound",
    author = "Ethorbit & Walgrim",
    description = "This will automatically stop specific sounds known to loop. It does this every 300 seconds.",
    version = PLUGIN_VERSION,
    url = "https://forums.alliedmods.net/showthread.php?t=298331"
}

public void OnMapStart()
{
    CreateTimer(1.0, StopSounds, _, TIMER_REPEAT);
}

public Action StopSounds(Handle timer)
{
    for(new i=1;i<=MaxClients;i++)
    {
            StopSound(i, SNDCHAN_AUTO, "npc/fast_zombie/gurgle_loop1.wav");
            StopSound(i, SNDCHAN_AUTO, "npc/antlion/pain1.wav");
			StopSound(i, SNDCHAN_AUTO, "npc/antlion/pain2.wav");
            StopSound(i, SNDCHAN_AUTO, "npc/antlion/fly1.wav");
            StopSound(i, SNDCHAN_AUTO, "npc/antlion/idle1.wav");
            PrintToChatAll("Sounds automatically stopped!");
    }
}  