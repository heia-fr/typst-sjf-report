thumbnail:
    typst compile --root . --font-path fonts --pages 1 template/report.typ thumbnail.png

install:
    utpm pkg install .

unlink:
    utpm pkg unlink -y @local/sjf-report

build:
    typst compile --root . --font-path fonts template/report.typ build/report.pdf
    typst compile --root . --font-path fonts template/poster.typ build/poster.pdf
    typst compile --root . --font-path fonts template/diploma.typ build/diploma.pdf