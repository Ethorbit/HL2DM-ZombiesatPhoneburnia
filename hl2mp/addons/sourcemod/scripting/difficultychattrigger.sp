new g_Time[MAXPLAYERS+1];
new bool:g_bPlayerHadMessage[MAXPLAYERS+1];

#define SPAMTIME 180

public OnPluginStart() {
}

public Action OnClientSayCommand(client, const String:command[], const String:sArgs[])
{ 
    if (strcmp(sArgs, "difficulty", false) == 0){
  if(g_Time[client] == 0 || g_Time[client] <= ( GetTime() - SPAMTIME ))
    {
        // Set the time
        g_Time[client] = GetTime();
        
        // Set the appeared message to false
        g_bPlayerHadMessage[client] = false;
        
        // Your function or command
        EnableVote(client);
    }
	
	 // If he is not allowed to use the command send him a message
    // We only want this message to appear 1 time, else our spamcheck wouldn't make any sense
    else if(!g_bPlayerHadMessage[client])
    {
        // Send a message when he can approximately use the command again.
        PrintToChat(client, "[SM] Cooldown is in progress. Please wait %d seconds before trying again.", SPAMTIME - ( GetTime() - g_Time[client] ));
        
        // Set to true that he seen the message
        g_bPlayerHadMessage[client] = false;
    }
    

    return Plugin_Handled;
	}
}
EnableVote(client)
{
ServerCommand("plugins enable customvotes.smx");
ServerCommand("exec say.cfg");
PrintToChat(client, "[SM] Difficulty cooldown is over.")
}

// Of course don't forget to reset the time if it is a long time
public OnClientPostAdminCheck(client)
{
    g_Time[client] = 0;
    g_bPlayerHadMessage[client] = false;
}



