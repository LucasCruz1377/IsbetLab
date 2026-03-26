if global.jogo_pausado
{
	audio_pause_sound(snd_obra2)
	audio_pause_sound(snd_obrabg)
	exit
}
else
{
audio_resume_sound(snd_obrabg)
audio_resume_sound(snd_obra2)
}