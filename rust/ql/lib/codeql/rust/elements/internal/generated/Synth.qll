/**
 * INTERNAL: Do not use.
 * This module defines the IPA layer on top of raw DB entities, and the conversions between the two
 * layers.
 */

private import codeql.rust.elements.internal.generated.SynthConstructors
private import codeql.rust.elements.internal.generated.Raw

module Synth {
  /**
   * INTERNAL: Do not use.
   * The synthesized type of all elements.
   */
  cached
  newtype TElement =
    /**
     * INTERNAL: Do not use.
     */
    TAbi(Raw::Abi id) { constructAbi(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TArgList(Raw::ArgList id) { constructArgList(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TArrayExpr(Raw::ArrayExpr id) { constructArrayExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TArrayType(Raw::ArrayType id) { constructArrayType(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TAsmExpr(Raw::AsmExpr id) { constructAsmExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TAssocItemList(Raw::AssocItemList id) { constructAssocItemList(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TAssocTypeArg(Raw::AssocTypeArg id) { constructAssocTypeArg(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TAttr(Raw::Attr id) { constructAttr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TAwaitExpr(Raw::AwaitExpr id) { constructAwaitExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TBecomeExpr(Raw::BecomeExpr id) { constructBecomeExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TBinaryExpr(Raw::BinaryExpr id) { constructBinaryExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TBlockExpr(Raw::BlockExpr id) { constructBlockExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TBoxPat(Raw::BoxPat id) { constructBoxPat(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TBreakExpr(Raw::BreakExpr id) { constructBreakExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TCallExpr(Raw::CallExpr id) { constructCallExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TCastExpr(Raw::CastExpr id) { constructCastExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TClosureBinder(Raw::ClosureBinder id) { constructClosureBinder(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TClosureExpr(Raw::ClosureExpr id) { constructClosureExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TComment(Raw::Comment id) { constructComment(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TConst(Raw::Const id) { constructConst(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TConstArg(Raw::ConstArg id) { constructConstArg(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TConstBlockPat(Raw::ConstBlockPat id) { constructConstBlockPat(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TConstParam(Raw::ConstParam id) { constructConstParam(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TContinueExpr(Raw::ContinueExpr id) { constructContinueExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TDynTraitType(Raw::DynTraitType id) { constructDynTraitType(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TEnum(Raw::Enum id) { constructEnum(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TExprStmt(Raw::ExprStmt id) { constructExprStmt(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TExternBlock(Raw::ExternBlock id) { constructExternBlock(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TExternCrate(Raw::ExternCrate id) { constructExternCrate(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TExternItemList(Raw::ExternItemList id) { constructExternItemList(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TFieldExpr(Raw::FieldExpr id) { constructFieldExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TFnPtrType(Raw::FnPtrType id) { constructFnPtrType(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TForExpr(Raw::ForExpr id) { constructForExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TForType(Raw::ForType id) { constructForType(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TFormat(Raw::FormatArgsExpr parent, int index, string text, int offset) {
      constructFormat(parent, index, text, offset)
    } or
    /**
     * INTERNAL: Do not use.
     */
    TFormatArgsArg(Raw::FormatArgsArg id) { constructFormatArgsArg(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TFormatArgsExpr(Raw::FormatArgsExpr id) { constructFormatArgsExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TFormatArgument(
      Raw::FormatArgsExpr parent, int index, int kind, string name, boolean positional, int offset
    ) {
      constructFormatArgument(parent, index, kind, name, positional, offset)
    } or
    /**
     * INTERNAL: Do not use.
     */
    TFormatTemplateVariableAccess(Raw::FormatArgsExpr parent, int index, int kind) {
      constructFormatTemplateVariableAccess(parent, index, kind)
    } or
    /**
     * INTERNAL: Do not use.
     */
    TFunction(Raw::Function id) { constructFunction(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TGenericArgList(Raw::GenericArgList id) { constructGenericArgList(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TGenericParamList(Raw::GenericParamList id) { constructGenericParamList(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TIdentPat(Raw::IdentPat id) { constructIdentPat(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TIfExpr(Raw::IfExpr id) { constructIfExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TImpl(Raw::Impl id) { constructImpl(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TImplTraitType(Raw::ImplTraitType id) { constructImplTraitType(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TIndexExpr(Raw::IndexExpr id) { constructIndexExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TInferType(Raw::InferType id) { constructInferType(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TItemList(Raw::ItemList id) { constructItemList(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TLabel(Raw::Label id) { constructLabel(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TLetElse(Raw::LetElse id) { constructLetElse(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TLetExpr(Raw::LetExpr id) { constructLetExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TLetStmt(Raw::LetStmt id) { constructLetStmt(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TLifetime(Raw::Lifetime id) { constructLifetime(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TLifetimeArg(Raw::LifetimeArg id) { constructLifetimeArg(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TLifetimeParam(Raw::LifetimeParam id) { constructLifetimeParam(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TLiteralExpr(Raw::LiteralExpr id) { constructLiteralExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TLiteralPat(Raw::LiteralPat id) { constructLiteralPat(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TLoopExpr(Raw::LoopExpr id) { constructLoopExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TMacroCall(Raw::MacroCall id) { constructMacroCall(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TMacroDef(Raw::MacroDef id) { constructMacroDef(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TMacroExpr(Raw::MacroExpr id) { constructMacroExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TMacroItems(Raw::MacroItems id) { constructMacroItems(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TMacroPat(Raw::MacroPat id) { constructMacroPat(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TMacroRules(Raw::MacroRules id) { constructMacroRules(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TMacroStmts(Raw::MacroStmts id) { constructMacroStmts(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TMacroType(Raw::MacroType id) { constructMacroType(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TMatchArm(Raw::MatchArm id) { constructMatchArm(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TMatchArmList(Raw::MatchArmList id) { constructMatchArmList(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TMatchExpr(Raw::MatchExpr id) { constructMatchExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TMatchGuard(Raw::MatchGuard id) { constructMatchGuard(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TMeta(Raw::Meta id) { constructMeta(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TMethodCallExpr(Raw::MethodCallExpr id) { constructMethodCallExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TMissing(Raw::Missing id) { constructMissing(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TModule(Raw::Module id) { constructModule(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TName(Raw::Name id) { constructName(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TNameRef(Raw::NameRef id) { constructNameRef(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TNeverType(Raw::NeverType id) { constructNeverType(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TOffsetOfExpr(Raw::OffsetOfExpr id) { constructOffsetOfExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TOrPat(Raw::OrPat id) { constructOrPat(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TParam(Raw::Param id) { constructParam(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TParamList(Raw::ParamList id) { constructParamList(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TParenExpr(Raw::ParenExpr id) { constructParenExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TParenPat(Raw::ParenPat id) { constructParenPat(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TParenType(Raw::ParenType id) { constructParenType(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TPath(Raw::Path id) { constructPath(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TPathExpr(Raw::PathExpr id) { constructPathExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TPathPat(Raw::PathPat id) { constructPathPat(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TPathSegment(Raw::PathSegment id) { constructPathSegment(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TPathType(Raw::PathType id) { constructPathType(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TPrefixExpr(Raw::PrefixExpr id) { constructPrefixExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TPtrType(Raw::PtrType id) { constructPtrType(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TRangeExpr(Raw::RangeExpr id) { constructRangeExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TRangePat(Raw::RangePat id) { constructRangePat(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TRecordExpr(Raw::RecordExpr id) { constructRecordExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TRecordExprField(Raw::RecordExprField id) { constructRecordExprField(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TRecordExprFieldList(Raw::RecordExprFieldList id) { constructRecordExprFieldList(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TRecordField(Raw::RecordField id) { constructRecordField(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TRecordFieldList(Raw::RecordFieldList id) { constructRecordFieldList(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TRecordPat(Raw::RecordPat id) { constructRecordPat(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TRecordPatField(Raw::RecordPatField id) { constructRecordPatField(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TRecordPatFieldList(Raw::RecordPatFieldList id) { constructRecordPatFieldList(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TRefExpr(Raw::RefExpr id) { constructRefExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TRefPat(Raw::RefPat id) { constructRefPat(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TRefType(Raw::RefType id) { constructRefType(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TRename(Raw::Rename id) { constructRename(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TRestPat(Raw::RestPat id) { constructRestPat(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TRetType(Raw::RetType id) { constructRetType(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TReturnExpr(Raw::ReturnExpr id) { constructReturnExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TReturnTypeSyntax(Raw::ReturnTypeSyntax id) { constructReturnTypeSyntax(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TSelfParam(Raw::SelfParam id) { constructSelfParam(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TSlicePat(Raw::SlicePat id) { constructSlicePat(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TSliceType(Raw::SliceType id) { constructSliceType(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TSourceFile(Raw::SourceFile id) { constructSourceFile(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TStatic(Raw::Static id) { constructStatic(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TStmtList(Raw::StmtList id) { constructStmtList(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TStruct(Raw::Struct id) { constructStruct(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TTokenTree(Raw::TokenTree id) { constructTokenTree(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TTrait(Raw::Trait id) { constructTrait(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TTraitAlias(Raw::TraitAlias id) { constructTraitAlias(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TTryExpr(Raw::TryExpr id) { constructTryExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TTupleExpr(Raw::TupleExpr id) { constructTupleExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TTupleField(Raw::TupleField id) { constructTupleField(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TTupleFieldList(Raw::TupleFieldList id) { constructTupleFieldList(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TTuplePat(Raw::TuplePat id) { constructTuplePat(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TTupleStructPat(Raw::TupleStructPat id) { constructTupleStructPat(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TTupleType(Raw::TupleType id) { constructTupleType(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TTypeAlias(Raw::TypeAlias id) { constructTypeAlias(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TTypeArg(Raw::TypeArg id) { constructTypeArg(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TTypeBound(Raw::TypeBound id) { constructTypeBound(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TTypeBoundList(Raw::TypeBoundList id) { constructTypeBoundList(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TTypeParam(Raw::TypeParam id) { constructTypeParam(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TUnderscoreExpr(Raw::UnderscoreExpr id) { constructUnderscoreExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TUnimplemented(Raw::Unimplemented id) { constructUnimplemented(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TUnion(Raw::Union id) { constructUnion(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TUse(Raw::Use id) { constructUse(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TUseTree(Raw::UseTree id) { constructUseTree(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TUseTreeList(Raw::UseTreeList id) { constructUseTreeList(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TVariant(Raw::Variant id) { constructVariant(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TVariantList(Raw::VariantList id) { constructVariantList(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TVisibility(Raw::Visibility id) { constructVisibility(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TWhereClause(Raw::WhereClause id) { constructWhereClause(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TWherePred(Raw::WherePred id) { constructWherePred(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TWhileExpr(Raw::WhileExpr id) { constructWhileExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TWildcardPat(Raw::WildcardPat id) { constructWildcardPat(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TYeetExpr(Raw::YeetExpr id) { constructYeetExpr(id) } or
    /**
     * INTERNAL: Do not use.
     */
    TYieldExpr(Raw::YieldExpr id) { constructYieldExpr(id) }

  /**
   * INTERNAL: Do not use.
   */
  class TAssocItem = TConst or TFunction or TMacroCall or TTypeAlias;

  /**
   * INTERNAL: Do not use.
   */
  class TAstNode =
    TAbi or TArgList or TAssocItem or TAssocItemList or TAttr or TCallable or TClosureBinder or
        TExpr or TExternItem or TExternItemList or TFieldList or TFormatArgsArg or TGenericArg or
        TGenericArgList or TGenericParam or TGenericParamList or TItemList or TLabel or TLetElse or
        TLifetime or TMacroItems or TMacroStmts or TMatchArm or TMatchArmList or TMatchGuard or
        TMeta or TName or TNameRef or TParam or TParamList or TPat or TPathSegment or
        TRecordExprField or TRecordExprFieldList or TRecordField or TRecordPatField or
        TRecordPatFieldList or TRename or TResolvable or TRetType or TReturnTypeSyntax or
        TSelfParam or TSourceFile or TStmt or TStmtList or TToken or TTokenTree or TTupleField or
        TTypeBound or TTypeBoundList or TTypeRef or TUseTree or TUseTreeList or TVariant or
        TVariantList or TVisibility or TWhereClause or TWherePred;

  /**
   * INTERNAL: Do not use.
   */
  class TCallExprBase = TCallExpr or TMethodCallExpr;

  /**
   * INTERNAL: Do not use.
   */
  class TCallable = TClosureExpr or TFunction;

  /**
   * INTERNAL: Do not use.
   */
  class TExpr =
    TArrayExpr or TAsmExpr or TAwaitExpr or TBecomeExpr or TBinaryExpr or TBlockExpr or
        TBreakExpr or TCallExprBase or TCastExpr or TClosureExpr or TContinueExpr or TFieldExpr or
        TForExpr or TFormatArgsExpr or TIfExpr or TIndexExpr or TLetExpr or TLiteralExpr or
        TLoopExpr or TMacroExpr or TMatchExpr or TOffsetOfExpr or TParenExpr or TPathExprBase or
        TPrefixExpr or TRangeExpr or TRecordExpr or TRefExpr or TReturnExpr or TTryExpr or
        TTupleExpr or TUnderscoreExpr or TWhileExpr or TYeetExpr or TYieldExpr;

  /**
   * INTERNAL: Do not use.
   */
  class TExternItem = TFunction or TMacroCall or TStatic or TTypeAlias;

  /**
   * INTERNAL: Do not use.
   */
  class TFieldList = TRecordFieldList or TTupleFieldList;

  /**
   * INTERNAL: Do not use.
   */
  class TGenericArg = TAssocTypeArg or TConstArg or TLifetimeArg or TTypeArg;

  /**
   * INTERNAL: Do not use.
   */
  class TGenericParam = TConstParam or TLifetimeParam or TTypeParam;

  /**
   * INTERNAL: Do not use.
   */
  class TItem =
    TConst or TEnum or TExternBlock or TExternCrate or TFunction or TImpl or TMacroCall or
        TMacroDef or TMacroRules or TModule or TStatic or TStruct or TTrait or TTraitAlias or
        TTypeAlias or TUnion or TUse;

  /**
   * INTERNAL: Do not use.
   */
  class TLocatable = TAstNode or TFormat or TFormatArgument;

  /**
   * INTERNAL: Do not use.
   */
  class TPat =
    TBoxPat or TConstBlockPat or TIdentPat or TLiteralPat or TMacroPat or TOrPat or TParenPat or
        TPathPat or TRangePat or TRecordPat or TRefPat or TRestPat or TSlicePat or TTuplePat or
        TTupleStructPat or TWildcardPat;

  /**
   * INTERNAL: Do not use.
   */
  class TPathExprBase = TFormatTemplateVariableAccess or TPathExpr;

  /**
   * INTERNAL: Do not use.
   */
  class TResolvable = TMethodCallExpr or TPath;

  /**
   * INTERNAL: Do not use.
   */
  class TStmt = TExprStmt or TItem or TLetStmt;

  /**
   * INTERNAL: Do not use.
   */
  class TToken = TComment;

  /**
   * INTERNAL: Do not use.
   */
  class TTypeRef =
    TArrayType or TDynTraitType or TFnPtrType or TForType or TImplTraitType or TInferType or
        TMacroType or TNeverType or TParenType or TPathType or TPtrType or TRefType or TSliceType or
        TTupleType;

  /**
   * INTERNAL: Do not use.
   */
  class TUnextracted = TMissing or TUnimplemented;

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TAbi`, if possible.
   */
  TAbi convertAbiFromRaw(Raw::Element e) { result = TAbi(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TArgList`, if possible.
   */
  TArgList convertArgListFromRaw(Raw::Element e) { result = TArgList(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TArrayExpr`, if possible.
   */
  TArrayExpr convertArrayExprFromRaw(Raw::Element e) { result = TArrayExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TArrayType`, if possible.
   */
  TArrayType convertArrayTypeFromRaw(Raw::Element e) { result = TArrayType(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TAsmExpr`, if possible.
   */
  TAsmExpr convertAsmExprFromRaw(Raw::Element e) { result = TAsmExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TAssocItemList`, if possible.
   */
  TAssocItemList convertAssocItemListFromRaw(Raw::Element e) { result = TAssocItemList(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TAssocTypeArg`, if possible.
   */
  TAssocTypeArg convertAssocTypeArgFromRaw(Raw::Element e) { result = TAssocTypeArg(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TAttr`, if possible.
   */
  TAttr convertAttrFromRaw(Raw::Element e) { result = TAttr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TAwaitExpr`, if possible.
   */
  TAwaitExpr convertAwaitExprFromRaw(Raw::Element e) { result = TAwaitExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TBecomeExpr`, if possible.
   */
  TBecomeExpr convertBecomeExprFromRaw(Raw::Element e) { result = TBecomeExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TBinaryExpr`, if possible.
   */
  TBinaryExpr convertBinaryExprFromRaw(Raw::Element e) { result = TBinaryExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TBlockExpr`, if possible.
   */
  TBlockExpr convertBlockExprFromRaw(Raw::Element e) { result = TBlockExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TBoxPat`, if possible.
   */
  TBoxPat convertBoxPatFromRaw(Raw::Element e) { result = TBoxPat(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TBreakExpr`, if possible.
   */
  TBreakExpr convertBreakExprFromRaw(Raw::Element e) { result = TBreakExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TCallExpr`, if possible.
   */
  TCallExpr convertCallExprFromRaw(Raw::Element e) { result = TCallExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TCastExpr`, if possible.
   */
  TCastExpr convertCastExprFromRaw(Raw::Element e) { result = TCastExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TClosureBinder`, if possible.
   */
  TClosureBinder convertClosureBinderFromRaw(Raw::Element e) { result = TClosureBinder(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TClosureExpr`, if possible.
   */
  TClosureExpr convertClosureExprFromRaw(Raw::Element e) { result = TClosureExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TComment`, if possible.
   */
  TComment convertCommentFromRaw(Raw::Element e) { result = TComment(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TConst`, if possible.
   */
  TConst convertConstFromRaw(Raw::Element e) { result = TConst(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TConstArg`, if possible.
   */
  TConstArg convertConstArgFromRaw(Raw::Element e) { result = TConstArg(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TConstBlockPat`, if possible.
   */
  TConstBlockPat convertConstBlockPatFromRaw(Raw::Element e) { result = TConstBlockPat(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TConstParam`, if possible.
   */
  TConstParam convertConstParamFromRaw(Raw::Element e) { result = TConstParam(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TContinueExpr`, if possible.
   */
  TContinueExpr convertContinueExprFromRaw(Raw::Element e) { result = TContinueExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TDynTraitType`, if possible.
   */
  TDynTraitType convertDynTraitTypeFromRaw(Raw::Element e) { result = TDynTraitType(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TEnum`, if possible.
   */
  TEnum convertEnumFromRaw(Raw::Element e) { result = TEnum(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TExprStmt`, if possible.
   */
  TExprStmt convertExprStmtFromRaw(Raw::Element e) { result = TExprStmt(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TExternBlock`, if possible.
   */
  TExternBlock convertExternBlockFromRaw(Raw::Element e) { result = TExternBlock(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TExternCrate`, if possible.
   */
  TExternCrate convertExternCrateFromRaw(Raw::Element e) { result = TExternCrate(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TExternItemList`, if possible.
   */
  TExternItemList convertExternItemListFromRaw(Raw::Element e) { result = TExternItemList(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TFieldExpr`, if possible.
   */
  TFieldExpr convertFieldExprFromRaw(Raw::Element e) { result = TFieldExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TFnPtrType`, if possible.
   */
  TFnPtrType convertFnPtrTypeFromRaw(Raw::Element e) { result = TFnPtrType(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TForExpr`, if possible.
   */
  TForExpr convertForExprFromRaw(Raw::Element e) { result = TForExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TForType`, if possible.
   */
  TForType convertForTypeFromRaw(Raw::Element e) { result = TForType(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TFormat`, if possible.
   */
  TFormat convertFormatFromRaw(Raw::Element e) { none() }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TFormatArgsArg`, if possible.
   */
  TFormatArgsArg convertFormatArgsArgFromRaw(Raw::Element e) { result = TFormatArgsArg(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TFormatArgsExpr`, if possible.
   */
  TFormatArgsExpr convertFormatArgsExprFromRaw(Raw::Element e) { result = TFormatArgsExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TFormatArgument`, if possible.
   */
  TFormatArgument convertFormatArgumentFromRaw(Raw::Element e) { none() }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TFormatTemplateVariableAccess`, if possible.
   */
  TFormatTemplateVariableAccess convertFormatTemplateVariableAccessFromRaw(Raw::Element e) {
    none()
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TFunction`, if possible.
   */
  TFunction convertFunctionFromRaw(Raw::Element e) { result = TFunction(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TGenericArgList`, if possible.
   */
  TGenericArgList convertGenericArgListFromRaw(Raw::Element e) { result = TGenericArgList(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TGenericParamList`, if possible.
   */
  TGenericParamList convertGenericParamListFromRaw(Raw::Element e) { result = TGenericParamList(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TIdentPat`, if possible.
   */
  TIdentPat convertIdentPatFromRaw(Raw::Element e) { result = TIdentPat(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TIfExpr`, if possible.
   */
  TIfExpr convertIfExprFromRaw(Raw::Element e) { result = TIfExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TImpl`, if possible.
   */
  TImpl convertImplFromRaw(Raw::Element e) { result = TImpl(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TImplTraitType`, if possible.
   */
  TImplTraitType convertImplTraitTypeFromRaw(Raw::Element e) { result = TImplTraitType(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TIndexExpr`, if possible.
   */
  TIndexExpr convertIndexExprFromRaw(Raw::Element e) { result = TIndexExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TInferType`, if possible.
   */
  TInferType convertInferTypeFromRaw(Raw::Element e) { result = TInferType(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TItemList`, if possible.
   */
  TItemList convertItemListFromRaw(Raw::Element e) { result = TItemList(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TLabel`, if possible.
   */
  TLabel convertLabelFromRaw(Raw::Element e) { result = TLabel(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TLetElse`, if possible.
   */
  TLetElse convertLetElseFromRaw(Raw::Element e) { result = TLetElse(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TLetExpr`, if possible.
   */
  TLetExpr convertLetExprFromRaw(Raw::Element e) { result = TLetExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TLetStmt`, if possible.
   */
  TLetStmt convertLetStmtFromRaw(Raw::Element e) { result = TLetStmt(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TLifetime`, if possible.
   */
  TLifetime convertLifetimeFromRaw(Raw::Element e) { result = TLifetime(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TLifetimeArg`, if possible.
   */
  TLifetimeArg convertLifetimeArgFromRaw(Raw::Element e) { result = TLifetimeArg(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TLifetimeParam`, if possible.
   */
  TLifetimeParam convertLifetimeParamFromRaw(Raw::Element e) { result = TLifetimeParam(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TLiteralExpr`, if possible.
   */
  TLiteralExpr convertLiteralExprFromRaw(Raw::Element e) { result = TLiteralExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TLiteralPat`, if possible.
   */
  TLiteralPat convertLiteralPatFromRaw(Raw::Element e) { result = TLiteralPat(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TLoopExpr`, if possible.
   */
  TLoopExpr convertLoopExprFromRaw(Raw::Element e) { result = TLoopExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TMacroCall`, if possible.
   */
  TMacroCall convertMacroCallFromRaw(Raw::Element e) { result = TMacroCall(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TMacroDef`, if possible.
   */
  TMacroDef convertMacroDefFromRaw(Raw::Element e) { result = TMacroDef(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TMacroExpr`, if possible.
   */
  TMacroExpr convertMacroExprFromRaw(Raw::Element e) { result = TMacroExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TMacroItems`, if possible.
   */
  TMacroItems convertMacroItemsFromRaw(Raw::Element e) { result = TMacroItems(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TMacroPat`, if possible.
   */
  TMacroPat convertMacroPatFromRaw(Raw::Element e) { result = TMacroPat(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TMacroRules`, if possible.
   */
  TMacroRules convertMacroRulesFromRaw(Raw::Element e) { result = TMacroRules(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TMacroStmts`, if possible.
   */
  TMacroStmts convertMacroStmtsFromRaw(Raw::Element e) { result = TMacroStmts(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TMacroType`, if possible.
   */
  TMacroType convertMacroTypeFromRaw(Raw::Element e) { result = TMacroType(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TMatchArm`, if possible.
   */
  TMatchArm convertMatchArmFromRaw(Raw::Element e) { result = TMatchArm(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TMatchArmList`, if possible.
   */
  TMatchArmList convertMatchArmListFromRaw(Raw::Element e) { result = TMatchArmList(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TMatchExpr`, if possible.
   */
  TMatchExpr convertMatchExprFromRaw(Raw::Element e) { result = TMatchExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TMatchGuard`, if possible.
   */
  TMatchGuard convertMatchGuardFromRaw(Raw::Element e) { result = TMatchGuard(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TMeta`, if possible.
   */
  TMeta convertMetaFromRaw(Raw::Element e) { result = TMeta(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TMethodCallExpr`, if possible.
   */
  TMethodCallExpr convertMethodCallExprFromRaw(Raw::Element e) { result = TMethodCallExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TMissing`, if possible.
   */
  TMissing convertMissingFromRaw(Raw::Element e) { result = TMissing(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TModule`, if possible.
   */
  TModule convertModuleFromRaw(Raw::Element e) { result = TModule(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TName`, if possible.
   */
  TName convertNameFromRaw(Raw::Element e) { result = TName(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TNameRef`, if possible.
   */
  TNameRef convertNameRefFromRaw(Raw::Element e) { result = TNameRef(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TNeverType`, if possible.
   */
  TNeverType convertNeverTypeFromRaw(Raw::Element e) { result = TNeverType(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TOffsetOfExpr`, if possible.
   */
  TOffsetOfExpr convertOffsetOfExprFromRaw(Raw::Element e) { result = TOffsetOfExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TOrPat`, if possible.
   */
  TOrPat convertOrPatFromRaw(Raw::Element e) { result = TOrPat(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TParam`, if possible.
   */
  TParam convertParamFromRaw(Raw::Element e) { result = TParam(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TParamList`, if possible.
   */
  TParamList convertParamListFromRaw(Raw::Element e) { result = TParamList(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TParenExpr`, if possible.
   */
  TParenExpr convertParenExprFromRaw(Raw::Element e) { result = TParenExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TParenPat`, if possible.
   */
  TParenPat convertParenPatFromRaw(Raw::Element e) { result = TParenPat(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TParenType`, if possible.
   */
  TParenType convertParenTypeFromRaw(Raw::Element e) { result = TParenType(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TPath`, if possible.
   */
  TPath convertPathFromRaw(Raw::Element e) { result = TPath(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TPathExpr`, if possible.
   */
  TPathExpr convertPathExprFromRaw(Raw::Element e) { result = TPathExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TPathPat`, if possible.
   */
  TPathPat convertPathPatFromRaw(Raw::Element e) { result = TPathPat(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TPathSegment`, if possible.
   */
  TPathSegment convertPathSegmentFromRaw(Raw::Element e) { result = TPathSegment(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TPathType`, if possible.
   */
  TPathType convertPathTypeFromRaw(Raw::Element e) { result = TPathType(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TPrefixExpr`, if possible.
   */
  TPrefixExpr convertPrefixExprFromRaw(Raw::Element e) { result = TPrefixExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TPtrType`, if possible.
   */
  TPtrType convertPtrTypeFromRaw(Raw::Element e) { result = TPtrType(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TRangeExpr`, if possible.
   */
  TRangeExpr convertRangeExprFromRaw(Raw::Element e) { result = TRangeExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TRangePat`, if possible.
   */
  TRangePat convertRangePatFromRaw(Raw::Element e) { result = TRangePat(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TRecordExpr`, if possible.
   */
  TRecordExpr convertRecordExprFromRaw(Raw::Element e) { result = TRecordExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TRecordExprField`, if possible.
   */
  TRecordExprField convertRecordExprFieldFromRaw(Raw::Element e) { result = TRecordExprField(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TRecordExprFieldList`, if possible.
   */
  TRecordExprFieldList convertRecordExprFieldListFromRaw(Raw::Element e) {
    result = TRecordExprFieldList(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TRecordField`, if possible.
   */
  TRecordField convertRecordFieldFromRaw(Raw::Element e) { result = TRecordField(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TRecordFieldList`, if possible.
   */
  TRecordFieldList convertRecordFieldListFromRaw(Raw::Element e) { result = TRecordFieldList(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TRecordPat`, if possible.
   */
  TRecordPat convertRecordPatFromRaw(Raw::Element e) { result = TRecordPat(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TRecordPatField`, if possible.
   */
  TRecordPatField convertRecordPatFieldFromRaw(Raw::Element e) { result = TRecordPatField(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TRecordPatFieldList`, if possible.
   */
  TRecordPatFieldList convertRecordPatFieldListFromRaw(Raw::Element e) {
    result = TRecordPatFieldList(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TRefExpr`, if possible.
   */
  TRefExpr convertRefExprFromRaw(Raw::Element e) { result = TRefExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TRefPat`, if possible.
   */
  TRefPat convertRefPatFromRaw(Raw::Element e) { result = TRefPat(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TRefType`, if possible.
   */
  TRefType convertRefTypeFromRaw(Raw::Element e) { result = TRefType(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TRename`, if possible.
   */
  TRename convertRenameFromRaw(Raw::Element e) { result = TRename(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TRestPat`, if possible.
   */
  TRestPat convertRestPatFromRaw(Raw::Element e) { result = TRestPat(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TRetType`, if possible.
   */
  TRetType convertRetTypeFromRaw(Raw::Element e) { result = TRetType(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TReturnExpr`, if possible.
   */
  TReturnExpr convertReturnExprFromRaw(Raw::Element e) { result = TReturnExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TReturnTypeSyntax`, if possible.
   */
  TReturnTypeSyntax convertReturnTypeSyntaxFromRaw(Raw::Element e) { result = TReturnTypeSyntax(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TSelfParam`, if possible.
   */
  TSelfParam convertSelfParamFromRaw(Raw::Element e) { result = TSelfParam(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TSlicePat`, if possible.
   */
  TSlicePat convertSlicePatFromRaw(Raw::Element e) { result = TSlicePat(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TSliceType`, if possible.
   */
  TSliceType convertSliceTypeFromRaw(Raw::Element e) { result = TSliceType(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TSourceFile`, if possible.
   */
  TSourceFile convertSourceFileFromRaw(Raw::Element e) { result = TSourceFile(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TStatic`, if possible.
   */
  TStatic convertStaticFromRaw(Raw::Element e) { result = TStatic(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TStmtList`, if possible.
   */
  TStmtList convertStmtListFromRaw(Raw::Element e) { result = TStmtList(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TStruct`, if possible.
   */
  TStruct convertStructFromRaw(Raw::Element e) { result = TStruct(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TTokenTree`, if possible.
   */
  TTokenTree convertTokenTreeFromRaw(Raw::Element e) { result = TTokenTree(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TTrait`, if possible.
   */
  TTrait convertTraitFromRaw(Raw::Element e) { result = TTrait(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TTraitAlias`, if possible.
   */
  TTraitAlias convertTraitAliasFromRaw(Raw::Element e) { result = TTraitAlias(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TTryExpr`, if possible.
   */
  TTryExpr convertTryExprFromRaw(Raw::Element e) { result = TTryExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TTupleExpr`, if possible.
   */
  TTupleExpr convertTupleExprFromRaw(Raw::Element e) { result = TTupleExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TTupleField`, if possible.
   */
  TTupleField convertTupleFieldFromRaw(Raw::Element e) { result = TTupleField(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TTupleFieldList`, if possible.
   */
  TTupleFieldList convertTupleFieldListFromRaw(Raw::Element e) { result = TTupleFieldList(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TTuplePat`, if possible.
   */
  TTuplePat convertTuplePatFromRaw(Raw::Element e) { result = TTuplePat(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TTupleStructPat`, if possible.
   */
  TTupleStructPat convertTupleStructPatFromRaw(Raw::Element e) { result = TTupleStructPat(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TTupleType`, if possible.
   */
  TTupleType convertTupleTypeFromRaw(Raw::Element e) { result = TTupleType(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TTypeAlias`, if possible.
   */
  TTypeAlias convertTypeAliasFromRaw(Raw::Element e) { result = TTypeAlias(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TTypeArg`, if possible.
   */
  TTypeArg convertTypeArgFromRaw(Raw::Element e) { result = TTypeArg(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TTypeBound`, if possible.
   */
  TTypeBound convertTypeBoundFromRaw(Raw::Element e) { result = TTypeBound(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TTypeBoundList`, if possible.
   */
  TTypeBoundList convertTypeBoundListFromRaw(Raw::Element e) { result = TTypeBoundList(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TTypeParam`, if possible.
   */
  TTypeParam convertTypeParamFromRaw(Raw::Element e) { result = TTypeParam(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TUnderscoreExpr`, if possible.
   */
  TUnderscoreExpr convertUnderscoreExprFromRaw(Raw::Element e) { result = TUnderscoreExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TUnimplemented`, if possible.
   */
  TUnimplemented convertUnimplementedFromRaw(Raw::Element e) { result = TUnimplemented(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TUnion`, if possible.
   */
  TUnion convertUnionFromRaw(Raw::Element e) { result = TUnion(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TUse`, if possible.
   */
  TUse convertUseFromRaw(Raw::Element e) { result = TUse(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TUseTree`, if possible.
   */
  TUseTree convertUseTreeFromRaw(Raw::Element e) { result = TUseTree(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TUseTreeList`, if possible.
   */
  TUseTreeList convertUseTreeListFromRaw(Raw::Element e) { result = TUseTreeList(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TVariant`, if possible.
   */
  TVariant convertVariantFromRaw(Raw::Element e) { result = TVariant(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TVariantList`, if possible.
   */
  TVariantList convertVariantListFromRaw(Raw::Element e) { result = TVariantList(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TVisibility`, if possible.
   */
  TVisibility convertVisibilityFromRaw(Raw::Element e) { result = TVisibility(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TWhereClause`, if possible.
   */
  TWhereClause convertWhereClauseFromRaw(Raw::Element e) { result = TWhereClause(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TWherePred`, if possible.
   */
  TWherePred convertWherePredFromRaw(Raw::Element e) { result = TWherePred(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TWhileExpr`, if possible.
   */
  TWhileExpr convertWhileExprFromRaw(Raw::Element e) { result = TWhileExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TWildcardPat`, if possible.
   */
  TWildcardPat convertWildcardPatFromRaw(Raw::Element e) { result = TWildcardPat(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TYeetExpr`, if possible.
   */
  TYeetExpr convertYeetExprFromRaw(Raw::Element e) { result = TYeetExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw element to a synthesized `TYieldExpr`, if possible.
   */
  TYieldExpr convertYieldExprFromRaw(Raw::Element e) { result = TYieldExpr(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TAssocItem`, if possible.
   */
  TAssocItem convertAssocItemFromRaw(Raw::Element e) {
    result = convertConstFromRaw(e)
    or
    result = convertFunctionFromRaw(e)
    or
    result = convertMacroCallFromRaw(e)
    or
    result = convertTypeAliasFromRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TAstNode`, if possible.
   */
  TAstNode convertAstNodeFromRaw(Raw::Element e) {
    result = convertAbiFromRaw(e)
    or
    result = convertArgListFromRaw(e)
    or
    result = convertAssocItemFromRaw(e)
    or
    result = convertAssocItemListFromRaw(e)
    or
    result = convertAttrFromRaw(e)
    or
    result = convertCallableFromRaw(e)
    or
    result = convertClosureBinderFromRaw(e)
    or
    result = convertExprFromRaw(e)
    or
    result = convertExternItemFromRaw(e)
    or
    result = convertExternItemListFromRaw(e)
    or
    result = convertFieldListFromRaw(e)
    or
    result = convertFormatArgsArgFromRaw(e)
    or
    result = convertGenericArgFromRaw(e)
    or
    result = convertGenericArgListFromRaw(e)
    or
    result = convertGenericParamFromRaw(e)
    or
    result = convertGenericParamListFromRaw(e)
    or
    result = convertItemListFromRaw(e)
    or
    result = convertLabelFromRaw(e)
    or
    result = convertLetElseFromRaw(e)
    or
    result = convertLifetimeFromRaw(e)
    or
    result = convertMacroItemsFromRaw(e)
    or
    result = convertMacroStmtsFromRaw(e)
    or
    result = convertMatchArmFromRaw(e)
    or
    result = convertMatchArmListFromRaw(e)
    or
    result = convertMatchGuardFromRaw(e)
    or
    result = convertMetaFromRaw(e)
    or
    result = convertNameFromRaw(e)
    or
    result = convertNameRefFromRaw(e)
    or
    result = convertParamFromRaw(e)
    or
    result = convertParamListFromRaw(e)
    or
    result = convertPatFromRaw(e)
    or
    result = convertPathSegmentFromRaw(e)
    or
    result = convertRecordExprFieldFromRaw(e)
    or
    result = convertRecordExprFieldListFromRaw(e)
    or
    result = convertRecordFieldFromRaw(e)
    or
    result = convertRecordPatFieldFromRaw(e)
    or
    result = convertRecordPatFieldListFromRaw(e)
    or
    result = convertRenameFromRaw(e)
    or
    result = convertResolvableFromRaw(e)
    or
    result = convertRetTypeFromRaw(e)
    or
    result = convertReturnTypeSyntaxFromRaw(e)
    or
    result = convertSelfParamFromRaw(e)
    or
    result = convertSourceFileFromRaw(e)
    or
    result = convertStmtFromRaw(e)
    or
    result = convertStmtListFromRaw(e)
    or
    result = convertTokenFromRaw(e)
    or
    result = convertTokenTreeFromRaw(e)
    or
    result = convertTupleFieldFromRaw(e)
    or
    result = convertTypeBoundFromRaw(e)
    or
    result = convertTypeBoundListFromRaw(e)
    or
    result = convertTypeRefFromRaw(e)
    or
    result = convertUseTreeFromRaw(e)
    or
    result = convertUseTreeListFromRaw(e)
    or
    result = convertVariantFromRaw(e)
    or
    result = convertVariantListFromRaw(e)
    or
    result = convertVisibilityFromRaw(e)
    or
    result = convertWhereClauseFromRaw(e)
    or
    result = convertWherePredFromRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TCallExprBase`, if possible.
   */
  TCallExprBase convertCallExprBaseFromRaw(Raw::Element e) {
    result = convertCallExprFromRaw(e)
    or
    result = convertMethodCallExprFromRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TCallable`, if possible.
   */
  TCallable convertCallableFromRaw(Raw::Element e) {
    result = convertClosureExprFromRaw(e)
    or
    result = convertFunctionFromRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TElement`, if possible.
   */
  TElement convertElementFromRaw(Raw::Element e) {
    result = convertLocatableFromRaw(e)
    or
    result = convertUnextractedFromRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TExpr`, if possible.
   */
  TExpr convertExprFromRaw(Raw::Element e) {
    result = convertArrayExprFromRaw(e)
    or
    result = convertAsmExprFromRaw(e)
    or
    result = convertAwaitExprFromRaw(e)
    or
    result = convertBecomeExprFromRaw(e)
    or
    result = convertBinaryExprFromRaw(e)
    or
    result = convertBlockExprFromRaw(e)
    or
    result = convertBreakExprFromRaw(e)
    or
    result = convertCallExprBaseFromRaw(e)
    or
    result = convertCastExprFromRaw(e)
    or
    result = convertClosureExprFromRaw(e)
    or
    result = convertContinueExprFromRaw(e)
    or
    result = convertFieldExprFromRaw(e)
    or
    result = convertForExprFromRaw(e)
    or
    result = convertFormatArgsExprFromRaw(e)
    or
    result = convertIfExprFromRaw(e)
    or
    result = convertIndexExprFromRaw(e)
    or
    result = convertLetExprFromRaw(e)
    or
    result = convertLiteralExprFromRaw(e)
    or
    result = convertLoopExprFromRaw(e)
    or
    result = convertMacroExprFromRaw(e)
    or
    result = convertMatchExprFromRaw(e)
    or
    result = convertOffsetOfExprFromRaw(e)
    or
    result = convertParenExprFromRaw(e)
    or
    result = convertPathExprBaseFromRaw(e)
    or
    result = convertPrefixExprFromRaw(e)
    or
    result = convertRangeExprFromRaw(e)
    or
    result = convertRecordExprFromRaw(e)
    or
    result = convertRefExprFromRaw(e)
    or
    result = convertReturnExprFromRaw(e)
    or
    result = convertTryExprFromRaw(e)
    or
    result = convertTupleExprFromRaw(e)
    or
    result = convertUnderscoreExprFromRaw(e)
    or
    result = convertWhileExprFromRaw(e)
    or
    result = convertYeetExprFromRaw(e)
    or
    result = convertYieldExprFromRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TExternItem`, if possible.
   */
  TExternItem convertExternItemFromRaw(Raw::Element e) {
    result = convertFunctionFromRaw(e)
    or
    result = convertMacroCallFromRaw(e)
    or
    result = convertStaticFromRaw(e)
    or
    result = convertTypeAliasFromRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TFieldList`, if possible.
   */
  TFieldList convertFieldListFromRaw(Raw::Element e) {
    result = convertRecordFieldListFromRaw(e)
    or
    result = convertTupleFieldListFromRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TGenericArg`, if possible.
   */
  TGenericArg convertGenericArgFromRaw(Raw::Element e) {
    result = convertAssocTypeArgFromRaw(e)
    or
    result = convertConstArgFromRaw(e)
    or
    result = convertLifetimeArgFromRaw(e)
    or
    result = convertTypeArgFromRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TGenericParam`, if possible.
   */
  TGenericParam convertGenericParamFromRaw(Raw::Element e) {
    result = convertConstParamFromRaw(e)
    or
    result = convertLifetimeParamFromRaw(e)
    or
    result = convertTypeParamFromRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TItem`, if possible.
   */
  TItem convertItemFromRaw(Raw::Element e) {
    result = convertConstFromRaw(e)
    or
    result = convertEnumFromRaw(e)
    or
    result = convertExternBlockFromRaw(e)
    or
    result = convertExternCrateFromRaw(e)
    or
    result = convertFunctionFromRaw(e)
    or
    result = convertImplFromRaw(e)
    or
    result = convertMacroCallFromRaw(e)
    or
    result = convertMacroDefFromRaw(e)
    or
    result = convertMacroRulesFromRaw(e)
    or
    result = convertModuleFromRaw(e)
    or
    result = convertStaticFromRaw(e)
    or
    result = convertStructFromRaw(e)
    or
    result = convertTraitFromRaw(e)
    or
    result = convertTraitAliasFromRaw(e)
    or
    result = convertTypeAliasFromRaw(e)
    or
    result = convertUnionFromRaw(e)
    or
    result = convertUseFromRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TLocatable`, if possible.
   */
  TLocatable convertLocatableFromRaw(Raw::Element e) {
    result = convertAstNodeFromRaw(e)
    or
    result = convertFormatFromRaw(e)
    or
    result = convertFormatArgumentFromRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TPat`, if possible.
   */
  TPat convertPatFromRaw(Raw::Element e) {
    result = convertBoxPatFromRaw(e)
    or
    result = convertConstBlockPatFromRaw(e)
    or
    result = convertIdentPatFromRaw(e)
    or
    result = convertLiteralPatFromRaw(e)
    or
    result = convertMacroPatFromRaw(e)
    or
    result = convertOrPatFromRaw(e)
    or
    result = convertParenPatFromRaw(e)
    or
    result = convertPathPatFromRaw(e)
    or
    result = convertRangePatFromRaw(e)
    or
    result = convertRecordPatFromRaw(e)
    or
    result = convertRefPatFromRaw(e)
    or
    result = convertRestPatFromRaw(e)
    or
    result = convertSlicePatFromRaw(e)
    or
    result = convertTuplePatFromRaw(e)
    or
    result = convertTupleStructPatFromRaw(e)
    or
    result = convertWildcardPatFromRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TPathExprBase`, if possible.
   */
  TPathExprBase convertPathExprBaseFromRaw(Raw::Element e) {
    result = convertFormatTemplateVariableAccessFromRaw(e)
    or
    result = convertPathExprFromRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TResolvable`, if possible.
   */
  TResolvable convertResolvableFromRaw(Raw::Element e) {
    result = convertMethodCallExprFromRaw(e)
    or
    result = convertPathFromRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TStmt`, if possible.
   */
  TStmt convertStmtFromRaw(Raw::Element e) {
    result = convertExprStmtFromRaw(e)
    or
    result = convertItemFromRaw(e)
    or
    result = convertLetStmtFromRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TToken`, if possible.
   */
  TToken convertTokenFromRaw(Raw::Element e) { result = convertCommentFromRaw(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TTypeRef`, if possible.
   */
  TTypeRef convertTypeRefFromRaw(Raw::Element e) {
    result = convertArrayTypeFromRaw(e)
    or
    result = convertDynTraitTypeFromRaw(e)
    or
    result = convertFnPtrTypeFromRaw(e)
    or
    result = convertForTypeFromRaw(e)
    or
    result = convertImplTraitTypeFromRaw(e)
    or
    result = convertInferTypeFromRaw(e)
    or
    result = convertMacroTypeFromRaw(e)
    or
    result = convertNeverTypeFromRaw(e)
    or
    result = convertParenTypeFromRaw(e)
    or
    result = convertPathTypeFromRaw(e)
    or
    result = convertPtrTypeFromRaw(e)
    or
    result = convertRefTypeFromRaw(e)
    or
    result = convertSliceTypeFromRaw(e)
    or
    result = convertTupleTypeFromRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a raw DB element to a synthesized `TUnextracted`, if possible.
   */
  TUnextracted convertUnextractedFromRaw(Raw::Element e) {
    result = convertMissingFromRaw(e)
    or
    result = convertUnimplementedFromRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TAbi` to a raw DB element, if possible.
   */
  Raw::Element convertAbiToRaw(TAbi e) { e = TAbi(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TArgList` to a raw DB element, if possible.
   */
  Raw::Element convertArgListToRaw(TArgList e) { e = TArgList(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TArrayExpr` to a raw DB element, if possible.
   */
  Raw::Element convertArrayExprToRaw(TArrayExpr e) { e = TArrayExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TArrayType` to a raw DB element, if possible.
   */
  Raw::Element convertArrayTypeToRaw(TArrayType e) { e = TArrayType(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TAsmExpr` to a raw DB element, if possible.
   */
  Raw::Element convertAsmExprToRaw(TAsmExpr e) { e = TAsmExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TAssocItemList` to a raw DB element, if possible.
   */
  Raw::Element convertAssocItemListToRaw(TAssocItemList e) { e = TAssocItemList(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TAssocTypeArg` to a raw DB element, if possible.
   */
  Raw::Element convertAssocTypeArgToRaw(TAssocTypeArg e) { e = TAssocTypeArg(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TAttr` to a raw DB element, if possible.
   */
  Raw::Element convertAttrToRaw(TAttr e) { e = TAttr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TAwaitExpr` to a raw DB element, if possible.
   */
  Raw::Element convertAwaitExprToRaw(TAwaitExpr e) { e = TAwaitExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TBecomeExpr` to a raw DB element, if possible.
   */
  Raw::Element convertBecomeExprToRaw(TBecomeExpr e) { e = TBecomeExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TBinaryExpr` to a raw DB element, if possible.
   */
  Raw::Element convertBinaryExprToRaw(TBinaryExpr e) { e = TBinaryExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TBlockExpr` to a raw DB element, if possible.
   */
  Raw::Element convertBlockExprToRaw(TBlockExpr e) { e = TBlockExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TBoxPat` to a raw DB element, if possible.
   */
  Raw::Element convertBoxPatToRaw(TBoxPat e) { e = TBoxPat(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TBreakExpr` to a raw DB element, if possible.
   */
  Raw::Element convertBreakExprToRaw(TBreakExpr e) { e = TBreakExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TCallExpr` to a raw DB element, if possible.
   */
  Raw::Element convertCallExprToRaw(TCallExpr e) { e = TCallExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TCastExpr` to a raw DB element, if possible.
   */
  Raw::Element convertCastExprToRaw(TCastExpr e) { e = TCastExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TClosureBinder` to a raw DB element, if possible.
   */
  Raw::Element convertClosureBinderToRaw(TClosureBinder e) { e = TClosureBinder(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TClosureExpr` to a raw DB element, if possible.
   */
  Raw::Element convertClosureExprToRaw(TClosureExpr e) { e = TClosureExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TComment` to a raw DB element, if possible.
   */
  Raw::Element convertCommentToRaw(TComment e) { e = TComment(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TConst` to a raw DB element, if possible.
   */
  Raw::Element convertConstToRaw(TConst e) { e = TConst(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TConstArg` to a raw DB element, if possible.
   */
  Raw::Element convertConstArgToRaw(TConstArg e) { e = TConstArg(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TConstBlockPat` to a raw DB element, if possible.
   */
  Raw::Element convertConstBlockPatToRaw(TConstBlockPat e) { e = TConstBlockPat(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TConstParam` to a raw DB element, if possible.
   */
  Raw::Element convertConstParamToRaw(TConstParam e) { e = TConstParam(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TContinueExpr` to a raw DB element, if possible.
   */
  Raw::Element convertContinueExprToRaw(TContinueExpr e) { e = TContinueExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TDynTraitType` to a raw DB element, if possible.
   */
  Raw::Element convertDynTraitTypeToRaw(TDynTraitType e) { e = TDynTraitType(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TEnum` to a raw DB element, if possible.
   */
  Raw::Element convertEnumToRaw(TEnum e) { e = TEnum(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TExprStmt` to a raw DB element, if possible.
   */
  Raw::Element convertExprStmtToRaw(TExprStmt e) { e = TExprStmt(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TExternBlock` to a raw DB element, if possible.
   */
  Raw::Element convertExternBlockToRaw(TExternBlock e) { e = TExternBlock(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TExternCrate` to a raw DB element, if possible.
   */
  Raw::Element convertExternCrateToRaw(TExternCrate e) { e = TExternCrate(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TExternItemList` to a raw DB element, if possible.
   */
  Raw::Element convertExternItemListToRaw(TExternItemList e) { e = TExternItemList(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TFieldExpr` to a raw DB element, if possible.
   */
  Raw::Element convertFieldExprToRaw(TFieldExpr e) { e = TFieldExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TFnPtrType` to a raw DB element, if possible.
   */
  Raw::Element convertFnPtrTypeToRaw(TFnPtrType e) { e = TFnPtrType(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TForExpr` to a raw DB element, if possible.
   */
  Raw::Element convertForExprToRaw(TForExpr e) { e = TForExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TForType` to a raw DB element, if possible.
   */
  Raw::Element convertForTypeToRaw(TForType e) { e = TForType(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TFormat` to a raw DB element, if possible.
   */
  Raw::Element convertFormatToRaw(TFormat e) { none() }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TFormatArgsArg` to a raw DB element, if possible.
   */
  Raw::Element convertFormatArgsArgToRaw(TFormatArgsArg e) { e = TFormatArgsArg(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TFormatArgsExpr` to a raw DB element, if possible.
   */
  Raw::Element convertFormatArgsExprToRaw(TFormatArgsExpr e) { e = TFormatArgsExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TFormatArgument` to a raw DB element, if possible.
   */
  Raw::Element convertFormatArgumentToRaw(TFormatArgument e) { none() }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TFormatTemplateVariableAccess` to a raw DB element, if possible.
   */
  Raw::Element convertFormatTemplateVariableAccessToRaw(TFormatTemplateVariableAccess e) { none() }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TFunction` to a raw DB element, if possible.
   */
  Raw::Element convertFunctionToRaw(TFunction e) { e = TFunction(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TGenericArgList` to a raw DB element, if possible.
   */
  Raw::Element convertGenericArgListToRaw(TGenericArgList e) { e = TGenericArgList(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TGenericParamList` to a raw DB element, if possible.
   */
  Raw::Element convertGenericParamListToRaw(TGenericParamList e) { e = TGenericParamList(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TIdentPat` to a raw DB element, if possible.
   */
  Raw::Element convertIdentPatToRaw(TIdentPat e) { e = TIdentPat(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TIfExpr` to a raw DB element, if possible.
   */
  Raw::Element convertIfExprToRaw(TIfExpr e) { e = TIfExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TImpl` to a raw DB element, if possible.
   */
  Raw::Element convertImplToRaw(TImpl e) { e = TImpl(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TImplTraitType` to a raw DB element, if possible.
   */
  Raw::Element convertImplTraitTypeToRaw(TImplTraitType e) { e = TImplTraitType(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TIndexExpr` to a raw DB element, if possible.
   */
  Raw::Element convertIndexExprToRaw(TIndexExpr e) { e = TIndexExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TInferType` to a raw DB element, if possible.
   */
  Raw::Element convertInferTypeToRaw(TInferType e) { e = TInferType(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TItemList` to a raw DB element, if possible.
   */
  Raw::Element convertItemListToRaw(TItemList e) { e = TItemList(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TLabel` to a raw DB element, if possible.
   */
  Raw::Element convertLabelToRaw(TLabel e) { e = TLabel(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TLetElse` to a raw DB element, if possible.
   */
  Raw::Element convertLetElseToRaw(TLetElse e) { e = TLetElse(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TLetExpr` to a raw DB element, if possible.
   */
  Raw::Element convertLetExprToRaw(TLetExpr e) { e = TLetExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TLetStmt` to a raw DB element, if possible.
   */
  Raw::Element convertLetStmtToRaw(TLetStmt e) { e = TLetStmt(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TLifetime` to a raw DB element, if possible.
   */
  Raw::Element convertLifetimeToRaw(TLifetime e) { e = TLifetime(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TLifetimeArg` to a raw DB element, if possible.
   */
  Raw::Element convertLifetimeArgToRaw(TLifetimeArg e) { e = TLifetimeArg(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TLifetimeParam` to a raw DB element, if possible.
   */
  Raw::Element convertLifetimeParamToRaw(TLifetimeParam e) { e = TLifetimeParam(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TLiteralExpr` to a raw DB element, if possible.
   */
  Raw::Element convertLiteralExprToRaw(TLiteralExpr e) { e = TLiteralExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TLiteralPat` to a raw DB element, if possible.
   */
  Raw::Element convertLiteralPatToRaw(TLiteralPat e) { e = TLiteralPat(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TLoopExpr` to a raw DB element, if possible.
   */
  Raw::Element convertLoopExprToRaw(TLoopExpr e) { e = TLoopExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TMacroCall` to a raw DB element, if possible.
   */
  Raw::Element convertMacroCallToRaw(TMacroCall e) { e = TMacroCall(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TMacroDef` to a raw DB element, if possible.
   */
  Raw::Element convertMacroDefToRaw(TMacroDef e) { e = TMacroDef(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TMacroExpr` to a raw DB element, if possible.
   */
  Raw::Element convertMacroExprToRaw(TMacroExpr e) { e = TMacroExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TMacroItems` to a raw DB element, if possible.
   */
  Raw::Element convertMacroItemsToRaw(TMacroItems e) { e = TMacroItems(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TMacroPat` to a raw DB element, if possible.
   */
  Raw::Element convertMacroPatToRaw(TMacroPat e) { e = TMacroPat(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TMacroRules` to a raw DB element, if possible.
   */
  Raw::Element convertMacroRulesToRaw(TMacroRules e) { e = TMacroRules(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TMacroStmts` to a raw DB element, if possible.
   */
  Raw::Element convertMacroStmtsToRaw(TMacroStmts e) { e = TMacroStmts(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TMacroType` to a raw DB element, if possible.
   */
  Raw::Element convertMacroTypeToRaw(TMacroType e) { e = TMacroType(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TMatchArm` to a raw DB element, if possible.
   */
  Raw::Element convertMatchArmToRaw(TMatchArm e) { e = TMatchArm(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TMatchArmList` to a raw DB element, if possible.
   */
  Raw::Element convertMatchArmListToRaw(TMatchArmList e) { e = TMatchArmList(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TMatchExpr` to a raw DB element, if possible.
   */
  Raw::Element convertMatchExprToRaw(TMatchExpr e) { e = TMatchExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TMatchGuard` to a raw DB element, if possible.
   */
  Raw::Element convertMatchGuardToRaw(TMatchGuard e) { e = TMatchGuard(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TMeta` to a raw DB element, if possible.
   */
  Raw::Element convertMetaToRaw(TMeta e) { e = TMeta(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TMethodCallExpr` to a raw DB element, if possible.
   */
  Raw::Element convertMethodCallExprToRaw(TMethodCallExpr e) { e = TMethodCallExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TMissing` to a raw DB element, if possible.
   */
  Raw::Element convertMissingToRaw(TMissing e) { e = TMissing(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TModule` to a raw DB element, if possible.
   */
  Raw::Element convertModuleToRaw(TModule e) { e = TModule(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TName` to a raw DB element, if possible.
   */
  Raw::Element convertNameToRaw(TName e) { e = TName(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TNameRef` to a raw DB element, if possible.
   */
  Raw::Element convertNameRefToRaw(TNameRef e) { e = TNameRef(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TNeverType` to a raw DB element, if possible.
   */
  Raw::Element convertNeverTypeToRaw(TNeverType e) { e = TNeverType(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TOffsetOfExpr` to a raw DB element, if possible.
   */
  Raw::Element convertOffsetOfExprToRaw(TOffsetOfExpr e) { e = TOffsetOfExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TOrPat` to a raw DB element, if possible.
   */
  Raw::Element convertOrPatToRaw(TOrPat e) { e = TOrPat(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TParam` to a raw DB element, if possible.
   */
  Raw::Element convertParamToRaw(TParam e) { e = TParam(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TParamList` to a raw DB element, if possible.
   */
  Raw::Element convertParamListToRaw(TParamList e) { e = TParamList(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TParenExpr` to a raw DB element, if possible.
   */
  Raw::Element convertParenExprToRaw(TParenExpr e) { e = TParenExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TParenPat` to a raw DB element, if possible.
   */
  Raw::Element convertParenPatToRaw(TParenPat e) { e = TParenPat(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TParenType` to a raw DB element, if possible.
   */
  Raw::Element convertParenTypeToRaw(TParenType e) { e = TParenType(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TPath` to a raw DB element, if possible.
   */
  Raw::Element convertPathToRaw(TPath e) { e = TPath(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TPathExpr` to a raw DB element, if possible.
   */
  Raw::Element convertPathExprToRaw(TPathExpr e) { e = TPathExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TPathPat` to a raw DB element, if possible.
   */
  Raw::Element convertPathPatToRaw(TPathPat e) { e = TPathPat(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TPathSegment` to a raw DB element, if possible.
   */
  Raw::Element convertPathSegmentToRaw(TPathSegment e) { e = TPathSegment(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TPathType` to a raw DB element, if possible.
   */
  Raw::Element convertPathTypeToRaw(TPathType e) { e = TPathType(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TPrefixExpr` to a raw DB element, if possible.
   */
  Raw::Element convertPrefixExprToRaw(TPrefixExpr e) { e = TPrefixExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TPtrType` to a raw DB element, if possible.
   */
  Raw::Element convertPtrTypeToRaw(TPtrType e) { e = TPtrType(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TRangeExpr` to a raw DB element, if possible.
   */
  Raw::Element convertRangeExprToRaw(TRangeExpr e) { e = TRangeExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TRangePat` to a raw DB element, if possible.
   */
  Raw::Element convertRangePatToRaw(TRangePat e) { e = TRangePat(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TRecordExpr` to a raw DB element, if possible.
   */
  Raw::Element convertRecordExprToRaw(TRecordExpr e) { e = TRecordExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TRecordExprField` to a raw DB element, if possible.
   */
  Raw::Element convertRecordExprFieldToRaw(TRecordExprField e) { e = TRecordExprField(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TRecordExprFieldList` to a raw DB element, if possible.
   */
  Raw::Element convertRecordExprFieldListToRaw(TRecordExprFieldList e) {
    e = TRecordExprFieldList(result)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TRecordField` to a raw DB element, if possible.
   */
  Raw::Element convertRecordFieldToRaw(TRecordField e) { e = TRecordField(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TRecordFieldList` to a raw DB element, if possible.
   */
  Raw::Element convertRecordFieldListToRaw(TRecordFieldList e) { e = TRecordFieldList(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TRecordPat` to a raw DB element, if possible.
   */
  Raw::Element convertRecordPatToRaw(TRecordPat e) { e = TRecordPat(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TRecordPatField` to a raw DB element, if possible.
   */
  Raw::Element convertRecordPatFieldToRaw(TRecordPatField e) { e = TRecordPatField(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TRecordPatFieldList` to a raw DB element, if possible.
   */
  Raw::Element convertRecordPatFieldListToRaw(TRecordPatFieldList e) {
    e = TRecordPatFieldList(result)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TRefExpr` to a raw DB element, if possible.
   */
  Raw::Element convertRefExprToRaw(TRefExpr e) { e = TRefExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TRefPat` to a raw DB element, if possible.
   */
  Raw::Element convertRefPatToRaw(TRefPat e) { e = TRefPat(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TRefType` to a raw DB element, if possible.
   */
  Raw::Element convertRefTypeToRaw(TRefType e) { e = TRefType(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TRename` to a raw DB element, if possible.
   */
  Raw::Element convertRenameToRaw(TRename e) { e = TRename(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TRestPat` to a raw DB element, if possible.
   */
  Raw::Element convertRestPatToRaw(TRestPat e) { e = TRestPat(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TRetType` to a raw DB element, if possible.
   */
  Raw::Element convertRetTypeToRaw(TRetType e) { e = TRetType(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TReturnExpr` to a raw DB element, if possible.
   */
  Raw::Element convertReturnExprToRaw(TReturnExpr e) { e = TReturnExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TReturnTypeSyntax` to a raw DB element, if possible.
   */
  Raw::Element convertReturnTypeSyntaxToRaw(TReturnTypeSyntax e) { e = TReturnTypeSyntax(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TSelfParam` to a raw DB element, if possible.
   */
  Raw::Element convertSelfParamToRaw(TSelfParam e) { e = TSelfParam(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TSlicePat` to a raw DB element, if possible.
   */
  Raw::Element convertSlicePatToRaw(TSlicePat e) { e = TSlicePat(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TSliceType` to a raw DB element, if possible.
   */
  Raw::Element convertSliceTypeToRaw(TSliceType e) { e = TSliceType(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TSourceFile` to a raw DB element, if possible.
   */
  Raw::Element convertSourceFileToRaw(TSourceFile e) { e = TSourceFile(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TStatic` to a raw DB element, if possible.
   */
  Raw::Element convertStaticToRaw(TStatic e) { e = TStatic(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TStmtList` to a raw DB element, if possible.
   */
  Raw::Element convertStmtListToRaw(TStmtList e) { e = TStmtList(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TStruct` to a raw DB element, if possible.
   */
  Raw::Element convertStructToRaw(TStruct e) { e = TStruct(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TTokenTree` to a raw DB element, if possible.
   */
  Raw::Element convertTokenTreeToRaw(TTokenTree e) { e = TTokenTree(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TTrait` to a raw DB element, if possible.
   */
  Raw::Element convertTraitToRaw(TTrait e) { e = TTrait(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TTraitAlias` to a raw DB element, if possible.
   */
  Raw::Element convertTraitAliasToRaw(TTraitAlias e) { e = TTraitAlias(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TTryExpr` to a raw DB element, if possible.
   */
  Raw::Element convertTryExprToRaw(TTryExpr e) { e = TTryExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TTupleExpr` to a raw DB element, if possible.
   */
  Raw::Element convertTupleExprToRaw(TTupleExpr e) { e = TTupleExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TTupleField` to a raw DB element, if possible.
   */
  Raw::Element convertTupleFieldToRaw(TTupleField e) { e = TTupleField(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TTupleFieldList` to a raw DB element, if possible.
   */
  Raw::Element convertTupleFieldListToRaw(TTupleFieldList e) { e = TTupleFieldList(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TTuplePat` to a raw DB element, if possible.
   */
  Raw::Element convertTuplePatToRaw(TTuplePat e) { e = TTuplePat(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TTupleStructPat` to a raw DB element, if possible.
   */
  Raw::Element convertTupleStructPatToRaw(TTupleStructPat e) { e = TTupleStructPat(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TTupleType` to a raw DB element, if possible.
   */
  Raw::Element convertTupleTypeToRaw(TTupleType e) { e = TTupleType(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TTypeAlias` to a raw DB element, if possible.
   */
  Raw::Element convertTypeAliasToRaw(TTypeAlias e) { e = TTypeAlias(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TTypeArg` to a raw DB element, if possible.
   */
  Raw::Element convertTypeArgToRaw(TTypeArg e) { e = TTypeArg(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TTypeBound` to a raw DB element, if possible.
   */
  Raw::Element convertTypeBoundToRaw(TTypeBound e) { e = TTypeBound(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TTypeBoundList` to a raw DB element, if possible.
   */
  Raw::Element convertTypeBoundListToRaw(TTypeBoundList e) { e = TTypeBoundList(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TTypeParam` to a raw DB element, if possible.
   */
  Raw::Element convertTypeParamToRaw(TTypeParam e) { e = TTypeParam(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TUnderscoreExpr` to a raw DB element, if possible.
   */
  Raw::Element convertUnderscoreExprToRaw(TUnderscoreExpr e) { e = TUnderscoreExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TUnimplemented` to a raw DB element, if possible.
   */
  Raw::Element convertUnimplementedToRaw(TUnimplemented e) { e = TUnimplemented(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TUnion` to a raw DB element, if possible.
   */
  Raw::Element convertUnionToRaw(TUnion e) { e = TUnion(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TUse` to a raw DB element, if possible.
   */
  Raw::Element convertUseToRaw(TUse e) { e = TUse(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TUseTree` to a raw DB element, if possible.
   */
  Raw::Element convertUseTreeToRaw(TUseTree e) { e = TUseTree(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TUseTreeList` to a raw DB element, if possible.
   */
  Raw::Element convertUseTreeListToRaw(TUseTreeList e) { e = TUseTreeList(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TVariant` to a raw DB element, if possible.
   */
  Raw::Element convertVariantToRaw(TVariant e) { e = TVariant(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TVariantList` to a raw DB element, if possible.
   */
  Raw::Element convertVariantListToRaw(TVariantList e) { e = TVariantList(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TVisibility` to a raw DB element, if possible.
   */
  Raw::Element convertVisibilityToRaw(TVisibility e) { e = TVisibility(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TWhereClause` to a raw DB element, if possible.
   */
  Raw::Element convertWhereClauseToRaw(TWhereClause e) { e = TWhereClause(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TWherePred` to a raw DB element, if possible.
   */
  Raw::Element convertWherePredToRaw(TWherePred e) { e = TWherePred(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TWhileExpr` to a raw DB element, if possible.
   */
  Raw::Element convertWhileExprToRaw(TWhileExpr e) { e = TWhileExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TWildcardPat` to a raw DB element, if possible.
   */
  Raw::Element convertWildcardPatToRaw(TWildcardPat e) { e = TWildcardPat(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TYeetExpr` to a raw DB element, if possible.
   */
  Raw::Element convertYeetExprToRaw(TYeetExpr e) { e = TYeetExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TYieldExpr` to a raw DB element, if possible.
   */
  Raw::Element convertYieldExprToRaw(TYieldExpr e) { e = TYieldExpr(result) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TAssocItem` to a raw DB element, if possible.
   */
  Raw::Element convertAssocItemToRaw(TAssocItem e) {
    result = convertConstToRaw(e)
    or
    result = convertFunctionToRaw(e)
    or
    result = convertMacroCallToRaw(e)
    or
    result = convertTypeAliasToRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TAstNode` to a raw DB element, if possible.
   */
  Raw::Element convertAstNodeToRaw(TAstNode e) {
    result = convertAbiToRaw(e)
    or
    result = convertArgListToRaw(e)
    or
    result = convertAssocItemToRaw(e)
    or
    result = convertAssocItemListToRaw(e)
    or
    result = convertAttrToRaw(e)
    or
    result = convertCallableToRaw(e)
    or
    result = convertClosureBinderToRaw(e)
    or
    result = convertExprToRaw(e)
    or
    result = convertExternItemToRaw(e)
    or
    result = convertExternItemListToRaw(e)
    or
    result = convertFieldListToRaw(e)
    or
    result = convertFormatArgsArgToRaw(e)
    or
    result = convertGenericArgToRaw(e)
    or
    result = convertGenericArgListToRaw(e)
    or
    result = convertGenericParamToRaw(e)
    or
    result = convertGenericParamListToRaw(e)
    or
    result = convertItemListToRaw(e)
    or
    result = convertLabelToRaw(e)
    or
    result = convertLetElseToRaw(e)
    or
    result = convertLifetimeToRaw(e)
    or
    result = convertMacroItemsToRaw(e)
    or
    result = convertMacroStmtsToRaw(e)
    or
    result = convertMatchArmToRaw(e)
    or
    result = convertMatchArmListToRaw(e)
    or
    result = convertMatchGuardToRaw(e)
    or
    result = convertMetaToRaw(e)
    or
    result = convertNameToRaw(e)
    or
    result = convertNameRefToRaw(e)
    or
    result = convertParamToRaw(e)
    or
    result = convertParamListToRaw(e)
    or
    result = convertPatToRaw(e)
    or
    result = convertPathSegmentToRaw(e)
    or
    result = convertRecordExprFieldToRaw(e)
    or
    result = convertRecordExprFieldListToRaw(e)
    or
    result = convertRecordFieldToRaw(e)
    or
    result = convertRecordPatFieldToRaw(e)
    or
    result = convertRecordPatFieldListToRaw(e)
    or
    result = convertRenameToRaw(e)
    or
    result = convertResolvableToRaw(e)
    or
    result = convertRetTypeToRaw(e)
    or
    result = convertReturnTypeSyntaxToRaw(e)
    or
    result = convertSelfParamToRaw(e)
    or
    result = convertSourceFileToRaw(e)
    or
    result = convertStmtToRaw(e)
    or
    result = convertStmtListToRaw(e)
    or
    result = convertTokenToRaw(e)
    or
    result = convertTokenTreeToRaw(e)
    or
    result = convertTupleFieldToRaw(e)
    or
    result = convertTypeBoundToRaw(e)
    or
    result = convertTypeBoundListToRaw(e)
    or
    result = convertTypeRefToRaw(e)
    or
    result = convertUseTreeToRaw(e)
    or
    result = convertUseTreeListToRaw(e)
    or
    result = convertVariantToRaw(e)
    or
    result = convertVariantListToRaw(e)
    or
    result = convertVisibilityToRaw(e)
    or
    result = convertWhereClauseToRaw(e)
    or
    result = convertWherePredToRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TCallExprBase` to a raw DB element, if possible.
   */
  Raw::Element convertCallExprBaseToRaw(TCallExprBase e) {
    result = convertCallExprToRaw(e)
    or
    result = convertMethodCallExprToRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TCallable` to a raw DB element, if possible.
   */
  Raw::Element convertCallableToRaw(TCallable e) {
    result = convertClosureExprToRaw(e)
    or
    result = convertFunctionToRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TElement` to a raw DB element, if possible.
   */
  Raw::Element convertElementToRaw(TElement e) {
    result = convertLocatableToRaw(e)
    or
    result = convertUnextractedToRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TExpr` to a raw DB element, if possible.
   */
  Raw::Element convertExprToRaw(TExpr e) {
    result = convertArrayExprToRaw(e)
    or
    result = convertAsmExprToRaw(e)
    or
    result = convertAwaitExprToRaw(e)
    or
    result = convertBecomeExprToRaw(e)
    or
    result = convertBinaryExprToRaw(e)
    or
    result = convertBlockExprToRaw(e)
    or
    result = convertBreakExprToRaw(e)
    or
    result = convertCallExprBaseToRaw(e)
    or
    result = convertCastExprToRaw(e)
    or
    result = convertClosureExprToRaw(e)
    or
    result = convertContinueExprToRaw(e)
    or
    result = convertFieldExprToRaw(e)
    or
    result = convertForExprToRaw(e)
    or
    result = convertFormatArgsExprToRaw(e)
    or
    result = convertIfExprToRaw(e)
    or
    result = convertIndexExprToRaw(e)
    or
    result = convertLetExprToRaw(e)
    or
    result = convertLiteralExprToRaw(e)
    or
    result = convertLoopExprToRaw(e)
    or
    result = convertMacroExprToRaw(e)
    or
    result = convertMatchExprToRaw(e)
    or
    result = convertOffsetOfExprToRaw(e)
    or
    result = convertParenExprToRaw(e)
    or
    result = convertPathExprBaseToRaw(e)
    or
    result = convertPrefixExprToRaw(e)
    or
    result = convertRangeExprToRaw(e)
    or
    result = convertRecordExprToRaw(e)
    or
    result = convertRefExprToRaw(e)
    or
    result = convertReturnExprToRaw(e)
    or
    result = convertTryExprToRaw(e)
    or
    result = convertTupleExprToRaw(e)
    or
    result = convertUnderscoreExprToRaw(e)
    or
    result = convertWhileExprToRaw(e)
    or
    result = convertYeetExprToRaw(e)
    or
    result = convertYieldExprToRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TExternItem` to a raw DB element, if possible.
   */
  Raw::Element convertExternItemToRaw(TExternItem e) {
    result = convertFunctionToRaw(e)
    or
    result = convertMacroCallToRaw(e)
    or
    result = convertStaticToRaw(e)
    or
    result = convertTypeAliasToRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TFieldList` to a raw DB element, if possible.
   */
  Raw::Element convertFieldListToRaw(TFieldList e) {
    result = convertRecordFieldListToRaw(e)
    or
    result = convertTupleFieldListToRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TGenericArg` to a raw DB element, if possible.
   */
  Raw::Element convertGenericArgToRaw(TGenericArg e) {
    result = convertAssocTypeArgToRaw(e)
    or
    result = convertConstArgToRaw(e)
    or
    result = convertLifetimeArgToRaw(e)
    or
    result = convertTypeArgToRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TGenericParam` to a raw DB element, if possible.
   */
  Raw::Element convertGenericParamToRaw(TGenericParam e) {
    result = convertConstParamToRaw(e)
    or
    result = convertLifetimeParamToRaw(e)
    or
    result = convertTypeParamToRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TItem` to a raw DB element, if possible.
   */
  Raw::Element convertItemToRaw(TItem e) {
    result = convertConstToRaw(e)
    or
    result = convertEnumToRaw(e)
    or
    result = convertExternBlockToRaw(e)
    or
    result = convertExternCrateToRaw(e)
    or
    result = convertFunctionToRaw(e)
    or
    result = convertImplToRaw(e)
    or
    result = convertMacroCallToRaw(e)
    or
    result = convertMacroDefToRaw(e)
    or
    result = convertMacroRulesToRaw(e)
    or
    result = convertModuleToRaw(e)
    or
    result = convertStaticToRaw(e)
    or
    result = convertStructToRaw(e)
    or
    result = convertTraitToRaw(e)
    or
    result = convertTraitAliasToRaw(e)
    or
    result = convertTypeAliasToRaw(e)
    or
    result = convertUnionToRaw(e)
    or
    result = convertUseToRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TLocatable` to a raw DB element, if possible.
   */
  Raw::Element convertLocatableToRaw(TLocatable e) {
    result = convertAstNodeToRaw(e)
    or
    result = convertFormatToRaw(e)
    or
    result = convertFormatArgumentToRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TPat` to a raw DB element, if possible.
   */
  Raw::Element convertPatToRaw(TPat e) {
    result = convertBoxPatToRaw(e)
    or
    result = convertConstBlockPatToRaw(e)
    or
    result = convertIdentPatToRaw(e)
    or
    result = convertLiteralPatToRaw(e)
    or
    result = convertMacroPatToRaw(e)
    or
    result = convertOrPatToRaw(e)
    or
    result = convertParenPatToRaw(e)
    or
    result = convertPathPatToRaw(e)
    or
    result = convertRangePatToRaw(e)
    or
    result = convertRecordPatToRaw(e)
    or
    result = convertRefPatToRaw(e)
    or
    result = convertRestPatToRaw(e)
    or
    result = convertSlicePatToRaw(e)
    or
    result = convertTuplePatToRaw(e)
    or
    result = convertTupleStructPatToRaw(e)
    or
    result = convertWildcardPatToRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TPathExprBase` to a raw DB element, if possible.
   */
  Raw::Element convertPathExprBaseToRaw(TPathExprBase e) {
    result = convertFormatTemplateVariableAccessToRaw(e)
    or
    result = convertPathExprToRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TResolvable` to a raw DB element, if possible.
   */
  Raw::Element convertResolvableToRaw(TResolvable e) {
    result = convertMethodCallExprToRaw(e)
    or
    result = convertPathToRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TStmt` to a raw DB element, if possible.
   */
  Raw::Element convertStmtToRaw(TStmt e) {
    result = convertExprStmtToRaw(e)
    or
    result = convertItemToRaw(e)
    or
    result = convertLetStmtToRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TToken` to a raw DB element, if possible.
   */
  Raw::Element convertTokenToRaw(TToken e) { result = convertCommentToRaw(e) }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TTypeRef` to a raw DB element, if possible.
   */
  Raw::Element convertTypeRefToRaw(TTypeRef e) {
    result = convertArrayTypeToRaw(e)
    or
    result = convertDynTraitTypeToRaw(e)
    or
    result = convertFnPtrTypeToRaw(e)
    or
    result = convertForTypeToRaw(e)
    or
    result = convertImplTraitTypeToRaw(e)
    or
    result = convertInferTypeToRaw(e)
    or
    result = convertMacroTypeToRaw(e)
    or
    result = convertNeverTypeToRaw(e)
    or
    result = convertParenTypeToRaw(e)
    or
    result = convertPathTypeToRaw(e)
    or
    result = convertPtrTypeToRaw(e)
    or
    result = convertRefTypeToRaw(e)
    or
    result = convertSliceTypeToRaw(e)
    or
    result = convertTupleTypeToRaw(e)
  }

  /**
   * INTERNAL: Do not use.
   * Converts a synthesized `TUnextracted` to a raw DB element, if possible.
   */
  Raw::Element convertUnextractedToRaw(TUnextracted e) {
    result = convertMissingToRaw(e)
    or
    result = convertUnimplementedToRaw(e)
  }
}