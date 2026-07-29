import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsGovernedOrdinaryFoundation.ControlObservationSystem

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundation

structure StabilizationPackage (α γ : Type u) where
  system : ControlObservationSystem α Unit γ
  feedbackLaw : ControlAction γ (ControlAction α α)
  closedLoopDynamics : ControlAction (SystemState α) (SystemState α)
  equilibrium : α
  stabilityCondition : Prop
  stabilityProof : stabilityCondition

def StabilizationClosed {α γ : Type u} (S : StabilizationPackage α γ) : Prop :=
  S.stabilityCondition

theorem stabilization_closed_from_evidence {α γ : Type u} (S : StabilizationPackage α γ) : StabilizationClosed S := by
  exact S.stabilityProof

end ControlObservationSystemsGovernedOrdinaryFoundation
end HautevilleHouse