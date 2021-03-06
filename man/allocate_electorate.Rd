% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interpolation.R
\name{allocate_electorate}
\alias{allocate_electorate}
\title{Determine which electoral division contains the centroid from each of the Census polygons.}
\usage{
allocate_electorate(centroids_ls, electorates_sf, census_year = NA,
  election_year = NA)
}
\arguments{
\item{centroids_ls}{list containing centroids as SpatialPoints and a dataframe with
basic data on each polygon (e.g. name)}

\item{electorates_sf}{shapefile with electoral boundaries}

\item{census_year}{census year}

\item{election_year}{election year}
}
\value{
data frame detailing which electoral division each Census polygon is allocated to
}
\description{
Using the electoral boundaries at the time of an election and the centroids from the SA1
polygons from a neighbouring Census, allocate each SA1 to the electoral division that contains
its centroid.
}
\examples{
\dontrun{
# Mapping each SA1 from the 2011 Census to the 2013 electoral boundaries
mapping_c11_e13 <- allocate_electorate(centroids_ls = centroids_sa1_2011, electorates_sf = sF_13, 
census_year = "2011", election_year = "2013")
}
}
