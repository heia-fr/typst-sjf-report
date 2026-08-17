// SPDX-FileCopyrightText: 2026 Jacques Supcik <jacques.supcik@hes-so.ch>
//
// SPDX-License-Identifier: CC0-1.0

#import "@local/sjf-report:0.3.0": poster

#set text(font: "Liberation Sans")

#show: poster.with(
  school_logo: image("img/logo_heiafr.svg", width: 300mm),
  title: [Myths and reality about $e=m c^2$],
  names_and_schools: [Albert Einstein, ETH Zürich],
  supervisor: [Marie Curie, ETH Zürich],
)

#v(30mm)

#lorem(100)
