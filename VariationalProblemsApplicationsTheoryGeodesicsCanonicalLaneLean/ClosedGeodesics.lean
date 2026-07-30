import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure ClosedGeodesicsPackage (M : Type u) [TopologicalSpace M] [RiemannianManifold M] where
  closedGeodesicExistence : Prop
  lyusternikFetTheorem : Prop
  morseIndexTheorem : Prop
  bottPeriodicity : Prop
  closedGeodesicExistenceClosed : closedGeodesicExistence
  lyusternikFetClosed : lyusternikFetTheorem
  morseIndexClosed : morseIndexTheorem
  bottPeriodicityClosed : bottPeriodicity

structure ClosedGeodesicsEvidence {M : Type u} [TopologicalSpace M] [RiemannianManifold M] (C : ClosedGeodesicsPackage M) where
  closedGeodesicExistenceClosed : C.closedGeodesicExistence
  lyusternikFetClosed : C.lyusternikFetTheorem
  morseIndexClosed : C.morseIndexTheorem
  bottPeriodicityClosed : C.bottPeriodicity

def ClosedGeodesicsClosed {M : Type u} [TopologicalSpace M] [RiemannianManifold M] (C : ClosedGeodesicsPackage M) : Prop :=
  C.closedGeodesicExistence ∧ C.lyusternikFetTheorem ∧ C.morseIndexTheorem ∧ C.bottPeriodicity

theorem closed_geodesics_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [RiemannianManifold M]
    (C : ClosedGeodesicsPackage M) (E : ClosedGeodesicsEvidence C) : ClosedGeodesicsClosed C := by
  exact And.intro E.closedGeodesicExistenceClosed (And.intro E.lyusternikFetClosed (And.intro E.morseIndexClosed E.bottPeriodicityClosed))

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse
