import HautevilleHouse.GravitationalEnergyConservationLawsGroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GravitationalEnergyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GravitationalEnergyConservationLawsGroupsCanonicalLaneLean
end HautevilleHouse
