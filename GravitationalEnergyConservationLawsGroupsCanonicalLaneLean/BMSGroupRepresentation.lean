import HautevilleHouse.GravitationalEnergyConservationLawsGroupsCanonicalLaneLean.AsymptoticKillingFields

/-!
# BMS Group Representation Package

This module defines the Bondi–Metzner–Sachs (BMS) group as the group of asymptotic symmetries of asymptotically flat spacetimes at null infinity.
-/

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroups

structure BMSGroupPackage {C : CovariantPhaseSpacePackage}
    {K : AsymptoticKillingFieldPackage C} where
  groupMultiplication : Type u
  groupInverse : Type v
  supertranslations : Prop
  LorentzSubgroup : Prop
  actionOnPhaseSpace : Prop

structure BMSGroupEvidence {C : CovariantPhaseSpacePackage}
    {K : AsymptoticKillingFieldPackage C} (B : BMSGroupPackage K) where
  supertranslationsClosed : B.supertranslations
  LorentzSubgroupClosed : B.LorentzSubgroup
  actionOnPhaseSpaceClosed : B.actionOnPhaseSpace

def BMSGroupClosed {C : CovariantPhaseSpacePackage}
    {K : AsymptoticKillingFieldPackage C} (B : BMSGroupPackage K) : Prop :=
  B.supertranslations ∧ B.LorentzSubgroup ∧ B.actionOnPhaseSpace

theorem bms_group_closed_from_evidence
    {C : CovariantPhaseSpacePackage} {K : AsymptoticKillingFieldPackage C}
    (B : BMSGroupPackage K) (E : BMSGroupEvidence B) : BMSGroupClosed B := by
  exact And.intro E.supertranslationsClosed
    (And.intro E.LorentzSubgroupClosed E.actionOnPhaseSpaceClosed)

end GravitationalEnergyConservationLawsGroups
end HautevilleHouse