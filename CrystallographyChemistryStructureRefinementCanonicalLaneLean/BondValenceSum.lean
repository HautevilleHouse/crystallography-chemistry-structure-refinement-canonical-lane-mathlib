import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryStructureRefinementCanonicalLaneLean

structure BondValenceSumPackage where
  bondLength : ℝ
  bondValence : ℝ
  valenceSum : ℝ
  bondValenceParameter : ℝ
  brownFormula : Prop
  valenceMatching : Prop
  brownFormulaTerm : brownFormula
  valenceMatchingTerm : valenceMatching

structure BondValenceSumEvidence (B : BondValenceSumPackage) where
  brownFormulaClosed : B.brownFormula
  valenceMatchingClosed : B.valenceMatching

def BondValenceSumClosed (B : BondValenceSumPackage) : Prop :=
  B.brownFormula ∧ B.valenceMatching

theorem bond_valence_sum_closed_from_evidence
    (B : BondValenceSumPackage) (E : BondValenceSumEvidence B) :
    BondValenceSumClosed B := by
  exact And.intro E.brownFormulaClosed E.valenceMatchingClosed

end CrystallographyChemistryStructureRefinementCanonicalLaneLean
end HautevilleHouse
