import HautevilleHouse.GravitationalEnergyConservationLawsGroupsCanonicalLaneLean.AdmissibleClass

/-!
# Symplectic Covariant Phase Space Package

This module defines the symplectic structure on the covariant phase space for gravitational theories, which is essential for defining conserved charges and energy-momentum tensors.
-/

namespace HautevilleHouse
namespace GravitationalEnergyConservationLawsGroups

structure CovariantPhaseSpacePackage where
  baseManifold : Type u
  spacetimeDimension : Nat
  fieldBundle : Type v
  symplecticForm : Type w
  closedness : Prop
  nondegeneracy : Prop
  poissonBracketWellDefined : Prop

structure CovariantPhaseSpaceEvidence (C : CovariantPhaseSpacePackage) where
  closednessClosed : C.closedness
  nondegeneracyClosed : C.nondegeneracy
  poissonBracketWellDefinedClosed : C.poissonBracketWellDefined

def CovariantPhaseSpaceClosed (C : CovariantPhaseSpacePackage) : Prop :=
  C.closedness ∧ C.nondegeneracy ∧ C.poissonBracketWellDefined

theorem covariant_phase_space_closed_from_evidence (C : CovariantPhaseSpacePackage)
    (E : CovariantPhaseSpaceEvidence C) : CovariantPhaseSpaceClosed C := by
  exact And.intro E.closednessClosed (And.intro E.nondegeneracyClosed E.poissonBracketWellDefinedClosed)

end GravitationalEnergyConservationLawsGroups
end HautevilleHouse