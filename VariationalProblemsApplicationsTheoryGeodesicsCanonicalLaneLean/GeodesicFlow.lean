import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure GeodesicFlowPackage {G : GeodesicVariationPackage} where
  cotangentBundle : Type u
  hamiltonian : cotangentBundle → ℝ
  hamiltonianVectorField : Type v
  geodesicFlowMap : ℝ → cotangentBundle → cotangentBundle
  flowComplete : Prop
  energyConserved : Prop

structure GeodesicFlowEvidence {G : GeodesicVariationPackage}
    (F : GeodesicFlowPackage G) where
  flowCompleteClosed : F.flowComplete
  energyConservedClosed : F.energyConserved

def GeodesicFlowClosed {G : GeodesicVariationPackage}
    (F : GeodesicFlowPackage G) : Prop :=
  F.flowComplete ∧ F.energyConserved

theorem geodesic_flow_closed_from_evidence
    {G : GeodesicVariationPackage} (F : GeodesicFlowPackage G)
    (E : GeodesicFlowEvidence F) : GeodesicFlowClosed F := by
  exact And.intro E.flowCompleteClosed E.energyConservedClosed

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse