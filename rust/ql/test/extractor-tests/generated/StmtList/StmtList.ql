// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from StmtList x, int getNumberOfAttrs, int getNumberOfStatements, string hasTailExpr
where
  toBeTested(x) and
  not x.isUnknown() and
  getNumberOfAttrs = x.getNumberOfAttrs() and
  getNumberOfStatements = x.getNumberOfStatements() and
  if x.hasTailExpr() then hasTailExpr = "yes" else hasTailExpr = "no"
select x, "getNumberOfAttrs:", getNumberOfAttrs, "getNumberOfStatements:", getNumberOfStatements,
  "hasTailExpr:", hasTailExpr