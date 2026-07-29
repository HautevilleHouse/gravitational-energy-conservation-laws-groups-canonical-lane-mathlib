import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure ADMMassPackage where
  asymptoticallyFlat : Prop
  massIntegral : Type u
  positiveMassTheorem : Prop
  energyConservationBoundary : Prop
  massWellDefined : Prop

structure ADMMassEvidence (M : ADMMassPackage) where
  asymptoticallyFlatClosed : M.asymptoticallyFlat
  positiveMassTheoremClosed : M.positiveMassTheorem
  energyConservationBoundaryClosed : M.energyConservationBoundary
  massWellDefinedClosed : M.massWellDefined

def ADMMassClosed (M : ADMMassPackage) : Prop :=
  M.asymptoticallyFlat ∧ M.positiveMassTheorem ∧ M.energyConservationBoundary ∧ M.massWellDefined

theorem adm_mass_closed_from_evidence (M : ADMMassPackage) (E : ADMMassEvidence M) :
    ADMMassClosed M := by
  exact And.intro E.asymptoticallyFlatClosed
    (And.intro E.positiveMassTheoremClosed
      (And.intro E.energyConservationBoundaryClosed E.massWellDefinedClosed))

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse