function scr_player_movement() {
		//acceleration
	hspd += (key_right-key_left) * acc;
	hspd = clamp(hspd,-maxspeed,maxspeed);


}
