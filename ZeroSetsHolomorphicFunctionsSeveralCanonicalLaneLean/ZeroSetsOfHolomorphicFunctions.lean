import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

structure HolomorphicFunctionSeveral (n : ℕ) where
  domain : Set (ℂ^n)
  functionVal : ℂ^n → ℂ
  holomorphic : Prop

def ZeroSet {n : ℕ} (f : HolomorphicFunctionSeveral n) : Set (ℂ^n) :=
  {z | f.functionVal z = 0}

structure ZeroSetPackage (n : ℕ) where
  functions : List (HolomorphicFunctionSeveral n)
  intersectionZeroSet : Set (ℂ^n) := ⋂ (f ∈ functions), ZeroSet f
  properties : Prop

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse