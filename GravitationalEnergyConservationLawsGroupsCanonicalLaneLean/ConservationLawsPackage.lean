import HautevilleHouse.GravitationalEnergyConservationLawsGroupsCanonicalLaneLean.EnergyMomentumPackage

/-!
# Conservation Laws Package
-/

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure ConservationLawsPackage {G : RiemannianCurvaturePackage} {E : EnergyMomentumPackage G} where
  localConservation : Prop
  globalConservation : Prop
  bondiMomentumConservation : Prop
  asymptoticSymmetryGroup : Type

structure ConservationLawsEvidence {G : RiemannianCurvaturePackage} {E : EnergyMomentumPackage G} (C : ConservationLawsPackage G E) where
  localConservationClosed : C.localConservation
  globalConservationClosed : C.globalConservation
  bondiMomentumConservationClosed : C.bondiMomentumConservation

def ConservationLawsClosed {G : RiemannianCurvaturePackage} {E : EnergyMomentumPackage G} (C : ConservationLawsPackage G E) : Prop :=
  C.localConservation ∧ C.globalConservation ∧ C.bondiMomentumConservation

theorem conservation_laws_closed_from_evidence {G : RiemannianCurvaturePackage} {E : EnergyMomentumPackage G} (C : ConservationLawsPackage G E) (Cv : ConservationLawsEvidence C) : ConservationLawsClosed C := by
  exact And.intro Cv.localConservationClosed (And.intro Cv.globalConservationClosed Cv.bondiMomentumConservationClosed)

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse
