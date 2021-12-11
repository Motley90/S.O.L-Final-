//12/5/2021
LoadedFuncs.rawset("Level_2", function(Player) {
	PlayerFunc.rawset(Player, function(Player, Slot) {
		if (Slot == 0) { 
				Player.Pos = ::Vector(1146.7, -652.7, 14.95)
				setAngle[Player.ID] = 83.8051;
				setSkin[Player.ID] = 1;
				::SmallMessage(Player,"~p~Welcome to the police force", 2000, 1)

				local pickup = ::CreatePickup(1384, Vector(1142.63, -655.1, 14.97))
				TempPickup[Player.ID] = pickup.ID;
				GetInPickup[Player.ID] = true;
			Slot++;
 			return true;
		}
		if (Slot == 1) { 
				 GetInPickup[Player.ID] = false;
				::FindPickup( TempPickup[Player.ID]).Remove();
				::SmallMessage(Player,"~b~Grab the police car", 2000, 1)

				local vehicle = ::CreateVehicle( 116, Vector(1137.4, -654.1, 14.72), -1, -1 );
				vehicle.Angle = 180.969;
				 TempVehicle[Player.ID] = vehicle.ID;
				 GetInCar[Player.ID] = true;
			Slot++;
 			return true;
		}
		if (Slot == 2) { 
				 GetInCar[Player.ID] = false;
				::SmallMessage(Player,"~b~Patrol the city", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1127.32, -606.9, 14.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1127.32, -606.9, 14.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 3) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1128.61, -521, 17.88);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1128.61, -521, 17.88) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 4) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1055.68, -476.6, 14.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1055.68, -476.6, 14.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 5) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~b~Look for wanted peds", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(962.3, -451.424, 14.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(962.3, -451.424, 14.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 6) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(913.199, -407.2, 14.54);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(913.199, -407.2, 14.54) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 7) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(938.7, -340.688, 9.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(938.7, -340.688, 9.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 8) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(949.5, -389.268, 14.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(949.5, -389.268, 14.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 9) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(907.842, -437.6, 14.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(907.842, -437.6, 14.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 10) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~b~Keep looking for peds", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1034.8, -454.78, 14.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1034.8, -454.78, 14.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 11) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1054.52, -346.6, 14.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1054.52, -346.6, 14.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 12) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1082.9, -136.668, 6.27);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1082.9, -136.668, 6.27) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 13) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1204.07, -105.02, 14.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1204.07, -105.02, 14.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 14) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1238.59, -101.81, 14.75);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1238.59, -101.81, 14.75) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 15) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~b~Keep looking for peds", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1261.9, -47.7142, 9.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1261.9, -47.7142, 9.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 16) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1261.9, -47.7142, 9.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1261.9, -47.7142, 9.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 17) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1307.5, -96.2154, 14.66);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1307.5, -96.2154, 14.66) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 18) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1333.9, -126.234, 14.78);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1333.9, -126.234, 14.78) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 19) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1325.3, -52.4276, 14.38);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1325.3, -52.4276, 14.38) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 20) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1285.5, -79.2201, 14.3);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1285.5, -79.2201, 14.3) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 21) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~b~No Peds back here", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1151.8, -47.2826, 9.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1151.8, -47.2826, 9.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 22) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1147.5, -83.9096, 7.25);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1147.5, -83.9096, 7.25) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 23) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1175.29, -67.8, 7.25);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1175.29, -67.8, 7.25) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 24) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1166.4, -108.324, 7.25);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1166.4, -108.324, 7.25) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 25) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~b~No Peds back here", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1076, -123.47, 9.21);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1076, -123.47, 9.21) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 26) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1001.8, -168.835, 4.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1001.8, -168.835, 4.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 27) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(951.7, -336.621, 9.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(951.7, -336.621, 9.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 28) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(912.815, -234.81, 4.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(912.815, -234.81, 4.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 29) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(870.9, -137.251, 4.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(870.9, -137.251, 4.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 30) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(814.586, -358.6, 10.09);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(814.586, -358.6, 10.09) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 31) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(915, -499.557, 14.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(915, -499.557, 14.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 32) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(974, -609.9, 14.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(974, -609.9, 14.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 33) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(840.6, -620.647, 14.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(840.6, -620.647, 14.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 34) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(814.836, -742.6, 14.7);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(814.836, -742.6, 14.7) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 35) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(874.2, -980.098, 4.83);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(874.2, -980.098, 4.83) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 36) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~b~No Peds no doughnuts!!", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1089.26, -1023, 14.5);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1089.26, -1023, 14.5) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 37) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1152.6, -963.26, 14.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1152.6, -963.26, 14.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 38) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1366.2, -817.423, 14.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1366.2, -817.423, 14.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 39) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~b~Try the docks", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1527.25, -900.2, 11.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1527.25, -900.2, 11.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 40) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1488.5, -921.325, 19.19);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1488.5, -921.325, 19.19) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 41) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1420.6, -933.55, 19.19);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1420.6, -933.55, 19.19) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 42) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~b~No workers", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1518.2, -719.7, 11.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1518.2, -719.7, 11.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 43) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1478.03, -682.2, 11.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1478.03, -682.2, 11.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 44) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~b~Try the shop around the corner", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1357.59, -792.9, 14.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1357.59, -792.9, 14.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 45) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1276.5, -626.804, 11.99);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1276.5, -626.804, 11.99) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 46) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~b~Try Sals old place", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1272.09, -663.5, 19.5);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1272.09, -663.5, 19.5) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 47) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1372.96, -427.2, 49.7);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1372.96, -427.2, 49.7) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 48) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1400.7, -232.65, 50.29);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1400.7, -232.65, 50.29) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 49) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1418.27, -175.21, 51.2);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1418.27, -175.21, 51.2) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 50) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~b~Contact VRocker on IRC for peds", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1383.2, -284.837, 49.6);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1383.2, -284.837, 49.6) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 51) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~b~County is going under ", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1341.4, -247.394, 49.75);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1341.4, -247.394, 49.75) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 52) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				::SmallMessage(Player,"~p~Return to base", 2000, 1)

				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1201, -207.774, 24.96);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1201, -207.774, 24.96) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 53) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1095.7, -208.114, 12.63);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1095.7, -208.114, 12.63) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 54) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1048.59, -285.74, 7.79);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1048.59, -285.74, 7.79) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 55) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				FindSphere(TempSphere[Player.ID], Player).Pos = Vector(1170.29, -660.6, 18.67);
				 GetInSphere[Player.ID] = true;
				TempBlip[Player.ID] = CreateClientBlip(Player, 0,  Vector(1170.29, -660.6, 18.67) );
 TempBlip[Player.ID] = TempBlip[Player.ID].ID
			Slot++;
 			return true;
		}
		if (Slot == 56) { 
				 GetInSphere[Player.ID] = false;
				::FindSphere( TempSphere[Player.ID], Player).Pos = Vector(0, 0, 0);
				::FindBlip( TempBlip[Player.ID], Player).Remove();
				local pickup = ::CreatePickup(1384, Vector(1169.99, -656.601, 18.67))
				TempPickup[Player.ID] = pickup.ID;
				GetInPickup[Player.ID] = true;
			Slot++;
 			return true;
		}
		if (Slot == 57) { 
			GetInPickup[Player.ID] = false;
			::FindPickup( TempPickup[Player.ID]).Remove();
			::SmallMessage(Player,"~g~Mission Over", 2000, 1)
			Jobbing[Player.ID] = false;

			Slot++;
 			return true;
		}

	})
});
function CreatePlayerSphere(Player) {
 local sphere =   CreateClientSphere(Vector(0, 0, 0), 5.00, Colour( 0, 0, 255 ), Player )		
TempSphere[Player.ID] = sphere.ID}
