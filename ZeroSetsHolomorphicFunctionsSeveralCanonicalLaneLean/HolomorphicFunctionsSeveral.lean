import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

structure HolomorphicFunctionSeveralVariables where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  functionValue : domain → ℂ
  holomorphic : Prop

structure ZeroSet where
  manifold : Type u
  topology : TopologicalSpace manifold
  complexStructure : ComplexStructure manifold
  definingFunction : HolomorphicFunctionSeveralVariables
  vanishingCondition : Prop

def ZeroSetClosed (Z : ZeroSet) : Prop :=
  Z.vanishingCondition

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse