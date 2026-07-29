import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GravitationalEnergyConservationLawsGroupsCanonicalLaneLean.GravitationalEnergyLagrangian

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure NoetherConservationPackage {L : GravitationalEnergyLagrangian} where
  symmetryGroup : Type u
  noetherCurrent : Type v
  currentConservation : Prop
  chargeConservation : Prop
  groupActionWellDefined : Prop

structure NoetherConservationEvidence {L : GravitationalEnergyLagrangian}
    (N : NoetherConservationPackage L) where
  currentConservationClosed : N.currentConservation
  chargeConservationClosed : N.chargeConservation
  groupActionWellDefinedClosed : N.groupActionWellDefined

def NoetherConservationClosed {L : GravitationalEnergyLagrangian}
    (N : NoetherConservationPackage L) : Prop :=
  N.currentConservation ∧ N.chargeConservation ∧ N.groupActionWellDefined

theorem noether_conservation_closed_from_evidence
    {L : GravitationalEnergyLagrangian} (N : NoetherConservationPackage L)
    (E : NoetherConservationEvidence N) : NoetherConservationClosed N := by
  exact And.intro E.currentConservationClosed
    (And.intro E.chargeConservationClosed E.groupActionWellDefinedClosed)

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse