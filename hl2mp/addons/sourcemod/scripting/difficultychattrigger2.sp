new g_Time2[MAXPLAYERS+1];
new bool:g_bPlayerHadMessage2[MAXPLAYERS+1];

#define SPAMTIME2 180

public OnPluginStart() {
}

public Action OnClientSayCommand(client, const String:command[], const String:sArgs[])
{ 
    if (strcmp(sArgs, "!difficulty", false) == 0){
  if(g_Time2[client] == 0 || g_Time2[client] <= ( GetTime() - SPAMTIME2 ))
    {
        // Set the time
        g_Time2[client] = GetTime();
        
        // Set the appeared message to false
        g_bPlayerHadMessage2[client] = false;
        
        // Your function or command
        EnableVote2(client);
    }
	
	 // If he is not allowed to use the command send him a message
    // We only want this message to appear 1 time, else our spamcheck wouldn't make any sense
    else if(!g_bPlayerHadMessage2[client])
    {
        // Send a message when he can approximately use the command again.
        PrintToChat(client, "[SM] Cooldown is in progress. Please wait %d seconds before trying again.", SPAMTIME2 - ( GetTime() - g_Time2[client] ));
        
        // Set to true that he seen the message
        g_bPlayerHadMessage2[client] = false;
    }
    

    return Plugin_Handled;
	}
}

EnableVote2(client)
{
ServerCommand("plugins enable customvotes.smx");
ServerCommand("exec say.cfg");
PrintToChat(client, "[SM] Difficulty cooldown is over.")
}

// Of course don't forget to reset the time if it is a long time
public OnClientPostAdminCheck(client)
{
    g_Time2[client] = 0;
    g_bPlayerHadMessage2[client] = false;
}



