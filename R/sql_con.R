#' Quick connect to SQLite db
#'
#' @param db_name The db will be assigned to this. Defaults to db.
#' @param drv Type of connection
#' @param file Relative or absolute path to db.
#'
#' @export

sql_con <- function(db_name = "db", drv = "SQLite()", file = NULL){

	if(is.null(file)) stop("Specify where db may be found.")
	if(drv != "SQLite()") message("Are you sure about the db format?")

	assign(db_name, dbConnect(drv, file))

}