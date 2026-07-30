import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

structure HolomorphicFunction where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  range : Type v
  rangeTopology : TopologicalSpace range
  holomorphic : Prop

structure ZeroSet where
  carrier : Type u
  topology : TopologicalSpace carrier
  embedded : carrier → domain
  holomorphicFunction : HolomorphicFunction
  vanishingSet : Prop

def ZeroSetClosed (Z : ZeroSet) : Prop :=
  Z.vanishingSet

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse