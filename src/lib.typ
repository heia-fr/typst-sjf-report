// SPDX-FileCopyrightText: 2026 Jacques Supcik <jacques.supcik@hes-so.ch>
//
// SPDX-License-Identifier: CC0-1.0

#set text(font: "Fira Sans", weight: "light", lang: "en", size: 12pt)
#let report(
  authors: (),
  supervisor: [Battista Pininfarina],
  date: [30 September 2017],
  picture: none,
  doc,
) = {
  set page(
    margin: (top: 3.5cm),
    background: {
      place(
        top + left,
        image("img/sjf_logo.svg", width: 7cm),
      )
    },
  )
  v(.5cm)

  text(size: 14pt, weight: "regular", [PROJECT REPORT])
  linebreak()
  text(size: 14pt, [STUDY WEEK "Coding Camp"])

  show title: it => {
    set text(size: 17pt, weight: "regular")
    set par(leading: 0.5em)
    it
  }
  title()

  if picture != none {
    align(center, picture)
  }

  let authorNames = authors.map(it => it.at(0))
  let authorOrgs = authors.map(it => it.at(1))

  set text(weight: "regular")
  text(
    authorNames
      .enumerate(start: 1)
      .map(it => it.at(1) + super([#it.at(0)]))
      .join(", ", last: " & "),
  )

  parbreak()

  text(authorOrgs.enumerate(start: 1).map(it => super([#it.at(0)]) + it.at(1)).join(", "))

  set par(spacing: 1.7em)
  counter(footnote).update(authors.len())
  parbreak()
  text[Supervised by: #supervisor]
  parbreak()
  text[Date: #date]
  parbreak()

  set heading(numbering: "1.")
  show heading: set text(
    size: .8em,
    weight: "regular",
  )
  set text(weight: "light")

  doc
}
