int idSum ( int idVara , int idVarb){
	int idResult;
	idResult = idVara + idVarb;
	
	return idResult;
}

int idMult( int idF , int idB ){
	int idResulta;
	idResulta = idF * idB;
	return idResulta;
}

int idMain(){
	int idA;
	int idB;	
	int idTemp;
	
	idA = 3;
	idB = 5;

	idTemp = idSum( idA , idB );
	print idTemp;
	
	idTemp = idMult( idA , idB );
	print idTemp;
}
