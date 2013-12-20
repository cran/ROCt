\name{ROCt-package}
\alias{ROCt-package}
\alias{ROCt-package}
\docType{package}
\title{
Time-dependent ROC curves estimation
}
\description{
Compute time-dependent ROC curve using Kaplan-Meier (KM) estimator or the k-nearest neighbor's (KNN) adaptation. Both approaches are developed for traditional survival analysis (all-cause analysis) and for the the additive relative survival analysis.
}
\details{
\tabular{ll}{
 \tab  \cr
Package: \tab ROCt\cr
Type: \tab Package\cr
Version: \tab 0.8\cr
Date: \tab 2013-12-20\cr
License: \tab GPL (>=2)\cr
LazyLoad: \tab yes\cr
}
Compute time-dependent ROC curve using Kaplan-Meier (KM) or the k-nearest neighbor's (KNN) adaptation. Both approaches are developed for traditional survival analysis (all-cause analysis) and for the additive relative survival analysis:
\tabular{rl}{
allcause.ROCt \tab This function performs the characteristics of a time-dependent ROC curve.\cr
net.ROCt \tab This function performs the characteristics of a net time-dependent ROC curve .\cr
}
}
\author{
Y. Foucher <Yohann.Foucher@univ-nantes.fr>
}
\references{
Heagerty PJ., Lumley T., Pepe MS. (2000) Time-dependent ROC Curves for Censored Survival Data and a Diagnostic Marker. Biometrics, 56, 337-344.

Pohar M., Stare J. (2006) Relative survival analysis in R. Computer methods and programs in biomedicine, 81, 272-278.

Pohar M., Stare J., Esteve J. (2012) On Estimation in Relative Survival. Biometrics, 68, 113-120.

Akritas MG. (1994) Nearest neighbor estimation of a bivariate distribution under random censoring. Annals of Statistics, 22, 1299-1327.

Lorent M., Giral M., Foucher Y. (2013) Net time-dependent ROC curves: a solution for evaluating the accuracy of a marker to predict disease-related mortality. Statistics in Medicine. In press.
}
\keyword{ ROC }

\seealso{
URL: http://www.divat.fr
}
