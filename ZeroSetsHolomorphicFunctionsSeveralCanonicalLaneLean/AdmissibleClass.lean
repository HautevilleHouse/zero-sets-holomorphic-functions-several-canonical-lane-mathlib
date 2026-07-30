import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

structure ZeroSetAdmittedObject where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : Prop
  holomorphicFunctionDefined : Prop
  zeroSetClosed : Prop
  conclusion : zeroSetClosed

def ZeroSetWitnessClosed (O : ZeroSetAdmittedObject) : Prop :=
  O.zeroSetClosed

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse