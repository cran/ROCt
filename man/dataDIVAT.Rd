\name{dataDIVAT}
\alias{dataDIVAT}
\docType{data}
\title{
A Sample Of The DIVAT Cohort (Mortality).
}
\description{
A data frame with 4267 French kidney transplant recipients. The time-to-event is the time between the transplantation and the recipient death. This time can be right-censored. A vector of covariates is also collected at the transplantation.
}
\usage{data(dataDIVAT)}
\format{
  A data frame with 4267 observations (raws) with the 8 following variables (columns).
  \describe{
    \item{\code{ageR}}{This numeric vector represents the age of the recipient (in years)}
    \item{\code{sexeR}}{This numeric vector represents the gender of the recipient (1=men, 0=female)}
    \item{\code{year.tx}}{This numeric vector represents the year of the transplantation}
    \item{\code{ante.diab}}{This numeric vector represents the diabetes statute (1=yes, 0=no)}
    \item{\code{pra}}{This numeric vector represents the pre-graft immunization using the panel reactive antibody (1=detectable, 0=undetectable)}
    \item{\code{ageD}}{This numeric vector represents the age of the donor (in years)}
    \item{\code{death.time}}{This numeric vector represents the follow up time in days (until death or censoring)}
    \item{\code{death}}{This numeric vector represents the death indicator at the follow-up end (1=death, 0=alive)}
  }
}
\details{
The immunology and nephrology department of the Nantes University hospital constituted a data bank with the monitoring of medical records for kidney and/or pancreas transplant recipients. The associated software is called DIVAT. Here is a sample of 4267 patients. The time-to-event is the time between the transplantation and the death of the recipient. This time can be right-censored. A vector of covariates, all measured at the transplantation, is also collected for each patient.
}
\source{ URL: http://www.divat.fr }
\examples{
data(dataDIVAT)

### a short summary of the recipient age at the transplantation
summary(dataDIVAT$ageR)

### Kaplan and Meier estimation of the recipient survival
plot(survfit(Surv(death.time/365.25, death) ~ 1, data = dataDIVAT),
 xlab="Post transplantation time (in years)", ylab="Patient survival",
 mark.time=FALSE)
}

\keyword{ dataset }

