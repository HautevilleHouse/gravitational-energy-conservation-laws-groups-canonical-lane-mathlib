import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure KillingSymmetryPackage where
  spacetime : Type u
  metric : Type v
  killingField : Type w
  stationaryCondition : Prop
  axisymmetryCondition : Prop
  conservedKillingCharge : Prop
  ergosphereStructure : Prop
  horizonKillingField : Prop

structure KillingSymmetryEvidence (K : KillingSymmetryPackage) where
  stationaryConditionClosed : K.stationaryCondition
  axisymmetryConditionClosed : K.axisymmetryCondition
  conservedKillingChargeClosed : K.conservedKillingCharge
  ergosphereStructureClosed : K.ergosphereStructure
  horizonKillingFieldClosed : K.horizonKillingField

def KillingSymmetryClosed (K : KillingSymmetryPackage) : Prop :=
  K.stationaryCondition ∧ K.axisymmetryCondition ∧ K.conservedKillingCharge ∧
  K.ergosphereStructure ∧ K.horizonKillingField

theorem killing_symmetry_closed_from_evidence (K : KillingSymmetryPackage)
    (Ev : KillingSymmetryEvidence K) : KillingSymmetryClosed K := by
  exact And.intro Ev.stationaryConditionClosed
    (And.intro Ev.axisymmetryConditionClosed
      (And.intro Ev.conservedKillingChargeClosed
        (And.intro Ev.ergosphereStructureClosed Ev.horizonKillingFieldClosed)))

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse