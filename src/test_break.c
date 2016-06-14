int idMain(){
	int idLoop;
	
	idLoop = 10;
	
	while( idLoop > 5){
		idLoop = idLoop - 1;
		break;
	}
	
	print idLoop;
	
	if( idLoop >= 7 ){
		idLoop = 7;
	}
	else{
		idLoop = 5;
	}
	
	print idLoop;
	
}
