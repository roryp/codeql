// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from TuplePat x, int getNumberOfFields
where
  toBeTested(x) and
  not x.isUnknown() and
  getNumberOfFields = x.getNumberOfFields()
select x, "getNumberOfFields:", getNumberOfFields