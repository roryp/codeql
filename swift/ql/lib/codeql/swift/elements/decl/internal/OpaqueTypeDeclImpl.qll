// generated by codegen/codegen.py, remove this comment if you wish to edit this file
/**
 * This module provides a hand-modifiable wrapper around the generated class `OpaqueTypeDecl`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.swift.generated.decl.OpaqueTypeDecl

/**
 * INTERNAL: This module contains the customizable definition of `OpaqueTypeDecl` and should not
 * be referenced directly.
 */
module Impl {
  /**
   * A declaration of an opaque type, that is formally equivalent to a given type but abstracts it
   * away.
   *
   * Such a declaration is implicitly given when a declaration is written with an opaque result type,
   * for example
   * ```
   * func opaque() -> some SignedInteger { return 1 }
   * ```
   * See https://docs.swift.org/swift-book/LanguageGuide/OpaqueTypes.html.
   */
  class OpaqueTypeDecl extends Generated::OpaqueTypeDecl { }
}