import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GeodesicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeodesicAdmittedObject where
  space : GeodesicSpace
  geodesicComplete : Prop
  metricStructure : Prop
  geodesicModel : Type
  modelTopology : TopologicalSpace geodesicModel
  geodesicIsomorphic : Prop
  conclusion : geodesicIsomorphic

def GeodesicWitnessClosed (O : GeodesicAdmittedObject) : Prop :=
  O.geodesicIsomorphic

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse