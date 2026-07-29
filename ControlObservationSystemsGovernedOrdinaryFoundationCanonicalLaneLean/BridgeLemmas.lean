import controlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ControlObservationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse