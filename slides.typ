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
  #heading[#text(fill: rgb("#eba0ac"), size: 40pt)[70% of Universe is Missing?]]
  #v(1em)
  Kshitish Kumar Ratha

  #text(size: 20pt)[The past, the present, and the future of dark energy research.]

  #funsies[Look out for these fun bits.]
]
