// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from PtrType x, string isConst, string isMut, string hasTy
where
  toBeTested(x) and
  not x.isUnknown() and
  (if x.isConst() then isConst = "yes" else isConst = "no") and
  (if x.isMut() then isMut = "yes" else isMut = "no") and
  if x.hasTy() then hasTy = "yes" else hasTy = "no"
select x, "isConst:", isConst, "isMut:", isMut, "hasTy:", hasTy