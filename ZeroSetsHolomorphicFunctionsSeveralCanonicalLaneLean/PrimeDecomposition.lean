import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

structure PrimeDecompositionPackage {Z : ZeroSetPackage}
    {D : DivisionAlgebraPackage Z} {N : NormalTowerPackage D} where
  irreducibleComponents : Set (Set Z.domainType)
  primeIdealDecomposition : Prop
  unionCoversZeroSet : Prop
  finitelyMany : Prop

structure PrimeDecompositionEvidence {Z : ZeroSetPackage}
    {D : DivisionAlgebraPackage Z} {N : NormalTowerPackage D}
    (P : PrimeDecompositionPackage N) where
  primeIdealDecompositionClosed : P.primeIdealDecomposition
  unionCoversZeroSetClosed : P.unionCoversZeroSet
  finitelyManyClosed : P.finitelyMany

def PrimeDecompositionClosed {Z : ZeroSetPackage}
    {D : DivisionAlgebraPackage Z} {N : NormalTowerPackage D}
    (P : PrimeDecompositionPackage N) : Prop :=
  P.primeIdealDecomposition ∧ P.unionCoversZeroSet ∧ P.finitelyMany

theorem prime_decomposition_closed_from_evidence
    {Z : ZeroSetPackage} {D : DivisionAlgebraPackage Z} {N : NormalTowerPackage D}
    (P : PrimeDecompositionPackage N) (E : PrimeDecompositionEvidence P) :
    PrimeDecompositionClosed P := by
  exact And.intro E.primeIdealDecompositionClosed
    (And.intro E.unionCoversZeroSetClosed E.finitelyManyClosed)

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse