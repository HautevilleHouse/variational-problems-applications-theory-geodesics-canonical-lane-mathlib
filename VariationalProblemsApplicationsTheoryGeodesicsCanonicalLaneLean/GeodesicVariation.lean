import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure GeodesicVariationPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  curveSpace : Type w
  energyFunctional : curveSpace → ℝ
  lengthFunctional : curveSpace → ℝ
  variationFieldSpace : Type x
  firstVariationFormula : Prop
  secondVariationFormula : Prop

structure GeodesicVariationEvidence (G : GeodesicVariationPackage) where
  firstVariationFormulaClosed : G.firstVariationFormula
  secondVariationFormulaClosed : G.secondVariationFormula

def GeodesicVariationClosed (G : GeodesicVariationPackage) : Prop :=
  G.firstVariationFormula ∧ G.secondVariationFormula

theorem geodesic_variation_closed_from_evidence
    (G : GeodesicVariationPackage) (E : GeodesicVariationEvidence G) :
    GeodesicVariationClosed G := by
  exact And.intro E.firstVariationFormulaClosed E.secondVariationFormulaClosed

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse