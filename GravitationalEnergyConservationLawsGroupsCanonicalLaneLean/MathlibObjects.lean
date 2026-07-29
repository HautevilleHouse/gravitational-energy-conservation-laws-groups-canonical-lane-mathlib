import HautevilleHouse.GravitationalEnergyConservationLawsGroupsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GravitationalEnergySpace where
  carrier : Type
  topology : TopologicalSpace carrier
  metric : Type

structure GravitationalEnergyObject where
  space : GravitationalEnergySpace
  energyMomentumTensorDefined : Prop
  conservationLawHolds : Prop
  asymptoticSymmetryGroup : Type
  conclusion : conservationLawHolds

structure GravitationalEnergyEndgameState where
  object : GravitationalEnergyObject

def GravitationalEnergyWitnessClosed (O : GravitationalEnergyObject) : Prop :=
  O.conservationLawHolds

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse
