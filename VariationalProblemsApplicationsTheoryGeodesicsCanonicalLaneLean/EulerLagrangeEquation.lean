import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure EulerLagrangePackage where
  configurationSpace : Type u
  lagrangian : Type v
  actionFunctional : Type w
  variationalDerivative : Prop
  eulerLagrangeEquation : Prop

structure EulerLagrangeEvidence (E : EulerLagrangePackage) where
  variationalDerivativeClosed : E.variationalDerivative
  eulerLagrangeEquationClosed : E.eulerLagrangeEquation

def EulerLagrangeClosed (E : EulerLagrangePackage) : Prop :=
  E.variationalDerivative ∧ E.eulerLagrangeEquation

theorem euler_lagrange_closed_from_evidence (E : EulerLagrangePackage)
    (Ev : EulerLagrangeEvidence E) : EulerLagrangeClosed E := by
  exact And.intro Ev.variationalDerivativeClosed Ev.eulerLagrangeEquationClosed

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse