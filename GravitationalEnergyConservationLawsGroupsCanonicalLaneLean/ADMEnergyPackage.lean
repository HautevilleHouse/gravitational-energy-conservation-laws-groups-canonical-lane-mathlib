import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure ADMEnergyPackage where
  asymptoticallyFlatSlice : Type u
  inducedMetric : Type v
  extrinsicCurvature : Type w
  energyIntegrand : Type x
  momentumIntegrand : Type y
  admEnergyDefined : Prop
  admMomentumDefined : Prop
  positivityCondition : Prop
  boundaryTermAtInfinity : Prop
  energyMomentumFourVector : Prop

structure ADMEnergyEvidence (A : ADMEnergyPackage) where
  admEnergyDefinedClosed : A.admEnergyDefined
  admMomentumDefinedClosed : A.admMomentumDefined
  positivityConditionClosed : A.positivityCondition
  boundaryTermAtInfinityClosed : A.boundaryTermAtInfinity
  energyMomentumFourVectorClosed : A.energyMomentumFourVector

def ADMEnergyClosed (A : ADMEnergyPackage) : Prop :=
  A.admEnergyDefined ∧ A.admMomentumDefined ∧ A.positivityCondition ∧
  A.boundaryTermAtInfinity ∧ A.energyMomentumFourVector

theorem adm_energy_closed_from_evidence (A : ADMEnergyPackage)
    (Ev : ADMEnergyEvidence A) : ADMEnergyClosed A := by
  exact And.intro Ev.admEnergyDefinedClosed
    (And.intro Ev.admMomentumDefinedClosed
      (And.intro Ev.positivityConditionClosed
        (And.intro Ev.boundaryTermAtInfinityClosed Ev.energyMomentumFourVectorClosed)))

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse