#let std-bibliography = bibliography
#let stroke-color = rgb(76, 79, 105)
#let fill-color = rgb(239, 241, 245)

#let report(
  // The title for your work.
  title: [Your Title],
  // Author's name.
  author: "Author",
  // The paper size to use.
  paper-size: "a4",
  // Date that will be displayed on cover page.
  // The value needs to be of the 'datetime' type.
  // More info: https://typst.app/docs/reference/foundations/datetime/
  // Example: datetime(year: 2024, month: 03, day: 17)
  date: none,
  // Format in which the date will be displayed on cover page.
  // More info: https://typst.app/docs/reference/foundations/datetime/#format
  // The default format will display date as: MMMM DD, YYYY
  date-format: "[month repr:long] [day padding:zero], [year repr:full]",
  // An abstract for your work. Can be omitted if you don't have one.
  abstract: none,
  // The result of a call to the `outline` function or `none`.
  // Set this to `none`, if you want to disable the table of contents.
  // More info: https://typst.app/docs/reference/model/outline/
  table-of-contents: outline(),
  // Display an appendix after the body but before the bibliography.
  appendix: (
    enabled: false,
    title: "",
    heading-numbering-format: "",
    body: none,
  ),
  // The result of a call to the `bibliography` function or `none`.
  // Example: bibliography("refs.bib")
  // More info: https://typst.app/docs/reference/model/bibliography/
  bibliography: none,
  // Whether to start a chapter on a new page.
  chapter-pagebreak: true,
  // Whether to display a blue arrow next to external links.
  external-link-arrow: true,
  // Display an index of figures (images).
  figure-index: (
    enabled: false,
    title: "",
  ),
  // Display an index of tables
  table-index: (
    enabled: false,
    title: "",
  ),
  // Display an index of listings (code blocks).
  listing-index: (
    enabled: false,
    title: "",
  ),
  // The content of your work.
  body,
) = {
  set document(title: title, author: author)
  set text(size: 12pt)

  // You need Ioveska font installed to use this template.
  show raw: set text(size: 9pt)

  set page(
    paper: paper-size,
    margin: (bottom: 1.75cm, top: 2.25cm),
    fill: fill-color,
  )

  page(
    align(
      left + horizon,
      block(width: 95%)[
        #let v-space = v(2em, weak: true)
        #text(3em)[*#title*]

        #v-space
        #text(1.6em, author)

        #if abstract != none {
          v-space
          block(width: 85%)[
            #par(leading: 0.78em, justify: true, linebreaks: "optimized", abstract)
          ]
        }

        #if date != none {
          v-space
          text(date.display(date-format))
        }
      ],
    ),
  )

  set par(leading: 0.7em, spacing: 1.35em, justify: true, linebreaks: "optimized")

  show heading: it => {
    it
    v(2%, weak: true)
  }
  show heading: set text(hyphenate: false)

  show link: it => {
    it
    // Workaround for ctheorems package so that its labels keep the default link styling.
    if external-link-arrow and type(it.dest) != label {
      sym.wj
      h(1pt)
      sym.wj
      super(box(height: 3pt, text(stroke: 0.8pt + rgb(114, 135, 253))[\u{2197}]))
      h(1.5pt)
    }
  }

  if table-of-contents != none {
    table-of-contents
  }

  set page(
    footer: context {
      let current_page_number = counter(page).at(here()).first()

      let is-odd = calc.odd(current_page_number)
      let alignment = if is-odd {
        right
      } else {
        left
      }

      // Page that starts a chapter.
      let target = heading.where(level: 1)
      if query(target).any(it => it.location().page() == current_page_number) {
        return align(alignment)[#current_page_number]
      }

      // Find the chapter of the section we are currently in.
      let before = query(target.before(here()))
      if before.len() > 0 {
        let current = before.last()
        let gap = 1.75em
        let chapter = upper(text(size: 0.68em, current.body))
        if current.numbering != none {
          if is-odd {
            align(alignment)[#chapter #h(gap) #current_page_number]
          } else {
            align(alignment)[#current_page_number #h(gap) #chapter]
          }
        }
      }
    },
  )

  set math.equation(numbering: "(1)")

  show raw.where(block: false): box.with(
    fill: fill-color.darken(2%),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )
  show raw.where(block: true): block.with(inset: (x: 5pt))

  show figure.where(kind: table): set block(breakable: true)
  set table(
    inset: 7pt,
    stroke: (0.5pt + stroke-color),
  )
  show table.cell.where(y: 0): smallcaps

  // Seperate context for body.
  {
    set heading(numbering: "1.")

    show heading.where(level: 1): it => {
      if chapter-pagebreak {
        pagebreak(weak: true)
      }
      it
    }
    body
  }

  if appendix.enabled {
    pagebreak()
    heading(level: 1)[#appendix.at("title", default: "Appendix")]

    // For heading prefixes in the appendix, the standard convention is A.1.1.
    let num-fmt = appendix.at("heading-numbering-format", default: "A.1.1.")

    counter(heading).update(0)
    set heading(
      outlined: false,
      numbering: (..nums) => {
        let vals = nums.pos()
        if vals.len() > 0 {
          let v = vals.slice(0)
          return numbering(num-fmt, ..v)
        }
      },
    )

    appendix.body
  }

  if bibliography != none {
    pagebreak()
    show std-bibliography: set text(0.85em)
    show std-bibliography: set par(leading: 0.65em, justify: false, linebreaks: auto)
    bibliography
  }

  // Display indices of figures, tables, and listings.
  let fig-t(kind) = figure.where(kind: kind)
  let has-fig(kind) = counter(fig-t(kind)).get().at(0) > 0
  if figure-index.enabled or table-index.enabled or listing-index.enabled {
    show outline: set heading(outlined: true)
    context {
      let imgs = figure-index.enabled and has-fig(image)
      let tbls = table-index.enabled and has-fig(table)
      let lsts = listing-index.enabled and has-fig(raw)
      if imgs or tbls or lsts {
        // Note that we pagebreak only once instead of each each individual index. This is
        // because for documents that only have a couple of figures, starting each index
        // on new page would result in superfluous whitespace.
        pagebreak()
      }

      if imgs {
        outline(
          title: figure-index.at("title", default: "Index of Figures"),
          target: fig-t(image),
        )
      }
      if tbls {
        outline(
          title: table-index.at("title", default: "Index of Tables"),
          target: fig-t(table),
        )
      }
      if lsts {
        outline(
          title: listing-index.at("title", default: "Index of Listings"),
          target: fig-t(raw),
        )
      }
    }
  }
}
