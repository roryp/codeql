// generated by codegen, do not edit
/**
 * This module provides the generated definition of `FnPtrType`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.Abi
import codeql.rust.elements.ParamList
import codeql.rust.elements.RetType
import codeql.rust.elements.internal.TypeRefImpl::Impl as TypeRefImpl

/**
 * INTERNAL: This module contains the fully generated definition of `FnPtrType` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A FnPtrType. For example:
   * ```rust
   * todo!()
   * ```
   * INTERNAL: Do not reference the `Generated::FnPtrType` class directly.
   * Use the subclass `FnPtrType`, where the following predicates are available.
   */
  class FnPtrType extends Synth::TFnPtrType, TypeRefImpl::TypeRef {
    override string getAPrimaryQlClass() { result = "FnPtrType" }

    /**
     * Gets the abi of this fn ptr type, if it exists.
     */
    Abi getAbi() {
      result =
        Synth::convertAbiFromRaw(Synth::convertFnPtrTypeToRaw(this).(Raw::FnPtrType).getAbi())
    }

    /**
     * Holds if `getAbi()` exists.
     */
    final predicate hasAbi() { exists(this.getAbi()) }

    /**
     * Holds if this fn ptr type is async.
     */
    predicate isAsync() { Synth::convertFnPtrTypeToRaw(this).(Raw::FnPtrType).isAsync() }

    /**
     * Holds if this fn ptr type is const.
     */
    predicate isConst() { Synth::convertFnPtrTypeToRaw(this).(Raw::FnPtrType).isConst() }

    /**
     * Holds if this fn ptr type is unsafe.
     */
    predicate isUnsafe() { Synth::convertFnPtrTypeToRaw(this).(Raw::FnPtrType).isUnsafe() }

    /**
     * Gets the parameter list of this fn ptr type, if it exists.
     */
    ParamList getParamList() {
      result =
        Synth::convertParamListFromRaw(Synth::convertFnPtrTypeToRaw(this)
              .(Raw::FnPtrType)
              .getParamList())
    }

    /**
     * Holds if `getParamList()` exists.
     */
    final predicate hasParamList() { exists(this.getParamList()) }

    /**
     * Gets the ret type of this fn ptr type, if it exists.
     */
    RetType getRetType() {
      result =
        Synth::convertRetTypeFromRaw(Synth::convertFnPtrTypeToRaw(this)
              .(Raw::FnPtrType)
              .getRetType())
    }

    /**
     * Holds if `getRetType()` exists.
     */
    final predicate hasRetType() { exists(this.getRetType()) }
  }
}