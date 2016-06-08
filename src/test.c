int idFunction ( int idVala , int idValb ) {
    int idSum ;
    idSum = idVala + idValb ;
    print idSum ;
    return idSum ;
}

int idMain ( ) {
    int idA ;
    int idB ;
    int idResult ;
    int idLoop;
    int idArray [ 10 ] ;

    read idA ;
    read idB ;

    print idA ;
    print idB ;

    idResult = ( idA + idB ) * idB ;
    print idResult;

    idResult = idA + idB - idA * idB / 1 ;
    print idResult ;

    if ( idA > idB ) {
        idResult = idA - idB ;
        print idResult ;
    }
    else {
        idResult = idB - idA ;
        print idResult ;
    }

    idLoop = 10;
    while ( idLoop > 0) {
        idLoop = idLoop - 1 ;
    }
    print idLoop ;

    idArray [ 1 ] = 5 ;
    idArray [ 6 ] = 10 ;
    idResult = idArray [ 1 ] + idArray [ 6 ];
    print idArray;

    idResult = idFunction ( idA , idB ) ;
    print idResult ;

    return 0 ;
}
