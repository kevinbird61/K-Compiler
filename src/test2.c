int idMain(){
	int idA;
	int idLoop;	
	int idResult;
	
	idLoop = 10;
	idA = 3;
	
	while( ( idA + 3 ) < idLoop ){
		idLoop = idLoop - 1 ;
	}
	print idLoop;
	
	idResult = idA - 2 + 14 / 2 + idLoop + (3 * 4 + 1);
	
	print idResult;
	
	if( (idA + 3) > 4 ){
		// idA = idA + 1;
		print idA;
	}
	else{
		// idResult = idResult + 1;
		print idResult;
	}
		
	print idA;	
	
}
