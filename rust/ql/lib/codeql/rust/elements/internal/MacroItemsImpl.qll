// generated by codegen, remove this comment if you wish to edit this file
/**
 * This module provides a hand-modifiable wrapper around the generated class `MacroItems`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.rust.elements.internal.generated.MacroItems

/**
 * INTERNAL: This module contains the customizable definition of `MacroItems` and should not
 * be referenced directly.
 */
module Impl {
  /**
   * A sequence of items generated by a `MacroCall`. For example:
   * ```rust
   * mod foo{
   *     include!("common_definitions.rs");
   * }
   * ```
   */
  class MacroItems extends Generated::MacroItems { }
}