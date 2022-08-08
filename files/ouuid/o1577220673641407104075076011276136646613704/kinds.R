function ( ... ) {

    X <- list ( ... )

    KIND.FUNCTIONS <- FUNCTIONS <- list (
        class        = class ,
        mode         = mode ,
        storage.mode = storage.mode ,
        typeof       = typeof )

    FUN <- function ( Y ) vapply (
        FUN.VALUE = "" ,
        USE.NAMES = FALSE ,
        X = KIND.FUNCTIONS ,
        FUN = function ( f ) f ( Y ) )

    INFO <- vapply (
        X = X ,
        FUN = FUN ,
        USE.NAMES = TRUE ,
        FUN.VALUE = character ( 4 ) )

    `names<-` (
        data.frame (
            t ( INFO ) ,
            stringsAsFactors = FALSE ) ,
        names ( KIND.FUNCTIONS ) ) }
