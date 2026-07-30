import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesics

structure GeodesicRayPackage where
  rayFamily : Type u
  busemannFunction : Type v
  asymptoticDirections : Prop
  boundaryAtInfinity : Prop
  rayDefined : Prop
  busemannDefined : Prop
  rayDefinedClosed : rayDefined
  busemannDefinedClosed : busemannDefined
  asymptoticDirectionsClosed : asymptoticDirections
  boundaryAtInfinityClosed : boundaryAtInfinity

structure GeodesicRayEvidence (R : GeodesicRayPackage) where
  rayDefinedClosed : R.rayDefinedClosed
  busemannDefinedClosed : R.busemannDefinedClosed
  asymptoticDirectionsClosed : R.asymptoticDirectionsClosed
  boundaryAtInfinityClosed : R.boundaryAtInfinityClosed

def GeodesicRayClosed (R : GeodesicRayPackage) : Prop :=
  R.rayDefinedClosed ∧ R.busemannDefinedClosed ∧
  R.asymptoticDirectionsClosed ∧ R.boundaryAtInfinityClosed

theorem geodesic_ray_closed_from_evidence
    (R : GeodesicRayPackage) (E : GeodesicRayEvidence R) : GeodesicRayClosed R := by
  exact And.intro E.rayDefinedClosed
    (And.intro E.busemannDefinedClosed
      (And.intro E.asymptoticDirectionsClosed E.boundaryAtInfinityClosed))

end VariationalProblemsApplicationsTheoryGeodesics
end HautevilleHouse