import HautevilleHouse.GravitationalEnergyConservationLawsGroupsCanonicalLaneLean.AsymptoticSymmetryGroup

/-!
# Endpoint Classification Package
-/

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure EndpointClassificationPackage {G : RiemannianCurvaturePackage} {E : EnergyMomentumPackage G} {C : ConservationLawsPackage G E} {A : AsymptoticSymmetryGroupPackage G E C} where
  targetSpaceTime : Type
  targetTopology : TopologicalSpace targetSpaceTime
  asymptoticallyFlat : Prop
  bondiEnergyMomentumDefined : Prop
  endpointMatchesConservationStatement : Prop

structure EndpointClassificationEvidence {G : RiemannianCurvaturePackage} {E : EnergyMomentumPackage G} {C : ConservationLawsPackage G E} {A : AsymptoticSymmetryGroupPackage G E C} (Epkg : EndpointClassificationPackage G E C A) where
  asymptoticallyFlatClosed : Epkg.asymptoticallyFlat
  bondiEnergyMomentumDefinedClosed : Epkg.bondiEnergyMomentumDefined
  endpointMatchesConservationStatementClosed : Epkg.endpointMatchesConservationStatement

def EndpointClassificationClosed {G : RiemannianCurvaturePackage} {E : EnergyMomentumPackage G} {C : ConservationLawsPackage G E} {A : AsymptoticSymmetryGroupPackage G E C} (Epkg : EndpointClassificationPackage G E C A) : Prop :=
  Epkg.asymptoticallyFlat ∧ Epkg.bondiEnergyMomentumDefined ∧ Epkg.endpointMatchesConservationStatement

theorem endpoint_classification_closed_from_evidence {G : RiemannianCurvaturePackage} {E : EnergyMomentumPackage G} {C : ConservationLawsPackage G E} {A : AsymptoticSymmetryGroupPackage G E C} (Epkg : EndpointClassificationPackage G E C A) (Ev : EndpointClassificationEvidence Epkg) : EndpointClassificationClosed Epkg := by
  exact And.intro Ev.asymptoticallyFlatClosed (And.intro Ev.bondiEnergyMomentumDefinedClosed Ev.endpointMatchesConservationStatementClosed)

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse
