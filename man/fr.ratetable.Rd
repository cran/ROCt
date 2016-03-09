\name{fr.ratetable}
\alias{fr.ratetable}
\docType{data}
\title{
Expected Mortality Rates Of The General French Population.
}
\description{
An object of class ratetable for the expected mortality of the French population. It is an array with three dimensions: age, sex and year.
}
\usage{data(fr.ratetable)}
\format{
 The format is "ratetable". The attributes are:
 \describe{
 \item{\code{dim}}{A numeric vector with the length of each dimension.}
 \item{\code{dimnames}}{A list of vectors with the names of each variable of the three dimensions.}
 \item{\code{dimid}}{A character vector with the identification of the dimensions: \code{age}, \code{year} and \code{sex}.}
 \item{\code{factor}}{A vector of indicators=1 if the corresponding dimension do not vary according to the \code{time}. Only the \code{sex} is associated to 1.}
 \item{\code{cutpoints}}{A list of the thresholds to identify the mortality rates according to the time-varying dimensions (NULL for \code{sex}).}
 \item{\code{class}}{The class of the object: \code{ratetable}.}
 }
}
\details{
The organization of a ratetable object is described in details by Therneau (1999) and Pohar (2006).
}
\source{
The original data and updates can be downloaded from the Human Life-Table Database (HMD, The Human Mortality Database). URL: http://www.mortality.org/
}
\references{
Pohara M., Stare J. Relative survival analysis in R. Computer methods and programs in biomedicine, 81: 272-278, 2006. <DOI:10.1016/j.cmpb.2006.01.004>
}
\examples{
data(fr.ratetable)

is.ratetable(fr.ratetable)

}
\keyword{datasets}
\keyword{France}
\keyword{ratetable}
