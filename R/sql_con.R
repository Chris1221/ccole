#' Quick connect to SQLite db
#'
#' @param db_name The db will be assigned to this. Defaults to db.
#' @param drv Type of connection
#' @param file Relative or absolute path to db.
#'
#' @export

sql_con <- function(file = NULL, db_name = "db", drv = SQLite()){

	if(is.null(file)) stop("Specify where db may be found.")
	
	library(RSQLite)
	assign(db_name, dbConnect(SQLite(), file), envir = globalenv())

}
