// generated by codegen, remove this comment if you wish to edit this file
/**
 * This module provides a hand-modifiable wrapper around the generated class `AsmExpr`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.rust.elements.internal.generated.AsmExpr

/**
 * INTERNAL: This module contains the customizable definition of `AsmExpr` and should not
 * be referenced directly.
 */
module Impl {
  /**
   * An inline assembly expression. For example:
   * ```rust
   * unsafe {
   *     builtin # asm(_);
   * }
   * ```
   */
  class AsmExpr extends Generated::AsmExpr { }
}