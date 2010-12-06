\name{rm_undocumented}
\alias{rm_undocumented}
\title{Remove Rd files for the undocumented functions.}
\usage{rm_undocumented(pkg)}
\description{Remove Rd files for the undocumented functions.
Usually roxygen will generate Rd files even for the undocumented functions, and
the \command{name} and \command{title} tags of such files will be the same.
This function removes all such Rd files under the 'man' directory.}
\value{\code{NULL} (if such Rd files exist, there will be messages printed in the
console showing which files are deleted)}
\author{Yihui Xie <\url{http://yihui.name}>}
\arguments{\item{pkg}{the directory of the source package}}
