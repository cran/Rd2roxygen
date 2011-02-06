\name{rm_undocumented}
\alias{rm_undocumented}
\title{Remove Rd files for the undocumented functions}
\usage{rm_undocumented(pkg)

}
\description{
Usually roxygen will generate Rd files even for the undocumented functions, and
the \command{name} and \command{title} tags of such files will be the same.
This function removes all such Rd files under the 'man' directory.}
\value{\code{NULL} (if such Rd files exist, there will be messages printed in the
console showing which files are deleted)}
\author{Yihui Xie <\url{http://yihui.name}>}
\note{We can also specify the tag '@nord' to suppress Rd creation, in which case
we have to use Rd2 in roxygen (this defaults to be \code{FALSE} but was changed
to default to \code{TRUE} in \code{\link{rab}}).}
\arguments{\item{pkg}{the directory of the source package}
}
