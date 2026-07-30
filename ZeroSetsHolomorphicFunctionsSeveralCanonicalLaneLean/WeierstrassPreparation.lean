import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

structure WeierstrassPreparationPackage where
  functionVariable : ℂ
  regularInVariable : Prop
  weierstrassPolynomial : ℂ[X]
  unitFactor : ℂ → ℂ
  preparationFormula : Prop

structure WeierstrassPreparationEvidence (W : WeierstrassPreparationPackage) where
  regularInVariableClosed : W.regularInVariable
  preparationFormulaClosed : W.preparationFormula

def WeierstrassPreparationClosed (W : WeierstrassPreparationPackage) : Prop :=
  W.regularInVariable ∧ W.preparationFormula

theorem weierstrass_preparation_closed_from_evidence (W : WeierstrassPreparationPackage) (E : WeierstrassPreparationEvidence W) : WeierstrassPreparationClosed W := by
  exact And.intro E.regularInVariableClosed E.preparationFormulaClosed

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse