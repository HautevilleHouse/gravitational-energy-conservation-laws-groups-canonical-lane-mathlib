import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

structure KillingVectorFieldPackage where
  vectorField : Prop
  metricCompatibility : Prop
  conservationCurrent : Prop
  symmetryGenerated : Prop

structure KillingVectorFieldEvidence (K : KillingVectorFieldPackage) where
  vectorFieldClosed : K.vectorField
  metricCompatibilityClosed : K.metricCompatibility
  conservationCurrentClosed : K.conservationCurrent
  symmetryGeneratedClosed : K.symmetryGenerated

def KillingVectorFieldClosed (K : KillingVectorFieldPackage) : Prop :=
  K.vectorField ∧ K.metricCompatibility ∧ K.conservationCurrent ∧ K.symmetryGenerated

theorem killing_vector_field_closed_from_evidence (K : KillingVectorFieldPackage)
    (Ev : KillingVectorFieldEvidence K) : KillingVectorFieldClosed K := by
  exact And.intro Ev.vectorFieldClosed
    (And.intro Ev.metricCompatibilityClosed
      (And.intro Ev.conservationCurrentClosed Ev.symmetryGeneratedClosed))

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse