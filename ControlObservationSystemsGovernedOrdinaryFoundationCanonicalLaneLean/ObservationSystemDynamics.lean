import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean

structure ObservationSystemDynamics where
  stateSpace : Type u
  observationSpace : Type v
  transitionFunction : stateSpace → stateSpace
  observationFunction : stateSpace → observationSpace
  initialCondition : stateSpace
  dynamicsContinuous : Prop
  observationContinuous : Prop
  dynamicsContinuousTerm : dynamicsContinuous
  observationContinuousTerm : observationContinuous

structure ObservationSystemDynamicsEvidence (D : ObservationSystemDynamics) where
  dynamicsContinuousClosed : D.dynamicsContinuous
  observationContinuousClosed : D.observationContinuous

def ObservationSystemDynamicsClosed (D : ObservationSystemDynamics) : Prop :=
  D.dynamicsContinuous ∧ D.observationContinuous

theorem observation_system_dynamics_closed_from_evidence
    (D : ObservationSystemDynamics) (E : ObservationSystemDynamicsEvidence D) :
    ObservationSystemDynamicsClosed D := by
  exact And.intro E.dynamicsContinuousClosed E.observationContinuousClosed

end ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse