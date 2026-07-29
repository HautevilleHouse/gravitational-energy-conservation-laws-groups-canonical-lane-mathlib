import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure NoetherCurrentPackage where
  lagrangian : Prop
  symmetryGroup : Prop
  conservedCurrent : Prop
  energyMomentumTensorDerived : Prop

structure NoetherCurrentEvidence (N : NoetherCurrentPackage) where
  lagrangianClosed : N.lagrangian
  symmetryGroupClosed : N.symmetryGroup
  conservedCurrentClosed : N.conservedCurrent
  energyMomentumTensorDerivedClosed : N.energyMomentumTensorDerived

def NoetherCurrentClosed (N : NoetherCurrentPackage) : Prop :=
  N.lagrangian ∧ N.symmetryGroup ∧ N.conservedCurrent ∧ N.energyMomentumTensorDerived

theorem noether_current_closed_from_evidence (N : NoetherCurrentPackage)
    (Ev : NoetherCurrentEvidence N) : NoetherCurrentClosed N := by
  exact And.intro Ev.lagrangianClosed
    (And.intro Ev.symmetryGroupClosed
      (And.intro Ev.conservedCurrentClosed Ev.energyMomentumTensorDerivedClosed))

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse