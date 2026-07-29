import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean

structure StabilizationPackage where
  feedbackLaw : Prop
  lyapunovFunction : Prop
  asymptoticStability : Prop
  controlBounds : Prop

structure StabilizationEvidence (S : StabilizationPackage) where
  feedbackLawClosed : S.feedbackLaw
  lyapunovFunctionClosed : S.lyapunovFunction
  asymptoticStabilityClosed : S.asymptoticStability
  controlBoundsClosed : S.controlBounds

def StabilizationClosed (S : StabilizationPackage) : Prop :=
  S.feedbackLaw ∧ S.lyapunovFunction ∧ S.asymptoticStability ∧ S.controlBounds

theorem stabilization_closed_from_evidence (S : StabilizationPackage)
    (E : StabilizationEvidence S) : StabilizationClosed S := by
  exact And.intro E.feedbackLawClosed
    (And.intro E.lyapunovFunctionClosed
      (And.intro E.asymptoticStabilityClosed E.controlBoundsClosed))

end ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse