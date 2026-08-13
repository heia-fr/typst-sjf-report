// SPDX-FileCopyrightText: 2026 Jacques Supcik <jacques.supcik@hes-so.ch>
//
// SPDX-License-Identifier: CC0-1.0

#import "@local/sjf-report:0.2.0": report
#import "@preview/muchpdf:0.1.2": muchpdf

#set text(font: "Fira Sans", weight: "light", lang: "en", size: 12pt)
#show raw: set text(font: "Fira Code")

#set document(title: [
  The influence of octane on engine performance in modern cars
])

#let authors = (
  ("D. Volvo", "College of Northern Cars, Göteborg, Sweden"),
  ("F. Ferrari", "School of Southern Cars, Maranello, Italy"),
  ("M. Skoda", "Institute of Eastern Cars, Mladá Boleslav, Czech Republic"),
)

#show: report.with(
  authors: authors,
  supervisor: [Battista Pininfarina],
  date: [4 August 2026],
  picture: image("pexels-artempodrez-8985510.jpg", width: 100%),
)

#heading(numbering: none)[Abstract]

#lorem(50)

= Introduction/Question
#lorem(20)

= Materials & Methods
#lorem(20)

= Results
#lorem(20)

= Discussion
#lorem(100)

= Acknowledgements
#lorem(20)

#heading(numbering: none)[References]
