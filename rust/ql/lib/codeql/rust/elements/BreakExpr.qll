// generated by codegen, do not edit
/**
 * This module provides the public class `BreakExpr`.
 */

private import internal.BreakExprImpl
import codeql.rust.elements.Attr
import codeql.rust.elements.Expr
import codeql.rust.elements.Lifetime

/**
 * A break expression. For example:
 * ```rust
 * loop {
 *     if not_ready() {
 *         break;
 *      }
 * }
 * ```
 * ```rust
 * let x = 'label: loop {
 *     if done() {
 *         break 'label 42;
 *     }
 * };
 * ```
 * ```rust
 * let x = 'label: {
 *     if exit() {
 *         break 'label 42;
 *     }
 *     0;
 * };
 * ```
 */
final class BreakExpr = Impl::BreakExpr;