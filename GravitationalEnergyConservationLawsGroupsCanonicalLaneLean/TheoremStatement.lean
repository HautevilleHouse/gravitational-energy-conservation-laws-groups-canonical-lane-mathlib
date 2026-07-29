import HautevilleHouse.GravitationalEnergyConservationLawsGroupsCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure GravitationalEnergyAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  energyMomentumTensor : Type
  conservationLaw : Prop
  symmetryGroup : Type
  groupAction : Prop
  conclusion : conservationLaw ∧ groupAction

def GravitationalEnergyWitnessClosed (O : GravitationalEnergyAdmittedObject) : Prop :=
  O.conservationLaw ∧ O.groupAction

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse
