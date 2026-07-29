import controlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean.ControlObservationDynamics

namespace HautevilleHouse
namespace ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean

structure EndpointClassificationPackage {G : GoverningOrdinaryFoundationPackage}
    {F : ControlObservationPDEPackage G} {D : ControlObservationDynamicsPackage G F}
    (Z : ControlObservationDynamicsClosed D) where
  targetStateSpace : Type u
  targetControlAchieved : Prop
  endpointMatchesTheoremStatement : Prop
  limitObservation : ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere targetStateSpace 3

structure EndpointClassificationEvidence {G : GoverningOrdinaryFoundationPackage}
    {F : ControlObservationPDEPackage G} {D : ControlObservationDynamicsPackage G F}
    {Z : ControlObservationDynamicsClosed D} (Epkg : EndpointClassificationPackage Z) where
  targetControlAchievedClosed : Epkg.targetControlAchieved
  endpointMatchesTheoremStatementClosed : Epkg.endpointMatchesTheoremStatement

def EndpointClassificationClosed {G : GoverningOrdinaryFoundationPackage}
    {F : ControlObservationPDEPackage G} {D : ControlObservationDynamicsPackage G F}
    {Z : ControlObservationDynamicsClosed D} (Epkg : EndpointClassificationPackage Z) : Prop :=
  Epkg.targetControlAchieved ∧ Epkg.endpointMatchesTheoremStatement

theorem endpoint_classification_closed_from_evidence
    {G : GoverningOrdinaryFoundationPackage} {F : ControlObservationPDEPackage G}
    {D : ControlObservationDynamicsPackage G F} {Z : ControlObservationDynamicsClosed D}
    (Epkg : EndpointClassificationPackage Z) (E : EndpointClassificationEvidence Epkg) :
    EndpointClassificationClosed Epkg := by
  exact And.intro E.targetControlAchievedClosed E.endpointMatchesTheoremStatementClosed

theorem endpoint_classification_supplies_mathlib_statement
    {G : GoverningOrdinaryFoundationPackage} {F : ControlObservationPDEPackage G}
    {D : ControlObservationDynamicsPackage G F} {Z : ControlObservationDynamicsClosed D}
    (Epkg : EndpointClassificationPackage Z) :
    @ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere
      Epkg.targetStateSpace Epkg.targetTopology 3 :=
  Epkg.limitObservation

end ControlObservationSystemsGovernedOrdinaryFoundationCanonicalLaneLean
end HautevilleHouse