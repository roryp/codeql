// generated by codegen, do not edit
/**
 * This module provides the generated definition of `ReturnTypeSyntax`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.AstNodeImpl::Impl as AstNodeImpl

/**
 * INTERNAL: This module contains the fully generated definition of `ReturnTypeSyntax` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A ReturnTypeSyntax. For example:
   * ```rust
   * todo!()
   * ```
   * INTERNAL: Do not reference the `Generated::ReturnTypeSyntax` class directly.
   * Use the subclass `ReturnTypeSyntax`, where the following predicates are available.
   */
  class ReturnTypeSyntax extends Synth::TReturnTypeSyntax, AstNodeImpl::AstNode {
    override string getAPrimaryQlClass() { result = "ReturnTypeSyntax" }
  }
}