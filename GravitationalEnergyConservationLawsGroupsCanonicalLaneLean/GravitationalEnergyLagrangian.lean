import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure GravitationalEnergyLagrangian where
  energyDensity : Type u
  canonicalStressEnergy : Type v
  conservationLaw : Prop
  boundaryTerm : Prop
  lagrangianWellDefined : Prop

structure GravitationalEnergyLagrangianEvidence (L : GravitationalEnergyLagrangian) where
  conservationLawClosed : L.conservationLaw
  boundaryTermClosed : L.boundaryTerm
  lagrangianWellDefinedClosed : L.lagrangianWellDefined

def GravitationalEnergyLagrangianClosed (L : GravitationalEnergyLagrangian) : Prop :=
  L.conservationLaw ∧ L.boundaryTerm ∧ L.lagrangianWellDefined

theorem gravitational_energy_lagrangian_closed_from_evidence
    (L : GravitationalEnergyLagrangian) (E : GravitationalEnergyLagrangianEvidence L) :
    GravitationalEnergyLagrangianClosed L := by
  exact And.intro E.conservationLawClosed (And.intro E.boundaryTermClosed E.lagrangianWellDefinedClosed)

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse