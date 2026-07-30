import ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ZeroSetWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse