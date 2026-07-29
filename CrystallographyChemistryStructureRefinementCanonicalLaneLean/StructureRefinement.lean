import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryStructureRefinementCanonicalLaneLean

structure StructureRefinementPackage where
  structuralModel : Type
  rFactor : ℝ
  weightedRFactor : ℝ
  goodnessOfFit : ℝ
  refinementConverged : Prop
  rFactorTerm : rFactor = 0.05
  weightedRFactorTerm : weightedRFactor = 0.07
  goodnessOfFitTerm : goodnessOfFit = 1.2
  convergedTerm : refinementConverged

structure StructureRefinementEvidence (S : StructureRefinementPackage) where
  rFactorClosed : S.rFactor = 0.05
  weightedRFactorClosed : S.weightedRFactor = 0.07
  goodnessClosed : S.goodnessOfFit = 1.2
  convergedClosed : S.refinementConverged

def StructureRefinementClosed (S : StructureRefinementPackage) : Prop :=
  S.rFactor = 0.05 ∧ S.weightedRFactor = 0.07 ∧ S.goodnessOfFit = 1.2 ∧ S.refinementConverged

theorem structure_refinement_closed_from_evidence
    (S : StructureRefinementPackage) (E : StructureRefinementEvidence S) :
    StructureRefinementClosed S := by
  exact And.intro E.rFactorClosed (And.intro E.weightedRFactorClosed (And.intro E.goodnessClosed E.convergedClosed))

end CrystallographyChemistryStructureRefinementCanonicalLaneLean
end HautevilleHouse
