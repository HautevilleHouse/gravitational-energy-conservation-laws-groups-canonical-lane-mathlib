import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure EnergyMomentumPackage where
  spacetime : Type u
  metric : Type v
  stressEnergyTensor : Type w
  hamiltonianGenerator : Type x
  boundaryTerm : Type y
  conservedCurrent : Type z
  metricSmooth : Prop
  stressEnergyConserved : Prop
  hamiltonianVariationFormula : Prop
  boundaryTermControlled : Prop
  currentClosed : Prop

structure EnergyMomentumEvidence (E : EnergyMomentumPackage) where
  metricSmoothClosed : E.metricSmooth
  stressEnergyConservedClosed : E.stressEnergyConserved
  hamiltonianVariationFormulaClosed : E.hamiltonianVariationFormula
  boundaryTermControlledClosed : E.boundaryTermControlled
  currentClosedClosed : E.currentClosed

def EnergyMomentumClosed (E : EnergyMomentumPackage) : Prop :=
  E.metricSmooth ∧ E.stressEnergyConserved ∧ E.hamiltonianVariationFormula ∧
  E.boundaryTermControlled ∧ E.currentClosed

theorem energy_momentum_closed_from_evidence (E : EnergyMomentumPackage)
    (Ev : EnergyMomentumEvidence E) : EnergyMomentumClosed E := by
  exact And.intro Ev.metricSmoothClosed
    (And.intro Ev.stressEnergyConservedClosed
      (And.intro Ev.hamiltonianVariationFormulaClosed
        (And.intro Ev.boundaryTermControlledClosed Ev.currentClosedClosed)))

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse