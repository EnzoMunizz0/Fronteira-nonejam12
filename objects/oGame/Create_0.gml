

luznegra = 0;

transicaoAlpha = 1;
inTrasicao = 0;
transIf = noone;

global.cursorForma = "default";




irandom(randomise());


switch room {
	
	case SplashRoom:
		nextRoom(StartMenuRoom);
	break;
	
	case OptionsMenuRoom:
	case StartMenuRoom:
		//surface_resize(application_surface, 256*3, 144*3);
		instance_create_layer(x, y, "MenuItems", oUI);
		instance_create_layer(384/2, (room_height/2)-2, "MenuItems", oCam);
		create_musica(global.songs.Menu)
		//global.musica = global.songs.Menu;
		
	break;
	
	case HistoryRoom:
		instance_create_layer(x, y, "MenuItems", oUI);
		instance_create_layer(384/2, (216/2)-2, "MenuItems", oCam);
	break;
	
	case GameRoom:
		instance_create_layer(0, 0, "UI", oUI);
		create_musica();
		global.comecaojogo = 0;
		/*var _docvars = { // Adicionar variáveis ao obj oDocument
			documento: "Passaporte",
			
		};
		instance_create_layer(51, 189, "Instances", oDocument, _docvars);

		_docvars = { // Adicionar variáveis ao obj oDocument
			documento: "Passaporte"
		};
		instance_create_layer(72, 186, "Instances", oDocument, _docvars);*/
	break;
	
	default:
	break;
}

