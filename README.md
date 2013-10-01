Oxcelix
=======

Oxcelix - A fast and simple .xlsx file parser

Description
-----------

Oxcelix is an xlsx (Excel 2007/2010) parser. The result of the parsing is a
Workbook which is an array of Sheet objects, which in turn store the data in
Matrix objects. Matrices consist of Cell objects to maintain comments and
formatting/style data

.
Oxcelix uses the great Ox gem (http://rubygems.org/gems/ox) for fast SAX-parsing.

Synopsis
--------

To process an xlsx file:

`require 'oxcelix'`

`w = Oxcelix::Workbook.new('whatever.xlsx')`

To omit certain sheets to be processed:

`w = Oxcelix::Workbook.new('whatever.xlsx', :exclude => ['sheet1', 'sheet2'])`

To include only some of the sheets:

`w = Oxcelix::Workbook.new('whatever.xlsx', :include => ['sheet1', 'sheet2', 'sheet3'])`

To have the values of the merged cells copied over the mergegroup:

`w = Oxcelix::Workbook.new('whatever.xlsx', :mergecells => true)`