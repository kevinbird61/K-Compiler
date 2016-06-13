int idMain(){
	int idA;
	int idLoop;	
	
	idLoop = 10;
	idA = 3;
	
	while( ( idA + 3 ) < ( idLoop + 3 ) ){
		idLoop = idLoop - 1 ;
	}
	
	print idLoop;
}
