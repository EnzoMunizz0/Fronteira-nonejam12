
global.musicaDados = 0;
global.musica = 0;
global.temMus = 0;

global.musTam = 0;
global.musPos = 0;
global.musBatidas = 0;
global.beat = 0;
global.prevBeat = 0;

global.songs = {
	Menu: {
		mus: sngStartMeenu,
		nome: "Start Meenu",
		bpm: 113,
		vol: 1,
		loop: 1
	}
}


function create_musica() {
	global.musicaDados = global.songs.Menu;
	//global.musTam = audio_sound_length(global.musica.mus);
}

function begin_step_beat() {
	if (global.musicaDados != 0) {
		global.musPos = audio_sound_get_track_position(global.musica);
		show_debug_message(global.musPos);
		
		// Tem que dividir 60 pois eu estou contando os segundos, não o fps
		global.beat = floor(global.musPos / (60 / global.musicaDados.bpm) / .1) * .1; 
		
	}
}

function step_musica() {
	if (global.musicaDados != 0) {
		if (!global.temMus) {
			global.musica = audio_play_sound(
				global.musicaDados.mus, 
				10, 
				global.musicaDados.loop, 
				global.musicaDados.vol * (global.volGeral * global.volMusica)
			);
			global.musTam = audio_sound_length(global.musica)
			global.musBatidas = floor(global.musTam / (60/global.musicaDados.bpm))
		}
	
		global.temMus = 1;
		
		
		if (global.prevBeat != global.beat) on_beat();
		
	}
}

function on_beat() {
	switch(room) {
		case StartMenuRoom:
			if (global.beat % 8 == 0) screenshake(5);
			
		break;
	}
}

function end_step_beat() {
	if (global.musicaDados != 0) global.prevBeat = global.beat;
}
