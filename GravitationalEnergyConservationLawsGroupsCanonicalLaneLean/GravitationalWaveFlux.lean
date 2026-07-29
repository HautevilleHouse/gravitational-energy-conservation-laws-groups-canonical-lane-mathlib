import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure GravitationalWaveFluxPackage where
  waveMetric : Type u
  perturbation : Type v
  stressEnergyPseudoTensor : Type w
  fluxIntegral : Type x
  balanceLaw : Prop
  quadrupoleFormula : Prop
  fluxPositivity : Prop
  asymptoticFalloff : Prop

structure GravitationalWaveFluxEvidence (G : GravitationalWaveFluxPackage) where
  balanceLawClosed : G.balanceLaw
  quadrupoleFormulaClosed : G.quadrupoleFormula
  fluxPositivityClosed : G.fluxPositivity
  asymptoticFalloffClosed : G.asymptoticFalloff

def GravitationalWaveFluxClosed (G : GravitationalWaveFluxPackage) : Prop :=
  G.balanceLaw ∧ G.quadrupoleFormula ∧ G.fluxPositivity ∧ G.asymptoticFalloff

theorem gravitational_wave_flux_closed_from_evidence (G : GravitationalWaveFluxPackage)
    (Ev : GravitationalWaveFluxEvidence G) : GravitationalWaveFluxClosed G := by
  exact And.intro Ev.balanceLawClosed
    (And.intro Ev.quadrupoleFormulaClosed
      (And.intro Ev.fluxPositivityClosed Ev.asymptoticFalloffClosed))

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse