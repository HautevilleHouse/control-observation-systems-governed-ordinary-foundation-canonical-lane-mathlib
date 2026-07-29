import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean

structure ObservabilityControllabilityProperty where
  observabilityGramian : Prop
  controllabilityGramian : Prop
  observabilityRankCondition : Prop
  controllabilityRankCondition : Prop
  observabilityGramianTerm : observabilityGramian
  controllabilityGramianTerm : controllabilityGramian
  observabilityRankConditionTerm : observabilityRankCondition
  controllabilityRankConditionTerm : controllabilityRankCondition

def ObservabilityControllabilityClosed (P : ObservabilityControllabilityProperty) : Prop :=
  P.observabilityGramian ∧ P.controllabilityGramian ∧
  P.observabilityRankCondition ∧ P.controllabilityRankCondition

theorem observability_controllability_closed_from_evidence
    (P : ObservabilityControllabilityProperty) (E : ObservabilityControllabilityProperty) :
    ObservabilityControllabilityClosed P := by
  exact And.intro P.observabilityGramianTerm
    (And.intro P.controllabilityGramianTerm
      (And.intro P.observabilityRankConditionTerm P.controllabilityRankConditionTerm))

end ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse