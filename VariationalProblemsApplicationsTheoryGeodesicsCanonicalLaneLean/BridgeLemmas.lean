import HautevilleHouse.VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeodesicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse