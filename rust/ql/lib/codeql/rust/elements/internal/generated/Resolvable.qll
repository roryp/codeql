// generated by codegen, do not edit
/**
 * This module provides the generated definition of `Resolvable`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.AstNodeImpl::Impl as AstNodeImpl

/**
 * INTERNAL: This module contains the fully generated definition of `Resolvable` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * Either a `Path`, or a `MethodCallExpr`.
   * INTERNAL: Do not reference the `Generated::Resolvable` class directly.
   * Use the subclass `Resolvable`, where the following predicates are available.
   */
  class Resolvable extends Synth::TResolvable, AstNodeImpl::AstNode {
    /**
     * Gets the resolved path of this resolvable, if it exists.
     *
     * INTERNAL: Do not use.
     */
    string getResolvedPath() {
      result = Synth::convertResolvableToRaw(this).(Raw::Resolvable).getResolvedPath()
    }

    /**
     * Holds if `getResolvedPath()` exists.
     * INTERNAL: Do not use.
     */
    final predicate hasResolvedPath() { exists(this.getResolvedPath()) }

    /**
     * Gets the resolved crate origin of this resolvable, if it exists.
     *
     * INTERNAL: Do not use.
     */
    string getResolvedCrateOrigin() {
      result = Synth::convertResolvableToRaw(this).(Raw::Resolvable).getResolvedCrateOrigin()
    }

    /**
     * Holds if `getResolvedCrateOrigin()` exists.
     * INTERNAL: Do not use.
     */
    final predicate hasResolvedCrateOrigin() { exists(this.getResolvedCrateOrigin()) }
  }
}