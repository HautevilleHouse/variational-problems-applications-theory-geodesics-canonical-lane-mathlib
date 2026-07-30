import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean

structure MorseIndexPackage {J : JacobiFieldPackage} where
  indexTheoremStatement : Prop
  nullityRelation : Prop
  morseIndexEvidence : J.conjugatePointDefinition

structure MorseIndexEvidence {J : JacobiFieldPackage} (M : MorseIndexPackage J) where
  indexTheoremStatementClosed : M.indexTheoremStatement
  nullityRelationClosed : M.nullityRelation

def MorseIndexClosed {J : JacobiFieldPackage} (M : MorseIndexPackage J) : Prop :=
  M.indexTheoremStatement ∧ M.nullityRelation

theorem morse_index_closed_from_evidence
    {J : JacobiFieldPackage} (M : MorseIndexPackage J) (E : MorseIndexEvidence M) :
    MorseIndexClosed M := by
  exact And.intro E.indexTheoremStatementClosed E.nullityRelationClosed

end VariationalProblemsApplicationsTheoryGeodesicsCanonicalLaneLean
end HautevilleHouse