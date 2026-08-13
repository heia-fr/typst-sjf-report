# Typst template for a SJF project report

This template is designed to help students create a professional-looking report for their SJF project. It includes a title page, abstract, table of contents, and sections for the main content of the report.

## Installation

This package is not yet published in the Typst _Universe_, but you can easily install it using the [`utpm`](https://github.com/typst-community/utpm) command line tool.

If you cloned this repository, install the package from the local path:

```bash
git clone https://github.com/heia-fr/typst-sjf-report.git
utpm pkg install typst-sjf-report
```

Or install it directly from GitHub:

```bash
utpm pkg install https://github.com/heia-fr/typst-sjf-report.git
```

You can also clone this repository as a submodule in your own project, or just
download the files from `src/` and copy them into your own project.

## Usage

### Initialise a new report

Use the Typst template to scaffold a new project:

```bash
typst init @local/heia-fr/typst-sjf-report my-report
cd my-report
```

### Compile the report

```bash
# Student version (no solutions)
typst compile report.typ
```


## Package information

| Field   | Value                                   |
|---------|-----------------------------------------|
| Name    | `heia-fr/typst-sjf-report`              |
| Version | `0.2.0`                                 |
| License | CC0 1.0 Universal                       |
| Author  | Jacques Supcik <jacques.supcik@hefr.ch> |

## License

This project is licensed under the [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0).

## Example Output

![alt text](thumbnail.png)
