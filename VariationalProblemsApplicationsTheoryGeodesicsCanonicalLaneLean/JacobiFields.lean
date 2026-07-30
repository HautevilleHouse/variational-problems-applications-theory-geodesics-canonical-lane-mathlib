import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure JacobiFieldsPackage (M : Type u) [TopologicalSpace M] [RiemannianManifold M] where
  jacobiEquation : Prop
  conjugatePoints : Prop
  indexForm : Prop
  sturmComparison : Prop
  bonnetMyersTheorem : Prop
  jacobiEquationClosed : jacobiEquation
  conjugatePointsClosed : conjugatePoints
  indexFormClosed : indexForm
  sturmComparisonClosed : sturmComparison
  bonnetMyersClosed : bonnetMyersTheorem

structure JacobiFieldsEvidence {M : Type u} [TopologicalSpace M] [RiemannianManifold M] (J : JacobiFieldsPackage M) where
  jacobiEquationClosed : J.jacobiEquation
  conjugatePointsClosed : J.conjugatePoints
  indexFormClosed : J.indexForm
  sturmComparisonClosed : J.sturmComparison
  bonnetMyersClosed : J.bonnetMyersTheorem

def JacobiFieldsClosed {M : Type u} [TopologicalSpace M] [RiemannianManifold M] (J : JacobiFieldsPackage M) : Prop :=
  J.jacobiEquation ∧ J.conjugatePoints ∧ J.indexForm ∧ J.sturmComparison ∧ J.bonnetMyersTheorem

theorem jacobi_fields_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [RiemannianManifold M]
    (J : JacobiFieldsPackage M) (E : JacobiFieldsEvidence J) : JacobiFieldsClosed J := by
  exact And.intro E.jacobiEquationClosed (And.intro E.conjugatePointsClosed (And.intro E.indexFormClosed (And.intro E.sturmComparisonClosed E.bonnetMyersClosed)))

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse
