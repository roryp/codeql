// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from CastExpr x, int getNumberOfAttrs, string hasExpr, string hasTy
where
  toBeTested(x) and
  not x.isUnknown() and
  getNumberOfAttrs = x.getNumberOfAttrs() and
  (if x.hasExpr() then hasExpr = "yes" else hasExpr = "no") and
  if x.hasTy() then hasTy = "yes" else hasTy = "no"
select x, "getNumberOfAttrs:", getNumberOfAttrs, "hasExpr:", hasExpr, "hasTy:", hasTy