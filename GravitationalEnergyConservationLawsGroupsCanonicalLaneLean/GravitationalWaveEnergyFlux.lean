import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure GravitationalWaveEnergyFlux where
  strainTensor : Type u
  energyFluxIntegral : Type v
  quadrupoleFormula : Prop
  conservationViaRadiation : Prop
  backreactionAccounted : Prop

structure GravitationalWaveEnergyFluxEvidence (F : GravitationalWaveEnergyFlux) where
  quadrupoleFormulaClosed : F.quadrupoleFormula
  conservationViaRadiationClosed : F.conservationViaRadiation
  backreactionAccountedClosed : F.backreactionAccounted

def GravitationalWaveEnergyFluxClosed (F : GravitationalWaveEnergyFlux) : Prop :=
  F.quadrupoleFormula ∧ F.conservationViaRadiation ∧ F.backreactionAccounted

theorem gravitational_wave_energy_flux_closed_from_evidence
    (F : GravitationalWaveEnergyFlux) (E : GravitationalWaveEnergyFluxEvidence F) :
    GravitationalWaveEnergyFluxClosed F := by
  exact And.intro E.quadrupoleFormulaClosed
    (And.intro E.conservationViaRadiationClosed E.backreactionAccountedClosed)

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse