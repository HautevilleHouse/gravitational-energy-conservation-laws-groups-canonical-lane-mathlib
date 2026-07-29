import HautevilleHouse.GravitationalEnergyConservationLawsGroupsCanonicalLaneLean.BMSGroupRepresentation

/-!
# Gravitational Charge Algebra Package

This module defines the algebra of gravitational charges (BMS charges) and their conservation laws, including the Bondi mass-loss formula.
-/

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroups

structure GravitationalChargeAlgebraPackage {C : CovariantPhaseSpacePackage}
    {K : AsymptoticKillingFieldPackage C} {B : BMSGroupPackage K} where
  chargeBracket : Type u
  massCharge : Prop
  angularMomentumCharge : Prop
  supermomentumCharge : Prop
  chargeConservationLaw : Prop
  bondiMassLossFormula : Prop

structure GravitationalChargeAlgebraEvidence
    {C : CovariantPhaseSpacePackage} {K : AsymptoticKillingFieldPackage C}
    {B : BMSGroupPackage K} (A : GravitationalChargeAlgebraPackage B) where
  massChargeClosed : A.massCharge
  angularMomentumChargeClosed : A.angularMomentumCharge
  supermomentumChargeClosed : A.supermomentumCharge
  chargeConservationLawClosed : A.chargeConservationLaw
  bondiMassLossFormulaClosed : A.bondiMassLossFormula

def GravitationalChargeAlgebraClosed
    {C : CovariantPhaseSpacePackage} {K : AsymptoticKillingFieldPackage C}
    {B : BMSGroupPackage K} (A : GravitationalChargeAlgebraPackage B) : Prop :=
  A.massCharge ∧ A.angularMomentumCharge ∧ A.supermomentumCharge ∧
  A.chargeConservationLaw ∧ A.bondiMassLossFormula

theorem gravitational_charge_algebra_closed_from_evidence
    {C : CovariantPhaseSpacePackage} {K : AsymptoticKillingFieldPackage C}
    {B : BMSGroupPackage K} (A : GravitationalChargeAlgebraPackage B)
    (E : GravitationalChargeAlgebraEvidence A) : GravitationalChargeAlgebraClosed A := by
  exact And.intro E.massChargeClosed
    (And.intro E.angularMomentumChargeClosed
      (And.intro E.supermomentumChargeClosed
        (And.intro E.chargeConservationLawClosed E.bondiMassLossFormulaClosed)))

end GravitationalEnergyConservationLawsGroups
end HautevilleHouse