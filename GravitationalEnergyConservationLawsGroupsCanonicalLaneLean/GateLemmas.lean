import HautevilleHouse.GravitationalEnergyConservationLawsGroupsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse
