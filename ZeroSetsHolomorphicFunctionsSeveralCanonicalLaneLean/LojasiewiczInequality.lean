import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

structure LojasiewiczInequalityPackage where
  holomorphicFunction : HolomorphicFunctionSeveralVariables
  zeroSet : ZeroSet
  inequalityConstant : ℝ
  gradientBound : Prop
  distanceEstimate : Prop

structure LojasiewiczInequalityEvidence (L : LojasiewiczInequalityPackage) where
  gradientBoundClosed : L.gradientBound
  distanceEstimateClosed : L.distanceEstimate

def LojasiewiczInequalityClosed (L : LojasiewiczInequalityPackage) : Prop :=
  L.gradientBound ∧ L.distanceEstimate

theorem lojasiewicz_inequality_closed_from_evidence (L : LojasiewiczInequalityPackage) (E : LojasiewiczInequalityEvidence L) : LojasiewiczInequalityClosed L := by
  exact And.intro E.gradientBoundClosed E.distanceEstimateClosed

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse