thumbnail:
    typst compile --root . --font-path fonts --pages 1 template/report.typ thumbnail.png

install:
    utpm pkg install .

unlink:
    utpm pkg unlink -y @local/sjf-report