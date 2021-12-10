// Ehh max player value?
Muted <- array (MAX_PLAYERS, 0);

// You need to add in some TargetPlayer function to this command
  if (cmd == mute) {

    local Time = date().min * 60 + date().sec;
    Muted[Player.ID] = Time; 

    Message ( Player + " was muted" );
  }

// Basic Mute test
function onPlayerChat(Player, Text) { 
  local Time = Muted[Player.ID] - date ( ).min * 60 - date ( ).sec + 300, Min = Time / 60,  Sec = Time - 60 * Min;

  if ( Min < 10 ) Min = "0" + Min;
  if ( Sec < 10 ) Sec = "0" + Sec;

  if (Min && Sec != 0 ) MessagePlayer ("You are muted! [" + Min + ":" + Sec + "]", Player );
  else Message(Player + ": " + Text);
}
