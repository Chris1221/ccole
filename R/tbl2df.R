#' SQLite table to data frame
#'
#' @param table Name of table in con
#' @param con Connection. Defaults to db.
#'
#' @export

tbl2df <- function(table = NULL, con = db){

	if(is.null(table)) stop("Please name the table")

	return(dbGetQuery(con, paste0("select * from ", table)))
}
