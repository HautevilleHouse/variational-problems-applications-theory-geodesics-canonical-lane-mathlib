import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesics

structure MorseTheoryGeodesicPackage where
  loopSpace : Type u
  energyFunction : Type v
  criticalPoints : Prop
  morseIndex : Prop
  criticalPointsClassified : criticalPoints
  morseIndexClosed : morseIndex

structure MorseTheoryGeodesicEvidence (M : MorseTheoryGeodesicPackage) where
  criticalPointsClassified : M.criticalPointsClassified
  morseIndexClosed : M.morseIndexClosed

def MorseTheoryGeodesicClosed (M : MorseTheoryGeodesicPackage) : Prop :=
  M.criticalPointsClassified ∧ M.morseIndexClosed

theorem morse_theory_geodesic_closed_from_evidence
    (M : MorseTheoryGeodesicPackage) (E : MorseTheoryGeodesicEvidence M) :
    MorseTheoryGeodesicClosed M := by
  exact And.intro E.criticalPointsClassified E.morseIndexClosed

end VariationalProblemsApplicationsTheoryGeodesics
end HautevilleHouse