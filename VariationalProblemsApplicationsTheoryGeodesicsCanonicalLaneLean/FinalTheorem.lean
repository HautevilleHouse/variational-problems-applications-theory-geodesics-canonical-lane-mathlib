import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

def ConstrainedGeodesicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geodesic_endgame (A : AdmissibleClass) :
    ConstrainedGeodesicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse
