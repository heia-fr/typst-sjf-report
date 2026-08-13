// SPDX-FileCopyrightText: 2026 Jacques Supcik <jacques.supcik@hes-so.ch>
//
// SPDX-License-Identifier: CC0-1.0

#set text(font: "Fira Sans", weight: "light", lang: "en", size: 12pt)

// ---------- Report ----------

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
    authorNames.enumerate(start: 1).map(it => it.at(1) + super([#it.at(0)])).join(", ", last: " & "),
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

// ---------- Diploma ----------

#let diploma(
  date_location: [_07.02.2020 -- Berne_],
  certificate_title: [TEACHING CERTIFICATE],
  study_week_descr: [Chemistry and Materials Science],
  study_week_year: [2020],
  student_name: [Yoshiki Soda],
  student_title: [Mr.],
  student_role: [supervised],
  title: [Paper-based colorimetric assays],
  camp_dates: [from 2 -- 7 February 2020],
  location: [at the University of Geneva],
  signature: [
    #image("img/signature.svg", width: 40mm)\
    #v(-3em)
    Dr. Victor Varga, Project Manager],

  doc,
) = {
  set text(font: "Fira Sans", weight: "light", size: 8pt)
  set page(
    paper: "a4",
    margin: (
      top: 0mm,
      bottom: 0mm,
      left: 0mm,
      right: 0mm,
    ),
    flipped: true,
    background: image("img/TeachingCertificateBlank.pdf"),
  )

  place(
    top + center,
    dx: -0.5mm,
    dy: 38mm,
    text(weight: "bold", date_location),
  )

  place(
    top + center,
    dx: -0.5mm,
    dy: 48mm,
    text(weight: "semibold", size: 25pt, fill: rgb("f5a26c"), certificate_title),
  )

  place(
    top + center,
    dx: -0.5mm,
    dy: 66mm,
    box(
      width: 125mm,
      height: 100%,
      [
        #set align(left)
        #set par(spacing: 1.5em, justify: true)
        This is to certify that *#student_title #student_name* participated as a student project supervisor in the study
        week *"#study_week_descr"* of the foundation _Swiss Youth in Science_. The study week
        took place #camp_dates #location.
        #v(2mm)

        #student_name #student_role a research project with the title:

        #align(center, text(size: 9pt, weight: "bold", [#title]))
        #v(3mm)

        #doc
      ],
    ),
  )

  place(
    bottom + left,
    dx: 129mm,
    dy: -58mm,
    text(size: 10pt, weight: "bold", fill: rgb("f5a26c"), [SWISS YOUTH IN SCIENCE]),
  )

  place(
    top + center,
    dx: 0mm,
    dy: 155mm,
    signature,
  )

  place(bottom + right, dx: -9mm, dy: -9mm, [
    #set text(size: 16pt, weight: "regular", fill: white)
    #set par(leading: 0.55em)
    STUDIENWOCHE\
    SEMAINE D'ÉTUDES\
    SETTIMANA DI STUDIO\
    #set text(size: 12pt)
    #study_week_descr #study_week_year
  ])
}
