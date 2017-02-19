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
Version: \tab 0.9.5\cr
Date: \tab 2017-02-17\cr
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
Heagerty PJ., Lumley T., Pepe MS. (2000) Time-dependent ROC Curves for Censored Survival Data and a Diagnostic Marker. Biometrics, 56, 337-344. <doi:10.1111/j.0006-341X.2000.00337.x>

Lorent M., Giral M., Foucher Y. (2013) Net time-dependent ROC curves: a solution for evaluating the accuracy of a marker to predict disease-related mortality. Statistics in Medicine, 33, 2379-89. <doi:10.1002/sim.6079>

Dantan E., Foucher Y., Lorent M., Giral M., Tessier P. (2016) Optimal threshold estimator of a prognostic marker by maximizing a time-dependent expected utility function for a patient-centered stratified medicine. Statistical Methods in Medical Research, 0, 1-13. <doi:10.1177/  0962280216671161>

Le Borgne F. et al. (2017) Standardized and weighted time-dependent ROC curves to evaluate the intrinsic prognostic capacities of a marker by taking into account confounding factors. Manuscript submitted.
}
