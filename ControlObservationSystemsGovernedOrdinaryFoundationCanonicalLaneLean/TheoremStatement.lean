import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean

structure ControlObservationAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  observationSpace : Type
  observationTopology : TopologicalSpace observationSpace
  controlSystem : Prop
  observationMapping : carrier → observationSpace
  conclusion : controlSystem

def ControlObservationWitnessClosed (O : ControlObservationAdmittedObject) : Prop :=
  O.controlSystem

end ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse
