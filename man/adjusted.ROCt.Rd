\name{adjusted.ROCt}
\alias{adjusted.ROCt}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Confounders-Adjusted Time-Dependent ROC Curves With Right Censored Data.
}
\description{
This function allows for the estimation of time-dependent ROC curve by taking into account possible confounding factors. Two methods are implemented: i) the standardized and weighted ROC based on an IPW estimator, and ii) the placement values ROC.
}
\usage{
adjusted.ROCt(times, failures, variable, confounders, database,
 pro.time, precision)
}
\arguments{
  \item{times}{A character string with the name of the variable in \code{database} which represents the follow up times.}
  \item{failures}{A character string with the name of the variable in \code{database} which represents the event indicator (0=right censored, 1=event).}
  \item{variable}{A character string with the name of the variable in \code{database} which represents the prognostic variable under interest. This variable is collected at the baseline. The variable must be previously standardized according to the covariates among the controls as proposed by Le Borgne et al. (2017).}
  \item{confounders}{An object of class "formula". More precisely only the right part with an expression of the form \code{~ model}, where \code{model} is the linear predictor of the logistic regressions performed for each cut-off value. The user can use \code{~1} to obtain the crude estimation.}
  \item{database}{An object of the class \code{data.frame} containing the variables previously detailed.}
  \item{pro.time}{The value of prognostic time represents the maximum delay for which the capacity of the variable is evaluated. The same unit than the one used in the argument \code{times}.}
  \item{precision}{The quintiles (between 0 and 1) of the prognostic variable used for computing each point of the time dependent ROC curve. 0 (min) and 1 (max) are not allowed.}
}
\details{
This function computes confounder-adjusted time-dependent ROC curve with right-censored data. We adapted the naive IPCW estimator as explained by Blanche, Dartigues and Jacqmin-Gadda (2013) by considering the probability of experiencing the event of interest before the fixed prognostic time, given the possible confounding factors.
}
\value{
\item{table}{This data frame presents the sensitivities and specificities associated with the cut-off values.}
\item{auc}{The area under the time-dependent ROC curve for a prognostic up to \code{pro.time}.}
}
\references{
Blanche P, Dartigues J, Jacqmin-Gadda H. (2013) Review and comparison of roc curve estimators for a time-dependent outcome with marker-dependent censoring. Biometrical Journal, 55, 687-704. <doi:10.1002/bimj.201200045>

Le Borgne F. et al. (2017) Standardized and weighted time-dependent ROC curves to evaluate the intrinsic prognostic capacities of a marker by taking into account confounding factors. Manuscript submitted.
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

# The standardized and weighted time-dependent ROC curve to evaluate the
# capacities of the recipient age for the prognosis of post kidney
# transplant mortality up to 2000 days by taking into account the
# donor age and the recipient gender.

# 1. Standardize the marker according to the covariates among the controls
lm1 <- lm(ageR ~ ageD + sexeR, data=dataDIVAT[dataDIVAT$death.time >= 2500,])
dataDIVAT$ageR_std <- (dataDIVAT$ageR - (lm1$coef[1] + lm1$coef[2] * dataDIVAT$ageD +
 lm1$coef[3] * dataDIVAT$sexeR)) / sd(lm1$residuals)

# 2. Compute the sensitivity and specificity from the proposed IPW estimators
roc2 <- adjusted.ROCt(times="death.time", failures="death", variable="ageR_std",
confounders=~bs(ageD, df=3) + sexeR, database=dataDIVAT, pro.time=2000,
precision=seq(0.1,0.9, by=0.2))
# The corresponding ROC graph
plot(1-roc2$table$sp, roc2$table$se, ylim=c(0,1), xlim=c(0,1), ylab="sensitivity",
xlab="1-specificity", type="l", lty=1, col=1, lwd=2)
abline(c(0,0), c(1,1), lty=2)
# The corresponding AUC
roc2$auc}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ adjusted }
