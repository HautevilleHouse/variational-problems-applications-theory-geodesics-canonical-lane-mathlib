import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure SyngeTheoremPackage {G : GeodesicVariationPackage}
    {J : JacobiFieldPackage G} where
  evenDimension : Prop
  orientable : Prop
  closedManifold : Prop
  positiveCurvature : Prop
  existenceOfClosedGeodesic : Prop

structure SyngeTheoremEvidence {G : GeodesicVariationPackage}
    {J : JacobiFieldPackage G} (S : SyngeTheoremPackage G J) where
  evenDimensionClosed : S.evenDimension
  orientableClosed : S.orientable
  closedManifoldClosed : S.closedManifold
  positiveCurvatureClosed : S.positiveCurvature
  existenceOfClosedGeodesicClosed : S.existenceOfClosedGeodesic

def SyngeTheoremClosed {G : GeodesicVariationPackage}
    {J : JacobiFieldPackage G} (S : SyngeTheoremPackage G J) : Prop :=
  S.evenDimension ∧ S.orientable ∧ S.closedManifold ∧ S.positiveCurvature ∧ S.existenceOfClosedGeodesic

theorem synge_theorem_closed_from_evidence
    {G : GeodesicVariationPackage} {J : JacobiFieldPackage G}
    (S : SyngeTheoremPackage G J) (E : SyngeTheoremEvidence S) :
    SyngeTheoremClosed S := by
  exact And.intro E.evenDimensionClosed
    (And.intro E.orientableClosed
      (And.intro E.closedManifoldClosed
        (And.intro E.positiveCurvatureClosed E.existenceOfClosedGeodesicClosed)))

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse