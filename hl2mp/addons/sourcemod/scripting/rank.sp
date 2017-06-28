public OnPluginStart()
{    
    RegConsoleCmd("sm_rank", Rank);
    RegConsoleCmd("sm_leaderboard", Rank);
	RegConsoleCmd("sm_points", Rank);
	RegConsoleCmd("sm_score", Rank);
	RegConsoleCmd("sm_position", Rank);
	RegConsoleCmd("say rank", Rank);
	RegConsoleCmd("say leaderboard", Rank);
}

public Action:Rank(client, args)
{
    ShowMOTDPanel(client, "Player statistics", "http://www.gametracker.com/server_info/162.248.94.55:27015/top_players/");
}  