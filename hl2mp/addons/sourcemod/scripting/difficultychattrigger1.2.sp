new g_Time3[MAXPLAYERS+1];

#define SPAMTIME3 180

public OnPluginStart() {
}

public Action OnClientSayCommand(client, const String:command[], const String:sArgs[])
{ 
    if (strcmp(sArgs, "difficulty", false) == 0){
  if(g_Time3[client] == 0 || g_Time3[client] <= ( GetTime() - SPAMTIME3 ))
    {
        // Set the time
        g_Time3[client] = GetTime();
   
        // Your function or command
        EnableVote3(client);
    }

    return Plugin_Handled;
	}
}

EnableVote3(client)
{
ServerCommand("plugins enable customvotes.smx");
}

// Of course don't forget to reset the time if it is a long time
public OnClientPostAdminCheck(client)
{
    g_Time3[client] = 0;
}



