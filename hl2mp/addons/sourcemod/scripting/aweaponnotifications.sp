#pragma semicolon 1

#include <sourcemod>

public OnPluginStart()
{
CreateTimer(1.0, WeaponHudText, TIMER_REPEAT);
}

public Action TimerRepeat(Handle timer)
{
CreateTimer(1.0, WeaponHudText, TIMER_REPEAT);
}

public Action WeaponHudText(Handle timer, any client)
{
CreateTimer(1.0, WeaponHudText, TIMER_REPEAT);
    if(!IsClientConnected(client) || !IsClientInGame(client)) return Plugin_Handled;

    char playerWeapon[32];
    GetClientWeapon(client, playerWeapon, sizeof(playerWeapon));

    if(StrEqual(playerWeapon, "weapon_smg1", false))
    {
        SetHudTextParams(-1.0, 0.98, 1.20, 255, 255, 255, 255, 1, 1, 1, 1);
        ShowHudText(client, 1, "This weapon is weak towards zombies.");
    }
    if(StrEqual(playerWeapon, "weapon_pistol", false))
    {
        SetHudTextParams(-1.0, 0.98, 1.20, 255, 255, 255, 255, 0, 0.0, 0.1, 0.0);
        ShowHudText(client, -1, "This weapon is useless towards zombies.");
    }
    return Plugin_Handled;
}  