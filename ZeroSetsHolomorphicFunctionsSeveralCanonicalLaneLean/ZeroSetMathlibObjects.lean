import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean

structure HolomorphicFunction (ℂⁿ : Type) where
  domain : Set ℂⁿ
  holomorphic : Prop

definition ZeroSet {ℂⁿ : Type} (f : HolomorphicFunction ℂⁿ) : Set ℂⁿ :=
  {z ∈ f.domain | f.holomorphic ∧ True}  -- placeholder

structure ComplexManifold where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : Prop

structure ZeroSetAdmittedObject where
  manifold : ComplexManifold
  function : HolomorphicFunction manifold.carrier
  zeroSetClosed : Prop
  positiveCodimension : Prop
  conclusion : zeroSetClosed ∧ positiveCodimension

def ZeroSetWitnessClosed (O : ZeroSetAdmittedObject) : Prop :=
  O.zeroSetClosed ∧ O.positiveCodimension

end ZeroSetsHolomorphicFunctionsSeveralCanonicalLaneLean
end HautevilleHouse