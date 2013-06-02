Git Extensions Manual
=====================
This repository contains the new Git extensions Manual. Feel free to help us improve this manual by sending pull requests
or by opening issues.

View Online
-----------
The current documentation can be viewed here: https://gitextensions.readthedocs.org/en/latest/
and downloaded as PDF here: https://readthedocs.org/projects/gitextensions/downloads/

Build
-----
### HTML
Simply run `make.cmd html`.

### HTML Help Files
Download HTML Help Workshop (http://www.microsoft.com/en-us/download/details.aspx?id=21138).

To build the file, use `makeHTMLHelp.cmd`

### PDF
To use the PDF builder, you'll need to install:

* rst2pdf `easy_install rst2pdf`
* pil `easy_install pil`

Also add `,'rst2pdf.pdfbuilder'` to the source/conf.py file at the line 28. Then run `make.cmd pdf`.
