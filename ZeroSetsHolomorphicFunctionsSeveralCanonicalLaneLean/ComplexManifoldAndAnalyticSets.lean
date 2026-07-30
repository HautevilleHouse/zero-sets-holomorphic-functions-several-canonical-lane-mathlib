import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

structure ComplexManifold where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : Prop

structure AnalyticSet (M : ComplexManifold) where
  carrier : Set M.carrier
  locallyAnalytic : Prop

structure AnalyticSubvariety (M : ComplexManifold) where
  carrier : Set M.carrier
  isAnalytic : AnalyticSet M
  dimension : ℕ
  regularPoints : Prop

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse