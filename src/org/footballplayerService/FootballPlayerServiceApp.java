package org.footballplayerService;

import java.util.List;

import eu.dataaccess.footballpool.TPlayerName;
import eu.dataaccess.footballpool.util.PlayerIntegration;

public class FootballPlayerServiceApp {

	public static List<TPlayerName> getPlayer() {
		return PlayerIntegration.getTPlayerName();
	}
	
	

}
