public OnPluginStart() {
}

public Action OnClientSayCommand(client, const String:command[], const String:name[])
{ 
    if (strcmp(name, "difficulty", false) == 0){
    {
    decl String:nick[64]; 
    client = GetClientOfUserId(client); 
    decl String:message[64]; 
	PrintToChatAll("say %d", nick)
	return Plugin_Handled; 
		}
	}
}




