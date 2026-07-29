import controlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean.GoverningOrdinaryFoundation

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean

structure ControlObservationPDEPackage (G : GoverningOrdinaryFoundationPackage) where
  timeParameter : Type u
  stateAt : timeParameter → Type v
  initialConditionMatches : Prop
  differentialStateEquation : Prop
  observationOutput : Prop

structure ControlObservationPDEEvidence {G : GoverningOrdinaryFoundationPackage}
    (F : ControlObservationPDEPackage G) where
  initialConditionMatchesClosed : F.initialConditionMatches
  differentialStateEquationClosed : F.differentialStateEquation
  observationOutputClosed : F.observationOutput

def ControlObservationPDEClosed {G : GoverningOrdinaryFoundationPackage}
    (F : ControlObservationPDEPackage G) : Prop :=
  F.initialConditionMatches ∧ F.differentialStateEquation ∧ F.observationOutput

theorem control_observation_pde_closed_from_evidence
    {G : GoverningOrdinaryFoundationPackage} (F : ControlObservationPDEPackage G)
    (E : ControlObservationPDEEvidence F) : ControlObservationPDEClosed F := by
  exact And.intro E.initialConditionMatchesClosed
    (And.intro E.differentialStateEquationClosed E.observationOutputClosed)

end ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse