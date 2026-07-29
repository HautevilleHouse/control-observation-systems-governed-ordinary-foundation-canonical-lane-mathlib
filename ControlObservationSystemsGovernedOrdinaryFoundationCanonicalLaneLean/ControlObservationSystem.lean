import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundation

structure ObservationSpace (α : Type u) where
  carrier : Set α
  measurable : MeasurableSpace α

structure ControlAction (α β : Type u) where
  apply : α → β
  continuous : Continuous apply

structure SystemState (α : Type u) where
  value : α
  time : ℝ

structure ControlObservationSystem (α β γ : Type u) where
  stateSpace : Type u
  observationSpace : ObservationSpace β
  controlSpace : Type u
  dynamics : ControlAction (SystemState α) (SystemState α)
  observationMap : ControlAction α β
  admissibleControlSet : Set (ControlAction γ (ControlAction α α))

structure AdmissibleSystemPackage where
  system : ControlObservationSystem Unit Unit Unit
  stateProp : Prop
  observationProp : Prop
  controlProp : Prop
  stateEvidence : stateProp
  observationEvidence : observationProp
  controlEvidence : controlProp

def AdmissibleSystemClosed (P : AdmissibleSystemPackage) : Prop :=
  P.stateProp ∧ P.observationProp ∧ P.controlProp

theorem admissible_system_closed_from_evidence (P : AdmissibleSystemPackage) : AdmissibleSystemClosed P := by
  exact And.intro P.stateEvidence (And.intro P.observationEvidence P.controlEvidence)

end ControlObservationSystemsGovernedOrdinaryFoundation
end HautevilleHouse