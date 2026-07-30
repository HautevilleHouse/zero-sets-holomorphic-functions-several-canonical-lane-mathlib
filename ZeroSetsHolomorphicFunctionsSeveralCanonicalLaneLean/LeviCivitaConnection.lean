import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

structure LeviCivitaConnectionPackage {Z : ZeroSetPackage} where
  metric : Type u
  connection : Type v
  torsionFree : Prop
  metricCompatible : Prop

structure LeviCivitaConnectionEvidence {Z : ZeroSetPackage}
    (L : LeviCivitaConnectionPackage Z) where
  torsionFreeClosed : L.torsionFree
  metricCompatibleClosed : L.metricCompatible

def LeviCivitaConnectionClosed {Z : ZeroSetPackage}
    (L : LeviCivitaConnectionPackage Z) : Prop :=
  L.torsionFree ∧ L.metricCompatible

theorem levi_civita_connection_closed_from_evidence
    {Z : ZeroSetPackage} (L : LeviCivitaConnectionPackage Z)
    (E : LeviCivitaConnectionEvidence L) : LeviCivitaConnectionClosed L := by
  exact And.intro E.torsionFreeClosed E.metricCompatibleClosed

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse