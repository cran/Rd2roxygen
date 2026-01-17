litedown::reactor(attr.source = 'r')

## the source code of the function `parse_and_save`
ex.file = system.file('examples', 'parse_and_save.R', package = 'Rd2roxygen')
xfun::file_string(ex.file)

rd.file = system.file('examples', 'parse_and_save.Rd', package = 'Rd2roxygen')
xfun::file_string(rd.file)

library(Rd2roxygen)
## we can specify the roxygen comments prefix (#' by default)
options(roxygen.comment = "##' ")
str(info <- parse_file(rd.file))
# parse_and_save() combines these two steps
xfun::raw_string(create_roxygen(info))

