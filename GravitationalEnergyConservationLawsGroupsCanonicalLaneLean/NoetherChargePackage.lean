import GravitationalEnergyConservationLawsGroupsCanonicalLaneLean.KillingVectorFields

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure NoetherChargePackage {G : RiemannianCurvaturePackage}
    {K : KillingVectorFieldPackage G} where
  chargeDensity : Type u
  chargeCurrent : Type v
  conservationLaw : Prop
  chargeAssociated : Prop

structure NoetherChargeEvidence {G : RiemannianCurvaturePackage}
    {K : KillingVectorFieldPackage G} (N : NoetherChargePackage G K) where
  conservationLawClosed : N.conservationLaw
  chargeAssociatedClosed : N.chargeAssociated

def NoetherChargeClosed {G : RiemannianCurvaturePackage}
    {K : KillingVectorFieldPackage G} (N : NoetherChargePackage G K) : Prop :=
  N.conservationLaw ∧ N.chargeAssociated

theorem noether_charge_closed_from_evidence
    {G : RiemannianCurvaturePackage} {K : KillingVectorFieldPackage G}
    (N : NoetherChargePackage G K) (E : NoetherChargeEvidence N) :
    NoetherChargeClosed N := by
  exact And.intro E.conservationLawClosed E.chargeAssociatedClosed

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse