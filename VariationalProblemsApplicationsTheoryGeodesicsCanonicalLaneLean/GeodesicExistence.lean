import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure GeodesicExistencePackage where
  riemannianManifold : Type u
  metric : Type v
  geodesicEquation : Prop
  localExistence : Prop
  uniqueness : Prop

structure GeodesicExistenceEvidence (G : GeodesicExistencePackage) where
  geodesicEquationClosed : G.geodesicEquation
  localExistenceClosed : G.localExistence
  uniquenessClosed : G.uniqueness

def GeodesicExistenceClosed (G : GeodesicExistencePackage) : Prop :=
  G.geodesicEquation ∧ G.localExistence ∧ G.uniqueness

theorem geodesic_existence_closed_from_evidence (G : GeodesicExistencePackage)
    (Ev : GeodesicExistenceEvidence G) : GeodesicExistenceClosed G := by
  exact And.intro Ev.geodesicEquationClosed
    (And.intro Ev.localExistenceClosed Ev.uniquenessClosed)

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse