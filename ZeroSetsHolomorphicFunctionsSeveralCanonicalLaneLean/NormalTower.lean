import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

structure NormalTowerPackage {Z : ZeroSetPackage}
    {D : DivisionAlgebraPackage Z} where
  regularSequence : List Z.domainType
  koszulComplexAcyclic : Prop
  hypersurfaceSlice : Prop

structure NormalTowerEvidence {Z : ZeroSetPackage}
    {D : DivisionAlgebraPackage Z} (N : NormalTowerPackage D) where
  koszulComplexAcyclicClosed : N.koszulComplexAcyclic
  hypersurfaceSliceClosed : N.hypersurfaceSlice

def NormalTowerClosed {Z : ZeroSetPackage}
    {D : DivisionAlgebraPackage Z} (N : NormalTowerPackage D) : Prop :=
  N.koszulComplexAcyclic ∧ N.hypersurfaceSlice

theorem normal_tower_closed_from_evidence
    {Z : ZeroSetPackage} {D : DivisionAlgebraPackage Z}
    (N : NormalTowerPackage D) (E : NormalTowerEvidence N) :
    NormalTowerClosed N := by
  exact And.intro E.koszulComplexAcyclicClosed E.hypersurfaceSliceClosed

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse