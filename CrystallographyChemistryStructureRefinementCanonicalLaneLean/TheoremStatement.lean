import CrystallographyChemistryStructureRefinementCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace CrystallographyChemistryStructureRefinementCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  constrainedStatement := "Canonical crystal structure characterization closed under symmetry and refinement conditions",
  certificateLane := "crystal_constrained",
  carriedRemainder := "classical source boundary carried by formalization"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "crystal_constrained" := by
  rfl

end CrystallographyChemistryStructureRefinementCanonicalLaneLean
end HautevilleHouse