import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean

structure StabilizationTheoremPackage where
  feedbackExistence : Prop
  closedLoopStability : Prop
  robustnessCondition : Prop
  optimalityCriterion : Prop
  feedbackExistenceTerm : feedbackExistence
  closedLoopStabilityTerm : closedLoopStability
  robustnessConditionTerm : robustnessCondition
  optimalityCriterionTerm : optimalityCriterion

def StabilizationClosed (S : StabilizationTheoremPackage) : Prop :=
  S.feedbackExistence ∧ S.closedLoopStability ∧ S.robustnessCondition ∧ S.optimalityCriterion

theorem stabilization_closed_from_evidence (S : StabilizationTheoremPackage) :
    StabilizationClosed S := by
  exact And.intro S.feedbackExistenceTerm
    (And.intro S.closedLoopStabilityTerm
      (And.intro S.robustnessConditionTerm S.optimalityCriterionTerm))

end ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse