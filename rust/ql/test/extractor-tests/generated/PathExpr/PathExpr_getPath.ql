// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from PathExpr x
where toBeTested(x) and not x.isUnknown()
select x, x.getPath()