\name{allcause.ROCt}
\alias{allcause.ROCt}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Time-dependent ROC curves with right censored data
}
\description{
This function performs the characteristics of a time-dependent ROC curve based on k-nearest neighbor's (knn) estimator or only based on the Kaplan and Meier estimator.
}
\usage{
allcause.ROCt(times, failures, variable, pro.time, cut.off,
 knn=FALSE, lambda=NULL)
}
\arguments{
  \item{times}{A numeric vector with the follow up times.}
  \item{failures}{A numeric vector with the event indicator (0=right censored, 1=event).}
  \item{variable}{A numeric vector with the prognostic variable. This variable is collected at the baseline.}
  \item{pro.time}{The value of prognostic time represents the maximum delay for which the capacity of the variable is evaluated. The same unit than the one used in the argument \code{time}.}
  \item{cut.off}{The cut-off value(s) of the variable used to define the binary test(s).}
  \item{knn}{A logical value indicating whether k-nearest neighbor's estimator should be used.}
  \item{lambda}{This is the proportion of the nearest neighbors. The estimation will be based on 2*lambda (1 lambda on the left and 1 lambda on the right) of the total sample size. This parameter will only be used in the k-nearest neighbor's estimation (\code{knn=TRUE}).}
}
\details{
This function computes time-dependent ROC curve with right-censoring data. It can use Akritas approach (nearest neighbor's estimation) for ensuring monotone and increasing ROC curve. This Akritas approach may be avoid if the sample size is large because of computing time. The theory was defined by Heagerty, Lumley and Pepe (Biometrics, 2000).
}
\value{
\item{table}{This data frame presents the sensitivities and specificities associated with the cut-off values. One can observe NA if the value cannot be computed.}
\item{auc}{The area under the time-dependent ROC curve for a prognostic up to prognostic time.}
\item{missing}{Number of deleted observations due to missing data.}
}
\references{
Heagerty PJ., Lumley T., Pepe MS. (2000) Time-dependent ROC Curves for Censored Survival Data and a Diagnostic Marker. Biometrics, 56, 337-344.

Akritas MG. (1994) Nearest neighbor estimation of a bivariate distribution under random censoring. Annals of Statistics, 22, 1299-1327.
}
\author{
Y. Foucher <Yohann.Foucher@univ-nantes.fr>
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{

# import and attach the data example

data(dataDIVAT)

# A subgroup analysis to reduce the time needed for this exemple

dataDIVAT <- dataDIVAT[1:400,]

# cut-off values definition (choose more values in prectice)

age.cut <- quantile(dataDIVAT$ageR, probs=seq(0.0, 1.0, by=0.2))

# the ROC curve (with the knn correction) to predict the all-cause
# mortality up to the 3000 days

roc1 <- allcause.ROCt(times=dataDIVAT$death.time,
 failures=dataDIVAT$death, variable=dataDIVAT$ageR,
 pro.time=3000, cut.off=age.cut, lambda=0.05,
 knn=TRUE)

# the sensibilities and specificities associated with the cut off values

roc1$table

# the ROC curve (without the knn correction) to predict the all-cause
# mortality up to the 3000 days

roc2 <- allcause.ROCt(times=dataDIVAT$death.time,
 failures=dataDIVAT$death, variable=dataDIVAT$ageR,
 pro.time=3000, cut.off=age.cut, lambda=NULL,
 knn=FALSE)

# the traditional ROC graph

plot(c(1,1-roc1$table$sp,0), c(1, roc1$table$se, 0), ylim=c(0,1),
 xlim=c(0,1), ylab="sensitivity", xlab="1-specificity",
 type="l", col=2, lty=1, lwd=2)
 
lines(c(1,1-roc2$table$sp,0), c(1,roc2$table$se,0),
 type="l", col=4, lty=2, lwd=2)

abline(c(0,0), c(1,1), lty=2)

legend("bottomright", c(
paste("With knn, (AUC=", round(roc1$auc, 2), ")", sep=""),
paste("Without knn, (AUC=", round(roc2$auc, 2), ")", sep="")),
lty=1:2, lwd=c(2,2), col=c(2,4))

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ROC }
\keyword{ Akritas }
\keyword{ Time-dependent }
