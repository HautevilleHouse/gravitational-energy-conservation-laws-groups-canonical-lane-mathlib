import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure EnergyMomentumComplex where
  energyDensity : Prop
  momentumDensity : Prop
  stressTensor : Prop
  conservationEquation : energyDensity ∧ momentumDensity ∧ stressTensor

structure EnergyMomentumComplexEvidence (E : EnergyMomentumComplex) where
  energyDensityClosed : E.energyDensity
  momentumDensityClosed : E.momentumDensity
  stressTensorClosed : E.stressTensor
  conservationEquationClosed : E.conservationEquation

def EnergyMomentumComplexClosed (E : EnergyMomentumComplex) : Prop :=
  E.energyDensity ∧ E.momentumDensity ∧ E.stressTensor ∧ E.conservationEquation

theorem energy_momentum_complex_closed_from_evidence (E : EnergyMomentumComplex)
    (Ev : EnergyMomentumComplexEvidence E) : EnergyMomentumComplexClosed E := by
  exact And.intro Ev.energyDensityClosed
    (And.intro Ev.momentumDensityClosed
      (And.intro Ev.stressTensorClosed Ev.conservationEquationClosed))

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse