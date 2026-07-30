import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure BonnetMyersPackage {G : GeodesicVariationPackage}
    {J : JacobiFieldPackage G} where
  ricciCurvatureLowerBound : ℝ
  diameterBound : ℝ
  ricciLowerBoundCondition : Prop
  diameterUpperBound : Prop
  fundamentalGroupFiniteness : Prop

structure BonnetMyersEvidence {G : GeodesicVariationPackage}
    {J : JacobiFieldPackage G} (B : BonnetMyersPackage G J) where
  ricciLowerBoundConditionClosed : B.ricciLowerBoundCondition
  diameterUpperBoundClosed : B.diameterUpperBound
  fundamentalGroupFinitenessClosed : B.fundamentalGroupFiniteness

def BonnetMyersClosed {G : GeodesicVariationPackage}
    {J : JacobiFieldPackage G} (B : BonnetMyersPackage G J) : Prop :=
  B.ricciLowerBoundCondition ∧ B.diameterUpperBound ∧ B.fundamentalGroupFiniteness

theorem bonnet_myers_closed_from_evidence
    {G : GeodesicVariationPackage} {J : JacobiFieldPackage G}
    (B : BonnetMyersPackage G J) (E : BonnetMyersEvidence B) :
    BonnetMyersClosed B := by
  exact And.intro E.ricciLowerBoundConditionClosed
    (And.intro E.diameterUpperBoundClosed E.fundamentalGroupFinitenessClosed)

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse