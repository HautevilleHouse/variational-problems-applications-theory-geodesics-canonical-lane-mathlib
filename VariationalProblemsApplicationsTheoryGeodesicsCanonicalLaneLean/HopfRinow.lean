import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure HopfRinowPackage where
  completeMetricSpace : Prop
  geodesicallyComplete : Prop
  geodesicConnectedness : Prop
  heineBorelProperty : Prop

structure HopfRinowEvidence (H : HopfRinowPackage) where
  completeMetricSpaceClosed : H.completeMetricSpace
  geodesicallyCompleteClosed : H.geodesicallyComplete
  geodesicConnectednessClosed : H.geodesicConnectedness
  heineBorelPropertyClosed : H.heineBorelProperty

def HopfRinowClosed (H : HopfRinowPackage) : Prop :=
  H.completeMetricSpace ∧ H.geodesicallyComplete ∧ H.geodesicConnectedness ∧ H.heineBorelProperty

theorem hopf_rinow_closed_from_evidence (H : HopfRinowPackage)
    (Ev : HopfRinowEvidence H) : HopfRinowClosed H := by
  exact And.intro Ev.completeMetricSpaceClosed
    (And.intro Ev.geodesicallyCompleteClosed
      (And.intro Ev.geodesicConnectednessClosed Ev.heineBorelPropertyClosed))

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse