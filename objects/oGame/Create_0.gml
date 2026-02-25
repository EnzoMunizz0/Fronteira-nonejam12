



switch room {
	
	case StartMenuRoom:
		surface_resize(application_surface, 256*3, 144*3);
		instance_create_layer(x, y, "MenuItems", oUI);
		
		
	break;
	
	case GameRoom:
		var _docvars = { // Adicionar variáveis ao obj oDocument
			documento: "Passaporte",
			
		};
		instance_create_depth(117, 90, 0, oDocument, _docvars);

		_docvars = { // Adicionar variáveis ao obj oDocument
			documento: "Identidade"
		};
		instance_create_depth(220, 110, 0, oDocument, _docvars);
	break;
	
	default:
	break;
}

