// generated by codegen, do not edit
/**
 * This module provides the generated definition of `InferType`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.TypeRefImpl::Impl as TypeRefImpl

/**
 * INTERNAL: This module contains the fully generated definition of `InferType` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A InferType. For example:
   * ```rust
   * todo!()
   * ```
   * INTERNAL: Do not reference the `Generated::InferType` class directly.
   * Use the subclass `InferType`, where the following predicates are available.
   */
  class InferType extends Synth::TInferType, TypeRefImpl::TypeRef {
    override string getAPrimaryQlClass() { result = "InferType" }
  }
}