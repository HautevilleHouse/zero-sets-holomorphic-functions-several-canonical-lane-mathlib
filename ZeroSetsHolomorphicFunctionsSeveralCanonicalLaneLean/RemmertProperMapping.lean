import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

structure ProperHolomorphicMap {M N : ComplexManifold} where
  map : M.carrier → N.carrier
  holomorphic : Prop
  proper : Prop

structure RemmertTheoremData {M N : ComplexManifold} (f : ProperHolomorphicMap M N) where
  imageIsAnalytic : AnalyticSet N
  fiberStructure : Prop

structure AnalyticImageTheoremData {M N : ComplexManifold} (f : ProperHolomorphicMap M N) where
  analyticImage : AnalyticSet N
  dimensionRelation : Prop

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse