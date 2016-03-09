\name{AUC}
\alias{AUC}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Area Under ROC Curve From Sensitivities And Specificities.
}
\description{
This function computes the area under ROC curve by using the trapezoidal rule.
}
\usage{
AUC(sens, spec)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{sens}{A numeric vector with the sensitivities}
  \item{spec}{A numeric vector with the sensitivities}
  }
\details{
This function computes the area under ROC curve using the trapezoidal rule. The value of the area is directly returned.
}
\author{
Y. Foucher <Yohann.Foucher@univ-nantes.fr>
}

\examples{

se.temp <- c(0, 0.5, 0.5, 1)
sp.temp <- c(1, 0.5, 0.5, 0)
AUC(se.temp, sp.temp)

}

\keyword{ AUC }
