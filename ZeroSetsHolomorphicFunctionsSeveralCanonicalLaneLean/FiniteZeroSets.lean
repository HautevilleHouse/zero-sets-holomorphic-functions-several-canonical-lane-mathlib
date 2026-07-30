import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

structure FiniteZeroSetPackage where
  function : HolomorphicFunction
  isolatedZeros : Prop
  multiplicityDefined : Prop
  residueComputed : Prop

structure FiniteZeroSetEvidence (F : FiniteZeroSetPackage) where
  isolatedZerosClosed : F.isolatedZeros
  multiplicityDefinedClosed : F.multiplicityDefined
  residueComputedClosed : F.residueComputed

def FiniteZeroSetClosed (F : FiniteZeroSetPackage) : Prop :=
  F.isolatedZeros ∧ F.multiplicityDefined ∧ F.residueComputed

theorem finite_zero_set_closed_from_evidence (F : FiniteZeroSetPackage)
    (E : FiniteZeroSetEvidence F) : FiniteZeroSetClosed F := by
  exact And.intro E.isolatedZerosClosed (And.intro E.multiplicityDefinedClosed E.residueComputedClosed)

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse