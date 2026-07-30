import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure LengthMinimizationPackage where
  spaceCurve : Type u
  lengthFunctional : Prop
  firstVariationFormula : Prop
  geodesicCharacterization : Prop

structure LengthMinimizationEvidence (L : LengthMinimizationPackage) where
  lengthFunctionalClosed : L.lengthFunctional
  firstVariationFormulaClosed : L.firstVariationFormula
  geodesicCharacterizationClosed : L.geodesicCharacterization

def LengthMinimizationClosed (L : LengthMinimizationPackage) : Prop :=
  L.lengthFunctional ∧ L.firstVariationFormula ∧ L.geodesicCharacterization

theorem length_minimization_closed_from_evidence
    (L : LengthMinimizationPackage) (E : LengthMinimizationEvidence L) :
    LengthMinimizationClosed L := by
  exact And.intro E.lengthFunctionalClosed
    (And.intro E.firstVariationFormulaClosed E.geodesicCharacterizationClosed)

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse