//12/5/2021
LoadedFuncs.rawset("Level_1", function(Player) {
	PlayerFunc.rawset(Player, function(Player, Slot) {
		if (Slot == 0) { 
				Player.Pos = ::Vector(94.85, -1008.8, 26.16)
				setAngle[Player.ID] = -0;
				setSkin[Player.ID] = 8;
				::SmallMessage(Player,"Get in the car", 2000, 1)

				local vehicle = ::CreateVehicle( 110, Vector(97.76, -1007.6, 25.92), -1, -1 );
				vehicle.Angle = 89.2909;
				 TempVehicle[Player.ID] = vehicle.ID;
				 GetInCar[Player.ID] = true;
			Slot++;
 			return true;
		}
		if (Slot == 1) { 
				 GetInCar[Player.ID] = false;
				::SmallMessage(Player,"~p~Car~g~17~w~ Find a ped", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(38.5609, -1023.5, 25.76);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(38.5609, -1023.5, 25.76) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 2) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(41.6178, -1084.7, 25.76);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(41.6178, -1084.7, 25.76) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 3) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(14.93, -1146.96, 25.9);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(14.93, -1146.96, 25.9) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 4) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~p~Car~g~17~w~ Try somewhere else", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(37.6786, -1191.6, 25.76);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(37.6786, -1191.6, 25.76) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 5) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(39.8087, -1260.7, 25.76);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(39.8087, -1260.7, 25.76) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 6) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(-17.24, -1364.04, 25.76);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(-17.24, -1364.04, 25.76) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 7) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(-137.66, -1364.23, 25.76);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(-137.66, -1364.23, 25.76) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 8) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(-192.551, -1438.8, 25.61);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(-192.551, -1438.8, 25.61) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 9) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~p~Car~g~17~w~ Try somewhere else", 2000, 1)

				::SmallMessage(Player,"~p~Car~g~17~w~ Try somewhere else", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(73.56, -1613.54, 25.76);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(73.56, -1613.54, 25.76) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 10) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~p~Car~g~17~w~ Try somewhere else", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(199.444, -1570.6, 25.91);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(199.444, -1570.6, 25.91) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 11) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~p~Car~g~17~w~ Keep looking for a ped", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(342.2, -1560.49, 25.69);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(342.2, -1560.49, 25.69) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 12) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(328.588, -1476.5, 25.76);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(328.588, -1476.5, 25.76) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 13) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(307.906, -1294, 25.76);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(307.906, -1294, 25.76) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 14) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(371.701, -1210.4, 25.76);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(371.701, -1210.4, 25.76) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 15) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(357.5, -1177.78, 15.75);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(357.5, -1177.78, 15.75) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 16) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(320.178, -1139.3, 19.72);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(320.178, -1139.3, 19.72) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 17) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(339.9, -1059.79, 25.72);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(339.9, -1059.79, 25.72) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 18) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~p~Car~g~17~w~ No one back here", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(361.002, -1086.5, 25.14);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(361.002, -1086.5, 25.14) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 19) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~p~Car~g~17~w~ Try up front", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(342.3, -1135.5, 22.72);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(342.3, -1135.5, 22.72) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 20) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~p~Car~g~17~w~ No one", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(396, -1141.6, 25.63);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(396, -1141.6, 25.63) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 21) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~p~Car~g~17~w~ Try the Hospital", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(370, -1217.88, 25.76);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(370, -1217.88, 25.76) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 22) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(215.35, -1144.03, 25.76);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(215.35, -1144.03, 25.76) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 23) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(48.4187, -943.7, 25.76);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(48.4187, -943.7, 25.76) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 24) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(127.37, -774.5, 25.76);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(127.37, -774.5, 25.76) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 25) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(255.274, -364.5, 25.76);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(255.274, -364.5, 25.76) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 26) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(303.93, -58.5312, 17.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(303.93, -58.5312, 17.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 27) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(356.3, 32.5653, 10.97);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(356.3, 32.5653, 10.97) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 28) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(333.307, -7.17, 15.96);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(333.307, -7.17, 15.96) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 29) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(227.24, -20.597, 15.96);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(227.24, -20.597, 15.96) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 30) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"You should find VRocker on IRC. Ask for peds", 2000, 1)

				::SmallMessage(Player,"~p~Car~p~17~w~ Blame VRocker. Come to base", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(322.27, -28.4903, 15.96);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(322.27, -28.4903, 15.96) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 31) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(360, 32.9866, 14.26);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(360, 32.9866, 14.26) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 32) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(251.35, -104.5, 20.73);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(251.35, -104.5, 20.73) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 33) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(250.065, -201.72, 20.97);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(250.065, -201.72, 20.97) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 34) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(249.666, -364.4, 25.63);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(249.666, -364.4, 25.63) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 35) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(249.236, -541.5, 25.76);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(249.236, -541.5, 25.76) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 36) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(205.351, -795.4, 25.76);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(205.351, -795.4, 25.76) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 37) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(274.25, -940.189, 31.17);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(274.25, -940.189, 31.17) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 38) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(520.7, -937.488, 41.1);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(520.7, -937.488, 41.1) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 39) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(690.2, -941.22, 42.11);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(690.2, -941.22, 42.11) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 40) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(981.6, -948.939, 19.97);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(981.6, -948.939, 19.97) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 41) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1275.1, -902.885, 14.57);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1275.1, -902.885, 14.57) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 42) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1265.96, -813.2, 14.57);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1265.96, -813.2, 14.57) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 43) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1239.87, -758.1, 14.57);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1239.87, -758.1, 14.57) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 44) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1247.92, -733.799, 14.91);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1247.92, -733.799, 14.91) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 45) { 
				 GetInSphere[Player.ID] = false;
				//::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				//::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~p~Car~p~17~w~ Grab the pickup", 2000, 1)

				local pickup = ::CreatePickup(1384, Vector(1252.32, -736.999, 14.91))
				TempPickup[Player.ID] = pickup.ID;
				GetInPickup[Player.ID] = true;
			Slot++;
 			return true;
		}
		if (Slot == 46) { 
				 GetInPickup[Player.ID] = false;
				::SmallMessage(Player,"~g~Mission over", 2000, 1)
			Jobbing[Player.ID] = false;
 			return true;
		}
 
	})
});

function CreatePlayerSphere(Player) {
 local sphere =   CreateClientSphere(Vector(0, 0, 0), 5.00, Colour( 0, 0, 255 ), Player )		
TempSphere[Player.ID] = sphere.ID}