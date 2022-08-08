function ( ... ) {

    X <- list ( ... )

    KIND.FUNCTIONS <- FUNCTIONS <- list (
        class        = class ,
        mode         = mode ,
        storage.mode = storage.mode ,
        typeof       = typeof )

    N <- length ( KIND.FUNCTIONS )

    FUN <- function ( Y ) vapply (
        FUN.VALUE = list ( NULL ) ,
        USE.NAMES = FALSE ,
        X = KIND.FUNCTIONS ,
        FUN = function ( f ) Y |> f() |> list () )

    INFO <- vapply (
        X = X ,
        FUN = FUN ,
        USE.NAMES = TRUE ,
        FUN.VALUE = vector ( "list" , N ) )

    `names<-` (
        data.frame (
            t ( INFO ) ,
            stringsAsFactors = FALSE ) ,
        names ( KIND.FUNCTIONS ) ) }
