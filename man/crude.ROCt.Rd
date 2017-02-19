\name{crude.ROCt}
\alias{crude.ROCt}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Time-Dependent ROC Curves With Right Censored Data.
}
\description{
This function performs the characteristics of a time-dependent ROC curve based on k-nearest neighbor's (knn) estimator or only based on the Kaplan and Meier estimator.
}
\usage{
crude.ROCt(times, failures, variable, pro.time, cut.off, estimator, prop)
}
\arguments{
  \item{times}{A numeric vector with the follow up times.}
  \item{failures}{A numeric vector with the event indicator (0=right censored, 1=event).}
  \item{variable}{A numeric vector with the prognostic variable. This variable is collected at the baseline.}
  \item{pro.time}{The value of prognostic time represents the maximum delay for which the capacity of the variable is evaluated. The same unit than the one used in the argument \code{time}.}
  \item{cut.off}{The cut-off values of the variable used to define the possible binary tests.}
  \item{estimator}{Three possible estimators can be used: 'kaplan-meier', 'akritas' or 'naive'. The naive estimator is selected by default.}
  \item{prop}{This is the unilateral proportion of the nearest neighbors. The estimation will be based on 2*prop (both right and left proportions) of the total sample size. This parameter will only be used if \code{estimator='akritas'}.}
}
\details{
This function computes time-dependent ROC curve with right-censored data. It can use Akritas approach (nearest neighbor's estimation) for ensuring monotone increasing ROC curve, instead of the simple Kaplan-Meier estimator. This Akritas approach may be avoid if the sample size is large because of computing time. Both estimators were defined by Heagerty, Lumley and Pepe (2000). A third alternative is the use of the naive estimator as explained by Blanche, Dartigues and Jacqmin-Gadda (2013). This estimator is less time-consuming compared to the Akritas approach.
}
\value{
\item{table}{This data frame presents the sensitivities and specificities associated with the cut-off values. One can observe NA if the value cannot be computed.}
\item{auc}{The area under the time-dependent ROC curve for a prognostic up to prognostic time.}
\item{missing}{Number of deleted observations due to missing data.}
}
\references{
Heagerty PJ., Lumley T., Pepe MS. (2000) Time-dependent ROC Curves for Censored Survival Data and a Diagnostic Marker. Biometrics, 56, 337-344. <doi:10.1111/j.0006-341X.2000.00337.x>

Blanche P, Dartigues J, Jacqmin-Gadda H. (2013) Review and comparison of roc curve estimators for a time-dependent outcome with marker-dependent censoring. Biometrical Journal, 55, 687-704.  <doi:10.1002/bimj.201200045>
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

age.cut <- quantile(dataDIVAT$ageR, probs=seq(0.1, 0.9, by=0.1))

# the ROC curve (with the naive estimator) to predict the all-cause
# mortality up to the 3000 days

roc1 <- crude.ROCt(times=dataDIVAT$death.time,
 failures=dataDIVAT$death, variable=dataDIVAT$ageR,
 pro.time=3000, cut.off=age.cut, estimator="naive")

# the sensibilities and specificities associated with the cut off values

roc1$table

# the ROC curve (Kaplan-Meier estimator without the knn correction)
# to predict the all-cause mortality up to the 3000 days

# the ROC graph

plot(1-roc1$table$sp, roc1$table$se, ylim=c(0,1), xlim=c(0,1), ylab="sensitivity",
 xlab="1-specificity", type="l", lty=1, col=2, lwd=2)
 
abline(c(0,0), c(1,1), lty=2)

legend("bottomright", paste("Naive, (AUC=", round(roc1$auc, 2), ")", sep=""),
lty=1, lwd=2, col=2)

# the AUC

roc1$auc

AUC(sens=roc1$table$se, spec=roc1$table$sp)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ crude }
