// generated by codegen, do not edit
/**
 * This module provides the generated definition of `Item`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.StmtImpl::Impl as StmtImpl

/**
 * INTERNAL: This module contains the fully generated definition of `Item` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A Item. For example:
   * ```rust
   * todo!()
   * ```
   * INTERNAL: Do not reference the `Generated::Item` class directly.
   * Use the subclass `Item`, where the following predicates are available.
   */
  class Item extends Synth::TItem, StmtImpl::Stmt {
    /**
     * Gets the extended canonical path of this item, if it exists.
     *
     * Either a canonical path (see https://doc.rust-lang.org/reference/paths.html#canonical-paths),
     * or `{<block id>}::name` for addressable items defined in an anonymous block (and only
     * addressable there-in).
     * INTERNAL: Do not use.
     */
    string getExtendedCanonicalPath() {
      result = Synth::convertItemToRaw(this).(Raw::Item).getExtendedCanonicalPath()
    }

    /**
     * Holds if `getExtendedCanonicalPath()` exists.
     * INTERNAL: Do not use.
     */
    final predicate hasExtendedCanonicalPath() { exists(this.getExtendedCanonicalPath()) }

    /**
     * Gets the crate origin of this item, if it exists.
     *
     * One of `rustc:<name>`, `repo:<repository>:<name>` or `lang:<name>`.
     * INTERNAL: Do not use.
     */
    string getCrateOrigin() { result = Synth::convertItemToRaw(this).(Raw::Item).getCrateOrigin() }

    /**
     * Holds if `getCrateOrigin()` exists.
     * INTERNAL: Do not use.
     */
    final predicate hasCrateOrigin() { exists(this.getCrateOrigin()) }
  }
}