import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean

structure ControlFeedbackStructure where
  inputSpace : Type u
  feedbackLaw : observationSpace → inputSpace
  closedLoopDynamics : stateSpace → stateSpace
  stabilityCondition : Prop
  stabilityConditionTerm : stabilityCondition
  observationSpace : Type v
  stateSpace : Type w

def ControlFeedbackClosed (F : ControlFeedbackStructure) : Prop :=
  F.stabilityCondition

theorem control_feedback_closed_stability (F : ControlFeedbackStructure) :
    ControlFeedbackClosed F := by
  exact F.stabilityConditionTerm

end ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse