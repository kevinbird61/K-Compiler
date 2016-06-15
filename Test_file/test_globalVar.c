int idGlobal;

int idTest(int idVar){
	int idTestvar;
	idTestvar = 3;
}

int idMain(){
	int idLocal;
	
	idLocal = 10;
	idGlobal = 11;
	
	idLocal = idLocal + idGlobal;
	
	print idLocal;
	
	idLocal = idLocal + idTestvar;
	
	print idLocal;
}
