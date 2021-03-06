\name{SensibleHeat}
\alias{SensibleHeat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Sensible Heat Exchange
}
\description{
Sensible heat exchange between a surface and the surrounding air [kJ m-2 d-1]

%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
SensibleHeat(surftemp, airtemp, wind)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{surftemp}{
 surface temperature [C]
%%     ~~Describe \code{surftemp} here~~
}
  \item{airtemp}{
 average dailiy air temperature [C]
%%     ~~Describe \code{airtemp} here~~
}
  \item{wind}{
 average daily windspeed [m/s]
}
}
\author{
M. Todd Walter
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(surftemp,airtemp,wind){
# sensible heat exchange between a surface and the surrounding air [kJ m-2 d-1]

#surftemp: surface temperature [C]
#airtemp: average dailiy air temperature [C]
#wind: average daily windspeed [m/s]

latentht<-2500 #latent heat of vaporization [kJ kg-1]

heatcapacity<-1.25 #approx. heat capacity of air [kJ m-3 C-1]

windfunction<-5.3*(1+wind)

return(86400*heatcapacity*(surftemp-airtemp)*windfunction/latentht)
  }
}
