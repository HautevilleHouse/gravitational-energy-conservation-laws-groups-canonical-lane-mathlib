import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure BondiMassLossPackage where
  nullHypersurface : Type u
  asymptoticShear : Type v
  newsTensor : Type w
  massLossFormula : Prop
  newsSquaredRelation : Prop
  positivityOfMass : Prop
  asymptoticFlatnessCondition : Prop

structure BondiMassLossEvidence (B : BondiMassLossPackage) where
  massLossFormulaClosed : B.massLossFormula
  newsSquaredRelationClosed : B.newsSquaredRelation
  positivityOfMassClosed : B.positivityOfMass
  asymptoticFlatnessConditionClosed : B.asymptoticFlatnessCondition

def BondiMassLossClosed (B : BondiMassLossPackage) : Prop :=
  B.massLossFormula ∧ B.newsSquaredRelation ∧ B.positivityOfMass ∧ B.asymptoticFlatnessCondition

theorem bondi_mass_loss_closed_from_evidence (B : BondiMassLossPackage)
    (Ev : BondiMassLossEvidence B) : BondiMassLossClosed B := by
  exact And.intro Ev.massLossFormulaClosed
    (And.intro Ev.newsSquaredRelationClosed
      (And.intro Ev.positivityOfMassClosed Ev.asymptoticFlatnessConditionClosed))

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse