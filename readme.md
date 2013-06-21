Git Extensions Manual
=====================
This repository contains the new Git extensions Manual. Feel free to help us improve this manual by sending pull requests
or by opening issues.

Refer to the Wiki here: https://github.com/gitextensions/gitextensions/wiki for details on how to update the documentation.

View Online
-----------
The current documentation can be viewed here: https://git-extensions-documentation.readthedocs.org/en/latest/

PDF and other formats can be downloaded here: https://readthedocs.org/projects/git-extensions-documentation/downloads/

**Note:** Only the HTML format is "supported" (i.e. from the display point of view). Other formats might have layout issues
but the content remains the same for all formats, whether or not you build it locally (provided your local clone is 
up to date).

Build
-----

### HTML
Simply run `make-html.cmd`. You can also use `make-singlehtml.cmd` to generate a single HTML
file. The `make_and_start_Browser.cmd` is an alias of `make-html.cmd` that will open in your
default browser the documentation main index.

### HTML Help Files
**Warning:** This format is not completely supported (i.e. you can generate it but we don't 
guarantee as good a display quality as for HTML).

Download HTML Help Workshop (http://www.microsoft.com/en-us/download/details.aspx?id=21138).

To build the file, use `make-HTMLHelp.cmd`

### PDF
**Warning:** This format is not completely supported (i.e. you can generate it but we don't 
guarantee as good a display quality as for HTML).

To use the PDF builder, you'll need to install:

* rst2pdf `easy_install rst2pdf`
* pil `easy_install pil`

Also add `,'rst2pdf.pdfbuilder'` to the source/conf.py file at the line 28. Then run `make.cmd pdf`.
