import GravitationalEnergyConservationLawsGroupsCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure EnergyMomentumTensorPackage {G : RiemannianCurvaturePackage} where
  stressEnergyTensor : Type u
  energyDensity : Type v
  momentumDensity : Type w
  conservationLaw : Prop
  divergenceFree : Prop
  contractedBianchiIdentity : Prop

structure EnergyMomentumTensorEvidence {G : RiemannianCurvaturePackage}
    (T : EnergyMomentumTensorPackage G) where
  conservationLawClosed : T.conservationLaw
  divergenceFreeClosed : T.divergenceFree
  contractedBianchiIdentityClosed : T.contractedBianchiIdentity

def EnergyMomentumTensorClosed {G : RiemannianCurvaturePackage}
    (T : EnergyMomentumTensorPackage G) : Prop :=
  T.conservationLaw ∧ T.divergenceFree ∧ T.contractedBianchiIdentity

theorem energy_momentum_tensor_closed_from_evidence
    {G : RiemannianCurvaturePackage} (T : EnergyMomentumTensorPackage G)
    (E : EnergyMomentumTensorEvidence T) : EnergyMomentumTensorClosed T := by
  exact And.intro E.conservationLawClosed
    (And.intro E.divergenceFreeClosed E.contractedBianchiIdentityClosed)

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse