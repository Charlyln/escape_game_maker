if (!invulnerability) {
pv -= 1
invulnerability = true
is_hit = true
alarm[2] = 100
audio_play_sound(snd_player_hit, 1, false);
}
