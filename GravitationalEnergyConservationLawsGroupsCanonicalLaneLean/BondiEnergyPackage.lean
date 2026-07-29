import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure BondiEnergyPackage where
  nullInfinity : Type u
  newsFunction : Type v
  massLossFormula : Prop
  conservationAtInfinity : Prop
  memoryEffectAccounted : Prop

structure BondiEnergyEvidence (B : BondiEnergyPackage) where
  newsFunctionClosed : Prop
  massLossFormulaClosed : B.massLossFormula
  conservationAtInfinityClosed : B.conservationAtInfinity
  memoryEffectAccountedClosed : B.memoryEffectAccounted

def BondiEnergyClosed (B : BondiEnergyPackage) : Prop :=
  B.massLossFormula ∧ B.conservationAtInfinity ∧ B.memoryEffectAccounted

theorem bondi_energy_closed_from_evidence (B : BondiEnergyPackage) (E : BondiEnergyEvidence B) :
    BondiEnergyClosed B := by
  exact And.intro E.massLossFormulaClosed
    (And.intro E.conservationAtInfinityClosed E.memoryEffectAccountedClosed)

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse