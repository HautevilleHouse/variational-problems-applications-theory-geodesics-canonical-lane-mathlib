import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure GeodesicVariationalPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  riemannianMetric : Type v
  energyFunctional : Type w
  lengthFunctional : Type x
  geodesicEquation : Prop
  firstVariationFormula : Prop
  syngeEquality : Prop
  clairaultRelation : Prop
  exponentialMapDefined : Prop
  injectivityRadiusPositive : Prop

structure GeodesicVariationalEvidence (G : GeodesicVariationalPackage) where
  geodesicEquationClosed : G.geodesicEquation
  firstVariationFormulaClosed : G.firstVariationFormula
  syngeEqualityClosed : G.syngeEquality
  clairaultRelationClosed : G.clairaultRelation
  exponentialMapDefinedClosed : G.exponentialMapDefined
  injectivityRadiusPositiveClosed : G.injectivityRadiusPositive

def GeodesicVariationalClosed (G : GeodesicVariationalPackage) : Prop :=
  G.geodesicEquation ∧ G.firstVariationFormula ∧ G.syngeEquality ∧
  G.clairaultRelation ∧ G.exponentialMapDefined ∧ G.injectivityRadiusPositive

theorem geodesic_variational_closed_from_evidence
    (G : GeodesicVariationalPackage) (E : GeodesicVariationalEvidence G) :
    GeodesicVariationalClosed G := by
  exact And.intro E.geodesicEquationClosed
    (And.intro E.firstVariationFormulaClosed
      (And.intro E.syngeEqualityClosed
        (And.intro E.clairaultRelationClosed
          (And.intro E.exponentialMapDefinedClosed
            E.injectivityRadiusPositiveClosed))))

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse
