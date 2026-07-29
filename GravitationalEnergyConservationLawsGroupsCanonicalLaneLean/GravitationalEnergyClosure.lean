import GravitationalEnergyConservationLawsGroupsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

def GravitationalEnergyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem gravitational_energy_endgame (A : AdmissibleClass) :
    GravitationalEnergyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse