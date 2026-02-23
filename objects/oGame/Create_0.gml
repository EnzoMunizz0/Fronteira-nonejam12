




switch room {
	
	case StartMenuRoom:
		instance_create_layer(x, y, "MenuItems", oUI);
		
		
	break;
	
	case GameRoom:
		var _docvars = { // Adicionar variáveis ao obj oDocument
			documento: "Passaporte"
		};
		instance_create_depth(10, 10, 0, oDocument, _docvars);

		_docvars = { // Adicionar variáveis ao obj oDocument
			documento: "RG"
		};
		instance_create_depth(40, 40, 0, oDocument, _docvars);
	break;
	
	default:
	break;
}

