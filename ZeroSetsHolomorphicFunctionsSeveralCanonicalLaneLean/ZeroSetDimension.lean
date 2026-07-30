import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

structure ZeroSetDimensionPackage where
  zeroSet : ZeroSet
  dimensionFormula : Prop
  codimensionOne : Prop
  smoothPart : Prop

structure ZeroSetDimensionEvidence (Z : ZeroSetDimensionPackage) where
  dimensionFormulaClosed : Z.dimensionFormula
  codimensionOneClosed : Z.codimensionOne
  smoothPartClosed : Z.smoothPart

def ZeroSetDimensionClosed (Z : ZeroSetDimensionPackage) : Prop :=
  Z.dimensionFormula ∧ Z.codimensionOne ∧ Z.smoothPart

theorem zero_set_dimension_closed_from_evidence (Z : ZeroSetDimensionPackage) (E : ZeroSetDimensionEvidence Z) : ZeroSetDimensionClosed Z := by
  exact And.intro E.dimensionFormulaClosed (And.intro E.codimensionOneClosed E.smoothPartClosed)

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse