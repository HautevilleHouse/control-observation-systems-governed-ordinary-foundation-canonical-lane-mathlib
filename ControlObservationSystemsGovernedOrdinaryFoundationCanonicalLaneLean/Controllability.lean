import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsGovernedOrdinaryFoundation.ControlObservationSystem

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundation

structure ControllabilityPackage (α γ : Type u) where
  system : ControlObservationSystem α Unit γ
  reachableSet : Set α
  controllabilityCondition : Prop
  reachableSetClosed : Prop
  controllabilityProof : controllabilityCondition
  reachableSetProof : reachableSetClosed

def ControllabilityClosed {α γ : Type u} (C : ControllabilityPackage α γ) : Prop :=
  C.controllabilityCondition ∧ C.reachableSetClosed

theorem controllability_closed_from_evidence {α γ : Type u} (C : ControllabilityPackage α γ) : ControllabilityClosed C := by
  exact And.intro C.controllabilityProof C.reachableSetProof

end ControlObservationSystemsGovernedOrdinaryFoundation
end HautevilleHouse