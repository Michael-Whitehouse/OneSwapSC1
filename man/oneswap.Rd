\name{oneswap}
\alias{oneswap}

\title{
A function to check if a vector can be ordered with at most one swap
}
\description{
A function that takes a vector as an input and outputs TRUE or FALSE depending on whether it can be ordered with at most one swap or not.
}
\usage{
oneswap(x)
}
\arguments{
  \item{x}{ a numeric vector input
}
}
\details{N/A
}
\value{
  \item{TRUE}{If input vector can be ordered with at most one swap}
  \item{FALSE}{If input vector cannot be ordered with at most one swap}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Michael Whitehouse
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x)
{
    for (i in (1:length(x))) {
        for (j in (i:length(x))) {
            y <- x
            y[j] <- x[i]
            y[i] <- x[j]
            if (isTRUE(all.equal(sort(x), y))) {
                return(TRUE)
            }
        }
    }
    return(FALSE)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
