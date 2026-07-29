import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsGovernedOrdinaryFoundation.ControlObservationSystem

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundation

structure FoundationPackage where
  system : ControlObservationSystem Unit Unit Unit
  bridgeClosed : Prop
  gateClosed : Prop
  combinedClosure : Prop
  bridgeProof : bridgeClosed
  gateProof : gateClosed
  closureProof : combinedClosure

def FoundationClosed (F : FoundationPackage) : Prop :=
  F.combinedClosure

theorem foundation_closed_from_evidence (F : FoundationPackage) : FoundationClosed F := by
  exact F.closureProof

theorem foundation_closure_implies_constrained (F : FoundationPackage) : ConstrainedControlObservationClosure () := by
  exact And.intro F.bridgeProof F.gateProof

end ControlObservationSystemsGovernedOrdinaryFoundation
end HautevilleHouse