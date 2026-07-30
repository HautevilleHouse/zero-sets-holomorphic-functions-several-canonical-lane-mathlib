import ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

def ConstrainedZeroSetClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_zero_set_endgame (A : AdmissibleClass) :
    ConstrainedZeroSetClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse