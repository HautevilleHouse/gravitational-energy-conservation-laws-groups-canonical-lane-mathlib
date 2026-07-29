import HautevilleHouse.GravitationalEnergyConservationLawsGroupsCanonicalLaneLean.SymplecticCovariantPhaseSpace

/-!
# Asymptotic Killing Fields Package

This module defines asymptotic Killing vector fields on asymptotically flat spacetimes, which are used to define conserved charges at null infinity.
-/

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroups

structure AsymptoticKillingFieldPackage {C : CovariantPhaseSpacePackage} where
  asymptoticCondition : Type u
  killingEquationAtInfinity : Prop
  boundaryConditions : Prop
  chargeIntegrability : Prop

structure AsymptoticKillingFieldEvidence {C : CovariantPhaseSpacePackage}
    (K : AsymptoticKillingFieldPackage C) where
  killingEquationAtInfinityClosed : K.killingEquationAtInfinity
  boundaryConditionsClosed : K.boundaryConditions
  chargeIntegrabilityClosed : K.chargeIntegrability

def AsymptoticKillingFieldClosed {C : CovariantPhaseSpacePackage}
    (K : AsymptoticKillingFieldPackage C) : Prop :=
  K.killingEquationAtInfinity ∧ K.boundaryConditions ∧ K.chargeIntegrability

theorem asymptotic_killing_field_closed_from_evidence
    {C : CovariantPhaseSpacePackage} (K : AsymptoticKillingFieldPackage C)
    (E : AsymptoticKillingFieldEvidence K) : AsymptoticKillingFieldClosed K := by
  exact And.intro E.killingEquationAtInfinityClosed
    (And.intro E.boundaryConditionsClosed E.chargeIntegrabilityClosed)

end GravitationalEnergyConservationLawsGroups
end HautevilleHouse