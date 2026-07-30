import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure ExponentialMapPackage (M : Type u) [TopologicalSpace M] [RiemannianManifold M] where
  tangentBundle : Type v
  exponentialMap : TangentBundle M → M
  normalCoordinates : Prop
  gaussLemma : Prop
  radialGeodesics : Prop
  normalCoordinatesClosed : normalCoordinates
  gaussLemmaClosed : gaussLemma
  radialGeodesicsClosed : radialGeodesics

structure ExponentialMapEvidence {M : Type u} [TopologicalSpace M] [RiemannianManifold M] (E : ExponentialMapPackage M) where
  normalCoordinatesClosed : E.normalCoordinates
  gaussLemmaClosed : E.gaussLemma
  radialGeodesicsClosed : E.radialGeodesics

def ExponentialMapClosed {M : Type u} [TopologicalSpace M] [RiemannianManifold M] (E : ExponentialMapPackage M) : Prop :=
  E.normalCoordinates ∧ E.gaussLemma ∧ E.radialGeodesics

theorem exponential_map_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [RiemannianManifold M]
    (E : ExponentialMapPackage M) (Ev : ExponentialMapEvidence E) : ExponentialMapClosed E := by
  exact And.intro Ev.normalCoordinatesClosed (And.intro Ev.gaussLemmaClosed Ev.radialGeodesicsClosed)

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse
