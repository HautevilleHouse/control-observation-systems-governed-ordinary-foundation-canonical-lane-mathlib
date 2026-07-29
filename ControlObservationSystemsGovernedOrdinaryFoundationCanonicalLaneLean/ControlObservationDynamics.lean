import controlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean.ControlObservationPDE

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean

structure ControlObservationDynamicsPackage {G : GoverningOrdinaryFoundationPackage}
    {F : ControlObservationPDEPackage G} where
  stateEvolution : Prop
  observationMapping : Prop
  feedbackControl : Prop
  stabilityCondition : Prop

structure ControlObservationDynamicsEvidence {G : GoverningOrdinaryFoundationPackage}
    {F : ControlObservationPDEPackage G} (D : ControlObservationDynamicsPackage G F) where
  stateEvolutionClosed : D.stateEvolution
  observationMappingClosed : D.observationMapping
  feedbackControlClosed : D.feedbackControl
  stabilityConditionClosed : D.stabilityCondition

def ControlObservationDynamicsClosed {G : GoverningOrdinaryFoundationPackage}
    {F : ControlObservationPDEPackage G} (D : ControlObservationDynamicsPackage G F) : Prop :=
  D.stateEvolution ∧ D.observationMapping ∧ D.feedbackControl ∧ D.stabilityCondition

theorem control_observation_dynamics_closed_from_evidence
    {G : GoverningOrdinaryFoundationPackage} {F : ControlObservationPDEPackage G}
    (D : ControlObservationDynamicsPackage G F) (E : ControlObservationDynamicsEvidence D) :
    ControlObservationDynamicsClosed D := by
  exact And.intro E.stateEvolutionClosed
    (And.intro E.observationMappingClosed
      (And.intro E.feedbackControlClosed E.stabilityConditionClosed))

end ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse