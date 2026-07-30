import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean.JacobiFieldConjugatePoints

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure MinimalGeodesicPackage {G : GeodesicVariationalPackage}
    (J : JacobiFieldPackage G) where
  minimizingGeodesicsExist : Prop
  hopfRinowTheorem : Prop
  cutLocusStructure : Prop
  lengthMinimizingCharacterization : Prop
  closedGeodesicExistence : Prop

def MinimalGeodesicClosed {G : GeodesicVariationalPackage} (M : MinimalGeodesicPackage G) : Prop :=
  M.minimizingGeodesicsExist ∧ M.hopfRinowTheorem ∧ M.cutLocusStructure ∧
  M.lengthMinimizingCharacterization ∧ M.closedGeodesicExistence

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse
