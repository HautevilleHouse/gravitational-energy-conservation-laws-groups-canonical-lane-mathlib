import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure AdmissibleClass where
  object : GravitationalEnergyObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GravitationalEnergyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse
