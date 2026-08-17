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
  set text(font: "Fira Sans", weight: "light", size: 10pt)
  set page(
    paper: "a4",
    margin: (
      top: 20mm,
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
    text(weight: "bold", date_location),
  )

  place(
    top + center,
    dx: -0.5mm,
    dy: 10mm,
    text(weight: "semibold", size: 2.5em, fill: rgb("f5a26c"), certificate_title),
  )

  place(
    top + center,
    dx: -0.5mm,
    dy: 28mm,
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

        #align(center, text(size: 1.2em, weight: "bold", [#title]))
        #v(3mm)

        #doc
      ],
    ),
  )

  place(
    bottom + left,
    dx: 129mm,
    block(
      height: 60mm,

      [#set align(top)
        #text(size: 10pt, weight: "bold", fill: rgb("f5a26c"), [SWISS YOUTH IN SCIENCE])\
        #signature],
    ),
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
// ---------- Poster ----------

#let poster(
  title: [#highlight[project title here]],
  school_logo: image("img/logo_heiafr.svg", width: 300mm),
  names_and_schools: [#highlight[names and schools of you or your group]],
  supervisor: [#highlight[name of your supervisor(s)]],
  doc,
) = {
  set page(
    paper: "a0",
    margin: (
      top: 140mm,
      bottom: 12mm,
      left: 44mm,
      right: 44mm,
    ),
    background: align(left + top, image("img/sjf_logo.svg", width: 296mm)),
  )
  set text(size: 40pt)

  place(
    top + right,
    dy: -115mm,
    school_logo,
  )

  place(
    bottom + center,
    dy: -40mm,
    line(
      stroke: 1.5mm,
      length: 104%,
    ),
  )

  place(
    bottom + left,
    {
      set text(size: 36pt)
      align(horizon, stack(
        dir: ltr,
        [
          Many thanks to our\
          main sponsor],
        h(1em),
        image("img/logo_hasler_stiftung.svg", height: 27.5mm),
        h(1fr),
        [
          and proud host of the\
          Closing Ceremony],
        h(1em),
        image("img/HSLU_logo.svg", height: 20.5mm),
      ))
    },
  )
  text(size: 96pt, weight: "bold", title)
  parbreak()
  text(weight: "bold", names_and_schools)
  linebreak()
  text([ Supervised by: #supervisor ])

  align(center, line(stroke: 1.5mm, length: 104%))

  doc
}
