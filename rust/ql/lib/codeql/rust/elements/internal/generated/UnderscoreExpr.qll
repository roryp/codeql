// generated by codegen, do not edit
/**
 * This module provides the generated definition of `UnderscoreExpr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.Attr
import codeql.rust.elements.internal.ExprImpl::Impl as ExprImpl

/**
 * INTERNAL: This module contains the fully generated definition of `UnderscoreExpr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * An underscore expression. For example:
   * ```rust
   * _ = 42;
   * ```
   * INTERNAL: Do not reference the `Generated::UnderscoreExpr` class directly.
   * Use the subclass `UnderscoreExpr`, where the following predicates are available.
   */
  class UnderscoreExpr extends Synth::TUnderscoreExpr, ExprImpl::Expr {
    override string getAPrimaryQlClass() { result = "UnderscoreExpr" }

    /**
     * Gets the `index`th attr of this underscore expression (0-based).
     */
    Attr getAttr(int index) {
      result =
        Synth::convertAttrFromRaw(Synth::convertUnderscoreExprToRaw(this)
              .(Raw::UnderscoreExpr)
              .getAttr(index))
    }

    /**
     * Gets any of the attrs of this underscore expression.
     */
    final Attr getAnAttr() { result = this.getAttr(_) }

    /**
     * Gets the number of attrs of this underscore expression.
     */
    final int getNumberOfAttrs() { result = count(int i | exists(this.getAttr(i))) }
  }
}