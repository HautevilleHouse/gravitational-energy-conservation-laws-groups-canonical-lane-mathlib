import canonicalLaneMathlib.AdmissibleClass
import GravitationalEnergyConservationLawsGroupsCanonicalLaneLean.BridgeLemmas
import GravitationalEnergyConservationLawsGroupsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

def ConstrainedGravitationalEnergyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gravitational_energy_endgame (A : AdmissibleClass) :
    ConstrainedGravitationalEnergyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse