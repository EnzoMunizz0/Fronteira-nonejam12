

global.cursorForma = "default";







switch room {
	
	case StartMenuRoom:
		surface_resize(application_surface, 256*3, 144*3);
		instance_create_layer(x, y, "MenuItems", oUI);
		
		
	break;
	
	case GameRoom:
		instance_create_layer(0, 0, "UI", oUI);
		var _docvars = { // Adicionar variáveis ao obj oDocument
			documento: "Passaporte",
			
		};
		instance_create_layer(51, 189, "Instances", oDocument, _docvars);

		_docvars = { // Adicionar variáveis ao obj oDocument
			documento: "Passaporte"
		};
		instance_create_layer(72, 186, "Instances", oDocument, _docvars);
	break;
	
	default:
	break;
}

