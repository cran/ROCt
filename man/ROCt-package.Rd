\name{ROCt-package}
\alias{ROCt-package}
\alias{ROCt-package}
\docType{package}
\title{
Time-Dependent ROC Curve Estimators and Expected Utility Functions.
}
\description{
Compute ROC curve and expected utility for medical decision making, with and without censoring.
}
\details{
\tabular{ll}{
 \tab  \cr
Package: \tab ROCt\cr
Type: \tab Package\cr
Version: \tab 0.9.4\cr
Date: \tab 2016-03-09\cr
License: \tab GPL (>=2)\cr
LazyLoad: \tab yes\cr
}
Several functions are available:
\tabular{rl}{
crude.ROCt \tab This function allows the estimation of a crude time-dependent ROC curve,\cr
 \eqn{ \mbox{ } } \tab respecting the definition proposed by Heagerty et al. (2000). \cr
net.ROCt \tab This function allows the estimation of net time-dependent ROC curve, i.e.\cr
 \eqn{ \mbox{ } } \tab when the only cause of death is due to the disease. \cr
EUt \tab  The expected utility theory allows the estimation of optimal \cr
 \tab cut-of for medical decision making.\cr
AUC \tab  This function computes the area under ROC curve using the trapezoidal rule \cr
 \eqn{ \mbox{ } } \tab based on two vectors of sensitivities and specificities. \cr
adjusted.ROC \tab  This function allows for the estimation of ROC curve by taking into account possible \cr
 \eqn{ \mbox{ } } \tab confounding factors (IPW or placement values estimators). \cr
adjusted.ROCt \tab  This function allows for the estimation of time-dependent ROC curve by taking  \cr
 \eqn{ \mbox{ } } \tab into account possible confounding factors (IPW estimator). \cr 
}
}
\author{
Y. Foucher <Yohann.Foucher@univ-nantes.fr>
}
\references{
Heagerty PJ., Lumley T., Pepe MS. (2000) Time-dependent ROC Curves for Censored Survival Data and a Diagnostic Marker. Biometrics, 56, 337-344.

Lorent M., Giral M., Foucher Y. (2013) Net time-dependent ROC curves: a solution for evaluating the accuracy of a marker to predict disease-related mortality. Statistics in Medicine, 33, 2379-89.

Tessier P. et al. (2015) Threshold definition of a prognostic marker in stratified medicine: An expected utility function for time-to-event data. Manuscript submitted.

Le Borgne F. et al. (2015) Adjusted time-dependent ROC curves. Manuscript submitted.
}
\keyword{ Time-dependent }
\keyword{ ROC }
\keyword{ Utility }
\seealso{
URL: www.divat.fr
}
