// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from
  MacroRules x, string hasExtendedCanonicalPath, string hasCrateOrigin, int getNumberOfAttrs,
  string hasName, string hasTokenTree, string hasVisibility
where
  toBeTested(x) and
  not x.isUnknown() and
  (
    if x.hasExtendedCanonicalPath()
    then hasExtendedCanonicalPath = "yes"
    else hasExtendedCanonicalPath = "no"
  ) and
  (if x.hasCrateOrigin() then hasCrateOrigin = "yes" else hasCrateOrigin = "no") and
  getNumberOfAttrs = x.getNumberOfAttrs() and
  (if x.hasName() then hasName = "yes" else hasName = "no") and
  (if x.hasTokenTree() then hasTokenTree = "yes" else hasTokenTree = "no") and
  if x.hasVisibility() then hasVisibility = "yes" else hasVisibility = "no"
select x, "hasExtendedCanonicalPath:", hasExtendedCanonicalPath, "hasCrateOrigin:", hasCrateOrigin,
  "getNumberOfAttrs:", getNumberOfAttrs, "hasName:", hasName, "hasTokenTree:", hasTokenTree,
  "hasVisibility:", hasVisibility