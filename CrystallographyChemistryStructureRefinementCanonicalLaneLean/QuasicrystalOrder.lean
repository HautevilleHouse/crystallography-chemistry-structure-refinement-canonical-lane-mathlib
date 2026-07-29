import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryStructureRefinementCanonicalLaneLean

structure QuasicrystalOrderPackage where
  aperiodicTiling : Type
  penrosePattern : Type
  diffractionPattern : Type
  selfSimilarity : Prop
  forbiddenSymmetry : Prop
  selfSimilarityTerm : selfSimilarity
  forbiddenSymmetryTerm : forbiddenSymmetry

structure QuasicrystalOrderEvidence (Q : QuasicrystalOrderPackage) where
  selfSimilarityClosed : Q.selfSimilarity
  forbiddenSymmetryClosed : Q.forbiddenSymmetry

def QuasicrystalOrderClosed (Q : QuasicrystalOrderPackage) : Prop :=
  Q.selfSimilarity ∧ Q.forbiddenSymmetry

theorem quasicrystal_order_closed_from_evidence
    (Q : QuasicrystalOrderPackage) (E : QuasicrystalOrderEvidence Q) :
    QuasicrystalOrderClosed Q := by
  exact And.intro E.selfSimilarityClosed E.forbiddenSymmetryClosed

end CrystallographyChemistryStructureRefinementCanonicalLaneLean
end HautevilleHouse
