import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure GeodesicLagrangianPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  lagrangian : Type w
  lagrangianCondition : Prop
  eulerLagrangeEquation : Prop
  geodesicEnergyFunctional : Prop

structure GeodesicLagrangianEvidence (G : GeodesicLagrangianPackage) where
  lagrangianConditionClosed : G.lagrangianCondition
  eulerLagrangeEquationClosed : G.eulerLagrangeEquation
  geodesicEnergyFunctionalClosed : G.geodesicEnergyFunctional

def GeodesicLagrangianClosed (G : GeodesicLagrangianPackage) : Prop :=
  G.lagrangianCondition ∧ G.eulerLagrangeEquation ∧ G.geodesicEnergyFunctional

theorem geodesic_lagrangian_closed_from_evidence
    (G : GeodesicLagrangianPackage) (E : GeodesicLagrangianEvidence G) :
    GeodesicLagrangianClosed G := by
  exact And.intro E.lagrangianConditionClosed
    (And.intro E.eulerLagrangeEquationClosed E.geodesicEnergyFunctionalClosed)

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse