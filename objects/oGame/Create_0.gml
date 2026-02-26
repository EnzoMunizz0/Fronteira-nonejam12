



switch room {
	
	case StartMenuRoom:
		surface_resize(application_surface, 256*3, 144*3);
		instance_create_layer(x, y, "MenuItems", oUI);
		
		
	break;
	
	case GameRoom:
		var _docvars = { // Adicionar variáveis ao obj oDocument
			documento: "Passaporte",
			
		};
		instance_create_depth(217, 90, 0, oDocument, _docvars);

		_docvars = { // Adicionar variáveis ao obj oDocument
			documento: "Passaporte"
		};
		instance_create_depth(320, 110, 0, oDocument, _docvars);
	break;
	
	default:
	break;
}

