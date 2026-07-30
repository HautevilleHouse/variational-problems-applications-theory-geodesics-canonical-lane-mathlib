import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure MinimizingGeodesicsPackage (M : Type u) [TopologicalSpace M] [RiemannianManifold M] where
  hopfRinowTheorem : Prop
  geodesicCompleteness : Prop
  minimizingCurvesAreGeodesics : Prop
  convexNeighborhoods : Prop
  hopfRinowClosed : hopfRinowTheorem
  geodesicCompletenessClosed : geodesicCompleteness
  minimizingCurvesAreGeodesicsClosed : minimizingCurvesAreGeodesics
  convexNeighborhoodsClosed : convexNeighborhoods

structure MinimizingGeodesicsEvidence {M : Type u} [TopologicalSpace M] [RiemannianManifold M] (G : MinimizingGeodesicsPackage M) where
  hopfRinowClosed : G.hopfRinowTheorem
  geodesicCompletenessClosed : G.geodesicCompleteness
  minimizingCurvesAreGeodesicsClosed : G.minimizingCurvesAreGeodesics
  convexNeighborhoodsClosed : G.convexNeighborhoods

def MinimizingGeodesicsClosed {M : Type u} [TopologicalSpace M] [RiemannianManifold M] (G : MinimizingGeodesicsPackage M) : Prop :=
  G.hopfRinowTheorem ∧ G.geodesicCompleteness ∧ G.minimizingCurvesAreGeodesics ∧ G.convexNeighborhoods

theorem minimizing_geodesics_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [RiemannianManifold M]
    (G : MinimizingGeodesicsPackage M) (E : MinimizingGeodesicsEvidence G) : MinimizingGeodesicsClosed G := by
  exact And.intro E.hopfRinowClosed (And.intro E.geodesicCompletenessClosed (And.intro E.minimizingCurvesAreGeodesicsClosed E.convexNeighborhoodsClosed))

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse
