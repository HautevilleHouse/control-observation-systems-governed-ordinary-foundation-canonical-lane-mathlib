import controlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ControlObservationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ControlObservationAdmittedObject where
  space : ControlObservationSpace
  controlSystem : Prop
  observable : Prop
  governed : Prop
  ordinaryFoundation : Prop
  limitModel : Type
  limitTopology : TopologicalSpace limitModel
  homeomorphicToLimit : Prop
  conclusion : homeomorphicToLimit

structure ControlObservationEndgameState where
  object : ControlObservationAdmittedObject

def ControlObservationWitnessClosed (O : ControlObservationAdmittedObject) : Prop :=
  O.homeomorphicToLimit

end ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse