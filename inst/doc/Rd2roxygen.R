
## @knitr setup, echo=FALSE
library('knitr')
opts_chunk$set(comment=NA, message=FALSE)
options(keep.blank.line = FALSE, width=80)


## @knitr roxygen-ex
## the source code of the function `parse_and_save`
ex.file = system.file('examples','parse_and_save.R',package='Rd2roxygen')
cat(readLines(ex.file), sep='\n')


## @knitr rd-ex
rd.file = system.file('examples','parse_and_save.Rd',package='Rd2roxygen')
cat(readLines(rd.file), sep='\n')


## @knitr Rd2roxygen
library(Rd2roxygen)
args(Rd2roxygen)
## e.g. Rd2roxygen('somewhere/to/source/pkg')
## there must be 'man' and 'R' directories under this path


## @knitr parse-file
## we can specify the roxygen comments prefix (#' by default)
options(roxygen.comment = "##' ")
(info = parse_file(rd.file))
cat(create_roxygen(info), sep='\n') # parse_and_save() combines these two steps


## @knitr rab,echo=FALSE
formatR::usage(rab)


## @knitr reformat-ex1,eval=FALSE,tidy=FALSE
## ## original code
## rab=function(pkg,roxygen.dir=pkg,build=TRUE,install=FALSE,
## check=FALSE,check.opts='',remove.check=TRUE,reformat=TRUE,...){}


## @knitr reformat-ex2,eval=FALSE
## ## the reformatted code; note the spaces and indent
## rab=function(pkg,roxygen.dir=pkg,build=TRUE,install=FALSE,
## check=FALSE,check.opts='',remove.check=TRUE,reformat=TRUE,...){}


## @knitr lyx-doc, eval=FALSE
## system.file('doc', 'Rd2roxygen.Rnw', package='Rd2roxygen')




