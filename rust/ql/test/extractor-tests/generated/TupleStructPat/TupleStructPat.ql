// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from TupleStructPat x, int getNumberOfFields, string hasPath
where
  toBeTested(x) and
  not x.isUnknown() and
  getNumberOfFields = x.getNumberOfFields() and
  if x.hasPath() then hasPath = "yes" else hasPath = "no"
select x, "getNumberOfFields:", getNumberOfFields, "hasPath:", hasPath