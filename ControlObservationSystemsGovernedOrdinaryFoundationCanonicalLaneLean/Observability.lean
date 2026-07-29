import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsGovernedOrdinaryFoundation.ControlObservationSystem

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundation

structure ObservabilityPackage (α β : Type u) where
  system : ControlObservationSystem α β Unit
  observableStates : Set α
  distinguishability : Prop
  observabilityCriterion : Prop
  distinguishabilityProof : distinguishability
  observabilityCriterionProof : observabilityCriterion

def ObservabilityClosed {α β : Type u} (O : ObservabilityPackage α β) : Prop :=
  O.distinguishability ∧ O.observabilityCriterion

theorem observability_closed_from_evidence {α β : Type u} (O : ObservabilityPackage α β) : ObservabilityClosed O := by
  exact And.intro O.distinguishabilityProof O.observabilityCriterionProof

end ControlObservationSystemsGovernedOrdinaryFoundation
end HautevilleHouse