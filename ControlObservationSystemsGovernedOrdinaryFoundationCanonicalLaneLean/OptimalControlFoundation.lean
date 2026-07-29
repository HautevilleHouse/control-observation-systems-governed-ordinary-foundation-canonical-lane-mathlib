import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean

structure OptimalControlFoundation where
  costFunctionalDefined : Prop
  hamiltonJacobiBellmanEquation : Prop
  optimalFeedbackExistence : Prop
  valueFunctionRegularity : Prop
  costFunctionalDefinedTerm : costFunctionalDefined
  hamiltonJacobiBellmanEquationTerm : hamiltonJacobiBellmanEquation
  optimalFeedbackExistenceTerm : optimalFeedbackExistence
  valueFunctionRegularityTerm : valueFunctionRegularity

def OptimalControlClosed (O : OptimalControlFoundation) : Prop :=
  O.costFunctionalDefined ∧ O.hamiltonJacobiBellmanEquation ∧
  O.optimalFeedbackExistence ∧ O.valueFunctionRegularity

theorem optimal_control_closed_from_evidence (O : OptimalControlFoundation) :
    OptimalControlClosed O := by
  exact And.intro O.costFunctionalDefinedTerm
    (And.intro O.hamiltonJacobiBellmanEquationTerm
      (And.intro O.optimalFeedbackExistenceTerm O.valueFunctionRegularityTerm))

end ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse