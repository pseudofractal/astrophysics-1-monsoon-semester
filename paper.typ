#import "lib.typ": report

#show: report.with(
  title: [Dark Energy and Cosmic Expansion],
  author: "Kshitish Kumar Ratha",
  date: datetime(year: 2025, day: 5, month: 11),
  abstract: [
    The discovery that the universe is undergoing accelerated expansion has reshaped modern cosmology.
    Observations of distant Type Ia supernovae, corroborated by measurements of the cosmic microwave
    background and large-scale structure, imply that nearly seventy percent of the cosmic energy density
    exists in an unknown form, that we have taken to call dark energy. This term paper reviews the historical
    development of the idea, the standard cosmological framework leading to the acceleration condition, 
    the observational probes confirming it, and the theoretical attempts to explain the phenomenon within
    and beyond general relativity.
  ],
  bibliography: bibliography("bibliography.yml", full: true, style: "spie"),
)

