import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure JacobiFieldPackage (G : GeodesicVariationPackage) where
  geodesic : G.curveSpace
  jacobiFieldType : Type v
  jacobiEquation : Prop
  linearizedGeodesicEquation : Prop
  conjugatePointCondition : Prop

structure JacobiFieldEvidence {G : GeodesicVariationPackage} (J : JacobiFieldPackage G) where
  jacobiEquationClosed : J.jacobiEquation
  linearizedGeodesicEquationClosed : J.linearizedGeodesicEquation
  conjugatePointConditionClosed : J.conjugatePointCondition

def JacobiFieldClosed {G : GeodesicVariationPackage} (J : JacobiFieldPackage G) : Prop :=
  J.jacobiEquation ∧ J.linearizedGeodesicEquation ∧ J.conjugatePointCondition

theorem jacobi_field_closed_from_evidence
    {G : GeodesicVariationPackage} (J : JacobiFieldPackage G)
    (E : JacobiFieldEvidence J) : JacobiFieldClosed J := by
  exact And.intro E.jacobiEquationClosed
    (And.intro E.linearizedGeodesicEquationClosed E.conjugatePointConditionClosed)

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse