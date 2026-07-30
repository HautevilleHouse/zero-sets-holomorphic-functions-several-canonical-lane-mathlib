import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

structure CodimensionOnePackage where
  analyticSet : Type u
  dimension : ℕ
  hypersurface : Prop
  singularLocus : Prop
  resolutionExists : Prop

structure CodimensionOneEvidence (C : CodimensionOnePackage) where
  hypersurfaceClosed : C.hypersurface
  singularLocusClosed : C.singularLocus
  resolutionExistsClosed : C.resolutionExists

def CodimensionOneClosed (C : CodimensionOnePackage) : Prop :=
  C.hypersurface ∧ C.singularLocus ∧ C.resolutionExists

theorem codimension_one_closed_from_evidence (C : CodimensionOnePackage)
    (E : CodimensionOneEvidence C) : CodimensionOneClosed C := by
  exact And.intro E.hypersurfaceClosed (And.intro E.singularLocusClosed E.resolutionExistsClosed)

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse