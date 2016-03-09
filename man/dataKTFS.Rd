\name{dataKTFS}
\alias{dataKTFS}
\docType{data}
\title{
A Sample Of The DIVAT cohort (Kidney Transplant Failure Score, KTFS).
}
\description{
A data frame with 2169 French kidney transplant recipients. The time-to-event is the time between the transplantation and the return in dialysis. This time can be right-censored, especially at the time of the patient death with a functioning graft. The KTFS is a score proposed by Foucher et al. (2010) to stratify the recipients according to their risk of return in dialysis.
}
\usage{data(dataKTFS)}
\format{
  A data frame with 2169 observations (raws) with the 3 following variables (columns).
  \describe{
    \item{\code{time}}{This numeric vector represents the follow up time in years (until return in dialyis or censoring)}
    \item{\code{failure}}{This numeric vector represents the graft failure indicator at the follow-up end (1=return, 0=censoring)}
    \item{\code{score}}{This numeric vector represents the KTFS values.}
  }
}
\details{
The immunology and nephrology department of the Nantes University hospital constituted a data bank with the monitoring of medical records for kidney and/or pancreas transplant recipients. The associated software is called DIVAT. Here is the training sample of 2169 patients used for the construction of the KTFS, a scoring system proposed by Foucher et al. (2010) in order to stratify patients according to their risk of return in dialysis. The KTFS is based on 8 parameters collected during the first year post transplantation. Patients with a KTFS value higher than 4.17 were considered at high-risk.
}
\references{
Foucher Y. al. (2010) A clinical scoring system highly predictive of long-term kidney graft survival. Kidney International, 78, 1288-94. <DOI:10.1038/ki.2010.232>
}
\source{
URL: http://www.divat.fr. 
}
\examples{
data(dataKTFS)

### a short summary of the recipient age at the transplantation
summary(dataKTFS$score)

### Kaplan and Meier estimation of the recipient survival
plot(survfit(Surv(time, failure) ~ I(score>4.17), data = dataKTFS),
 xlab="Post transplantation time (in years)", ylab="Patient survival",
 mark.time=FALSE, col=c(2,1), lty=c(2,1))
legend("bottomleft", c("Recipients in the high-risk group",
 "Recipients in the low-risk group"), col=1:2, lty=1:2)
}
\keyword{datasets}
\keyword{Divat}

