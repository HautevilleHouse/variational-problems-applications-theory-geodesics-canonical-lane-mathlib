import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean.GeodesicVariationalStructure

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure JacobiFieldPackage {G : GeodesicVariationalPackage} (J : G.manifold) where
  jacobiEquations : Prop
  initialConditions : Prop
  conjugatePointDefined : Prop
  morseIndexTheorem : Prop
  bonnetMyersEstimate : Prop

def JacobiFieldClosed {G : GeodesicVariationalPackage} (J : JacobiFieldPackage G) : Prop :=
  J.jacobiEquations ∧ J.initialConditions ∧ J.conjugatePointDefined ∧
  J.morseIndexTheorem ∧ J.bonnetMyersEstimate

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse
