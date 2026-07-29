import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean

structure ControlledObject where
  system : Type u
  observation : Type v
  governingEquation : Prop
  ordinaryDynamics : Prop
  conclusion : governingEquation ∧ ordinaryDynamics

structure AdmissibleStatus where
  object : ControlledObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleStatus) : Prop :=
  ControlledWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse