import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean

structure ObservabilityPackage where
  observabilityGramian : Prop
  detectabilityCondition : Prop
  observerGain : Prop
  errorDynamics : Prop

structure ObservabilityEvidence (O : ObservabilityPackage) where
  observabilityGramianClosed : O.observabilityGramian
  detectabilityConditionClosed : O.detectabilityCondition
  observerGainClosed : O.observerGain
  errorDynamicsClosed : O.errorDynamics

def ObservabilityClosed (O : ObservabilityPackage) : Prop :=
  O.observabilityGramian ∧ O.detectabilityCondition ∧ O.observerGain ∧ O.errorDynamics

theorem observability_closed_from_evidence (O : ObservabilityPackage)
    (E : ObservabilityEvidence O) : ObservabilityClosed O := by
  exact And.intro E.observabilityGramianClosed
    (And.intro E.detectabilityConditionClosed
      (And.intro E.observerGainClosed E.errorDynamicsClosed))

end ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse