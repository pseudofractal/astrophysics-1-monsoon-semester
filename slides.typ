#import "@preview/polylux:0.4.0": *
#import "@preview/physica:0.9.5": *
#set page(paper: "presentation-16-9", fill: rgb("#1e1e2e"))

#set text(size: 25pt, fill: rgb("#cdd6f4"), font: "Maple Mono")
#show heading: set text(fill: rgb("#74c7ec"))

#let emph(term) = text(fill: rgb("#94e2d5"), term)
#let important(term, size: 30pt) = text(fill: rgb("#b4befe"), size ,box(stroke: 2pt + rgb("#94e2d5"), outset: 15pt)[#term])

#let funsies(term) = place(
  bottom + center,
  dx: 0pt, dy: 30pt,
  block(
    width: 100%,
    align(left)[
      #text(
        size: 20pt,
        fill: rgb("#fab387"),
        term
      )
    ]
  )
)

#slide[
  #set align(horizon)
  #heading[#text(fill: rgb("#eba0ac"), size: 40pt)[One Graph Can Change It All.]]
  #v(1em)
  Kshitish Kumar Ratha

  #text(size: 20pt)[On the past, the present, and the future of dark energy research.]

  #funsies[Look out for these fun bits.]
]

#slide[
  == One Graph to Rule Them All
  #figure(
    image("images/scp_residuals.png", height: 65%),
  )
  #set align(center)
  #text(size: 10pt)[Taken from Supernova Cosmology Project (1998)]

  #emph[#text(size: 20pt)[If gravity is attractive, why is expansion accelerating?]]
]

#slide[
  == The Mother of All Cosmology
  #v(2em)
  $
  R_(mu nu) - 1/2 R g_(mu nu) = (8 pi G)/(c^4) T_(mu nu)
  $
  #v(2em)

  Matter and energy shape space-time, space-time curvature guides how matter and energy move.
  #v(0.5em)

  #align(center)[#emph[No Truly Static Configuration Possible!]]
]

#slide[
  == Einstein's Static Universe
  #v(1em)
  $ R_(mu nu) - 1/2 R g_(mu nu) + #text(fill: rgb("#c6a0f6"))[$Lambda g_(mu nu)$] = (8 pi G)/(c^4) T_(mu nu) $
  #v(1em)

  #text(fill: rgb("#c6a0f6"))[$Lambda$] behaves similar to uniform energy density filling the universe.\
  Creates a repulsive gravitational effect.

  #v(1em)
  #set align(center)
  #emph[Balances Attraction $arrow.long$ Static Universe]

  #funsies[Equilibrium is the most fragile state of all \~ Eddington]
]

#slide[
  = Non Static After All
  #v(0.5em)
  Friedmann and Lemaitre abandoned static solutions.
  #v(0.5em)
  Lemaitre predicted linear velocity-distance relation (Hubble's Law) two years before Hubble's observations.
  #v(0.5em)
  Hubble's Data conirmed expansion $arrow.long$ Einstein called $Lambda$ his "biggest blunder".

  #place(
    top + right,
    dx: -165pt,
    dy: -55pt,
    rotate(-15deg)[#image("./images/einstien_sticker.png", height: 4.5em)]
  )
  #funsies[Gamow might have embellished, Einstein just called $Lambda $ ugly.]
]

#slide[
  == The Dormant $Lambda$
  #v(0.35em)
  #set text(size: 23.5pt)
  FLRW Metric:$ d s^2 = - c^2 d t^2 + a(t)^2 [(d r^2)/(1 - k r^2) + r^2 d Omega^2] $
  Friedmann Equations:$
  (dot(a)/ a)^2 &= (8 pi G)/3 rho - (k c^2)/a^2  \
  dot.double(a)/a &= - (4 pi G)/3 (rho + (3 p)/c^2)
  $
  #funsies[Cosmological Constant Problem is still not solved, huff!!]
]

#slide[
  == The Supernova Shock
  #v(0.15em)
  #figure(
    image("images/scp_residuals.png", height: 77.5%),
    caption: [Taken from Supernova Cosmology Project]
  )
]

#slide[
  = $Lambda$'s Second Coming: Dark Energy
  - $Lambda$CDM fits the data but leaves some questions unanswered.
  - Evolving Dark Energy Model $arrow.long$ Dynamic equations of state.
  - Modified Gravity Theories (f(R) gravity) $arrow.long$ Explain acceleration without dark energy.
  #v(0.5em)
  #set align(center)
  #important[The avenues of research are huge, but the mystery of dark energy remains!]

  #funsies[Thus concludes the most introductory talk on Dark Energy.]
]
