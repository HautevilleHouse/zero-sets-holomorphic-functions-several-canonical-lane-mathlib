import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

structure ZeroSetPackage where
  domainType : Type u
  complexStructure : Type v
  holomorphicFunction : Type w
  zeroSet : Set domainType
  pureCodimensionOne : Prop

structure ZeroSetEvidence (Z : ZeroSetPackage) where
  pureCodimensionOneClosed : Z.pureCodimensionOne

def ZeroSetClosed (Z : ZeroSetPackage) : Prop :=
  Z.pureCodimensionOne

theorem zero_set_closed_from_evidence (Z : ZeroSetPackage) (E : ZeroSetEvidence Z) :
    ZeroSetClosed Z := by
  exact E.pureCodimensionOneClosed

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse