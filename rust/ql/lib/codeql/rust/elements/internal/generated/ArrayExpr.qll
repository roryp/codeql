// generated by codegen, do not edit
/**
 * This module provides the generated definition of `ArrayExpr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.Attr
import codeql.rust.elements.Expr
import codeql.rust.elements.internal.ExprImpl::Impl as ExprImpl

/**
 * INTERNAL: This module contains the fully generated definition of `ArrayExpr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * An array expression. For example:
   * ```rust
   * [1, 2, 3];
   * [1; 10];
   * ```
   * INTERNAL: Do not reference the `Generated::ArrayExpr` class directly.
   * Use the subclass `ArrayExpr`, where the following predicates are available.
   */
  class ArrayExpr extends Synth::TArrayExpr, ExprImpl::Expr {
    override string getAPrimaryQlClass() { result = "ArrayExpr" }

    /**
     * Gets the `index`th attr of this array expression (0-based).
     */
    Attr getAttr(int index) {
      result =
        Synth::convertAttrFromRaw(Synth::convertArrayExprToRaw(this).(Raw::ArrayExpr).getAttr(index))
    }

    /**
     * Gets any of the attrs of this array expression.
     */
    final Attr getAnAttr() { result = this.getAttr(_) }

    /**
     * Gets the number of attrs of this array expression.
     */
    final int getNumberOfAttrs() { result = count(int i | exists(this.getAttr(i))) }

    /**
     * Gets the `index`th expression of this array expression (0-based).
     */
    Expr getExpr(int index) {
      result =
        Synth::convertExprFromRaw(Synth::convertArrayExprToRaw(this).(Raw::ArrayExpr).getExpr(index))
    }

    /**
     * Gets any of the expressions of this array expression.
     */
    final Expr getAnExpr() { result = this.getExpr(_) }

    /**
     * Gets the number of expressions of this array expression.
     */
    final int getNumberOfExprs() { result = count(int i | exists(this.getExpr(i))) }
  }
}