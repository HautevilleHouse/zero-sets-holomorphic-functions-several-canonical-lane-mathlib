import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

structure NullstellensatzPackage where
  ideal : Type u
  zeroSet : ZeroSet
  radicalIdeal : Type u
  vanishingIdeal : Type u
  hilbertNullstellensatz : Prop
  realNullstellensatz : Prop

structure NullstellensatzEvidence (N : NullstellensatzPackage) where
  hilbertNullstellensatzClosed : N.hilbertNullstellensatz
  realNullstellensatzClosed : N.realNullstellensatz

def NullstellensatzClosed (N : NullstellensatzPackage) : Prop :=
  N.hilbertNullstellensatz ∧ N.realNullstellensatz

theorem nullstellensatz_closed_from_evidence (N : NullstellensatzPackage) (E : NullstellensatzEvidence N) : NullstellensatzClosed N := by
  exact And.intro E.hilbertNullstellensatzClosed E.realNullstellensatzClosed

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse