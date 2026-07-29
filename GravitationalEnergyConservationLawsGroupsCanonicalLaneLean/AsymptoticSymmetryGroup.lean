import HautevilleHouse.GravitationalEnergyConservationLawsGroupsCanonicalLaneLean.ConservationLawsPackage

/-!
# Asymptotic Symmetry Group Package
-/

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure AsymptoticSymmetryGroupPackage {G : RiemannianCurvaturePackage} {E : EnergyMomentumPackage G} {C : ConservationLawsPackage G E} where
  groupStructure : Type
  actionOnSpaceTime : Prop
  chargeIntegralsDefined : Prop
  poincareSubgroup : Prop
  supertranslationStructure : Prop

structure AsymptoticSymmetryGroupEvidence {G : RiemannianCurvaturePackage} {E : EnergyMomentumPackage G} {C : ConservationLawsPackage G E} (A : AsymptoticSymmetryGroupPackage G E C) where
  actionOnSpaceTimeClosed : A.actionOnSpaceTime
  chargeIntegralsDefinedClosed : A.chargeIntegralsDefined
  poincareSubgroupClosed : A.poincareSubgroup
  supertranslationStructureClosed : A.supertranslationStructure

def AsymptoticSymmetryGroupClosed {G : RiemannianCurvaturePackage} {E : EnergyMomentumPackage G} {C : ConservationLawsPackage G E} (A : AsymptoticSymmetryGroupPackage G E C) : Prop :=
  A.actionOnSpaceTime ∧ A.chargeIntegralsDefined ∧ A.poincareSubgroup ∧ A.supertranslationStructure

theorem asymptotic_symmetry_group_closed_from_evidence {G : RiemannianCurvaturePackage} {E : EnergyMomentumPackage G} {C : ConservationLawsPackage G E} (A : AsymptoticSymmetryGroupPackage G E C) (Av : AsymptoticSymmetryGroupEvidence A) : AsymptoticSymmetryGroupClosed A := by
  exact And.intro Av.actionOnSpaceTimeClosed (And.intro Av.chargeIntegralsDefinedClosed (And.intro Av.poincareSubgroupClosed Av.supertranslationStructureClosed))

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse
