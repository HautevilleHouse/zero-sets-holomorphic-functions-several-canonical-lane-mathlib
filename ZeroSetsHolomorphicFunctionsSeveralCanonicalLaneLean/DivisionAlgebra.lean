import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

structure DivisionAlgebraPackage (Z : ZeroSetPackage) where
  localRing : Type u
  maximalIdealGenerated : Prop
  weierstrassPreparation : Prop

structure DivisionAlgebraEvidence {Z : ZeroSetPackage} (D : DivisionAlgebraPackage Z) where
  maximalIdealGeneratedClosed : D.maximalIdealGenerated
  weierstrassPreparationClosed : D.weierstrassPreparation

def DivisionAlgebraClosed {Z : ZeroSetPackage} (D : DivisionAlgebraPackage Z) : Prop :=
  D.maximalIdealGenerated ∧ D.weierstrassPreparation

theorem division_algebra_closed_from_evidence
    {Z : ZeroSetPackage} (D : DivisionAlgebraPackage Z) (E : DivisionAlgebraEvidence D) :
    DivisionAlgebraClosed D := by
  exact And.intro E.maximalIdealGeneratedClosed E.weierstrassPreparationClosed

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse