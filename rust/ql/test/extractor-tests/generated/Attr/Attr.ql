// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from Attr x, string hasMeta
where
  toBeTested(x) and
  not x.isUnknown() and
  if x.hasMeta() then hasMeta = "yes" else hasMeta = "no"
select x, "hasMeta:", hasMeta