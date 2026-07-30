import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesics

structure GeodesicExistencePackage where
  completeManifold : Type u
  boundaryConditions : Prop
  minimizingGeodesicExists : Prop
  lengthMinimizingProperty : Prop
  existenceClosed : minimizingGeodesicExists
  lengthMinimizingClosed : lengthMinimizingProperty

structure GeodesicExistenceEvidence (E : GeodesicExistencePackage) where
  existenceClosed : E.existenceClosed
  lengthMinimizingClosed : E.lengthMinimizingClosed

def GeodesicExistenceClosed (E : GeodesicExistencePackage) : Prop :=
  E.existenceClosed ∧ E.lengthMinimizingClosed

theorem geodesic_existence_closed_from_evidence
    (E : GeodesicExistencePackage) (Ev : GeodesicExistenceEvidence E) :
    GeodesicExistenceClosed E := by
  exact And.intro Ev.existenceClosed Ev.lengthMinimizingClosed

end VariationalProblemsApplicationsTheoryGeodesics
end HautevilleHouse