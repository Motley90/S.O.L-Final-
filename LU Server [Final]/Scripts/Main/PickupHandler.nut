function onScriptLoad()
{
  print( "- Pickup Handling Script Loaded" );
  
  return 1;
}

function onScriptUnload()
{
  print( "- Pickup Handling Script Unloaded" );
  
  return 1;
}

function onPickupPickedUp( pPlayer, pPickup )
{
  local iModel = pPickup.Model;
  switch( iModel )
  {
//-----------------------------------------------//
// Weapon Pickups

    /* Grenade Pickup */
    case 170:
      pPlayer.SetWeapon( 11, 15 );
      break;
    /* AK-47 Pickup */
    case 171:
      pPlayer.SetWeapon( 5, 750 );
      break;
    /* Baseball Bat Pickup */
    case 172:
      pPlayer.SetWeapon( 1, 1 );
      break;
    /* Colt .45 Pickup */
    case 173:
      pPlayer.SetWeapon( 2, 500 );
      break;
    /* Molotov Pickup */
    case 174:
      pPlayer.SetWeapon( 10, 15 );
      break;       
    /* Rocket Launcher Pickup */
    case 175:
      pPlayer.SetWeapon( 8, 50 );
      break;
    /* Shotgun Pickup */
    case 176:
      pPlayer.SetWeapon( 4, 50 );
      break;
    /* Sniper Rifle Pickup */
    case 177:
      pPlayer.SetWeapon( 7, 50 );
      break;
    /* UZI Pickup */
    case 178:
      pPlayer.SetWeapon( 3, 500 );
      break;
    /* M16 Pickup */
    case 180:
      pPlayer.SetWeapon( 6, 1000 );
      break;
    /* Flame Thrower Pickup */
    case 181:
      pPlayer.SetWeapon( 9, 250 );
      break;

//-----------------------------------------------//
// Other Pickups
        
    /* Health Pickup */
    case 1362:
      pPlayer.Health = 100;
      break;
    /* Armour Pickup */  
    case 1364:
      pPlayer.Armour = 100;
      break;
  }
  
  return 1;
}