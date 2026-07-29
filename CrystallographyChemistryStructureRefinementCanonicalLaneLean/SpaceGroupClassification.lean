import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryStructureRefinementCanonicalLaneLean

structure SpaceGroupClassificationPackage where
  bravaisLattice : Type
  spaceGroup : Type
  pointGroup : Type
  latticeSystemClassified : Prop
  spaceGroupOperations : Prop
  bravaisLatticeClassified : Prop
  bravaisLatticeClassifiedTerm : bravaisLatticeClassified
  spaceGroupOpsTerm : spaceGroupOperations

structure SpaceGroupClassificationEvidence (P : SpaceGroupClassificationPackage) where
  latticeSystemClosed : P.latticeSystemClassified
  spaceGroupOpClosed : P.spaceGroupOperations
  bravaisClosed : P.bravaisLatticeClassified

def SpaceGroupClassificationClosed (P : SpaceGroupClassificationPackage) : Prop :=
  P.latticeSystemClassified ∧ P.spaceGroupOperations ∧ P.bravaisLatticeClassified

theorem space_group_classification_closed_from_evidence
    (P : SpaceGroupClassificationPackage) (E : SpaceGroupClassificationEvidence P) :
    SpaceGroupClassificationClosed P := by
  exact And.intro E.latticeSystemClosed (And.intro E.spaceGroupOpClosed E.bravaisClosed)

end CrystallographyChemistryStructureRefinementCanonicalLaneLean
end HautevilleHouse
