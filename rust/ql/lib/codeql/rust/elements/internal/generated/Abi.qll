// generated by codegen, do not edit
/**
 * This module provides the generated definition of `Abi`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.AstNodeImpl::Impl as AstNodeImpl

/**
 * INTERNAL: This module contains the fully generated definition of `Abi` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A Abi. For example:
   * ```rust
   * todo!()
   * ```
   * INTERNAL: Do not reference the `Generated::Abi` class directly.
   * Use the subclass `Abi`, where the following predicates are available.
   */
  class Abi extends Synth::TAbi, AstNodeImpl::AstNode {
    override string getAPrimaryQlClass() { result = "Abi" }

    /**
     * Gets the abi string of this abi, if it exists.
     */
    string getAbiString() { result = Synth::convertAbiToRaw(this).(Raw::Abi).getAbiString() }

    /**
     * Holds if `getAbiString()` exists.
     */
    final predicate hasAbiString() { exists(this.getAbiString()) }
  }
}