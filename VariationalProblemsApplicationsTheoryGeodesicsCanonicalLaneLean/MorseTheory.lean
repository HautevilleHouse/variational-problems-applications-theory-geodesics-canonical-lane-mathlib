import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure MorseTheoryPackage where
  energyFunctional : Prop
  criticalPoints : Prop
  morseIndex : Prop
  cellAttachment : Prop

structure MorseTheoryEvidence (M : MorseTheoryPackage) where
  energyFunctionalClosed : M.energyFunctional
  criticalPointsClosed : M.criticalPoints
  morseIndexClosed : M.morseIndex
  cellAttachmentClosed : M.cellAttachment

def MorseTheoryClosed (M : MorseTheoryPackage) : Prop :=
  M.energyFunctional ∧ M.criticalPoints ∧ M.morseIndex ∧ M.cellAttachment

theorem morse_theory_closed_from_evidence (M : MorseTheoryPackage)
    (Ev : MorseTheoryEvidence M) : MorseTheoryClosed M := by
  exact And.intro Ev.energyFunctionalClosed
    (And.intro Ev.criticalPointsClosed
      (And.intro Ev.morseIndexClosed Ev.cellAttachmentClosed))

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse