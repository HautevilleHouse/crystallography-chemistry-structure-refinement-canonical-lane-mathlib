import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistryStructureRefinementCanonicalLaneLean

structure XRayDiffractionPackage where
  wavelength : ℝ
  unitCell : Type
  structureFactor : Type
  braggsLawSat : Prop
  intensityFormula : Prop
  braggsLawTerm : braggsLawSat
  intensityTerm : intensityFormula

structure XRayDiffractionEvidence (X : XRayDiffractionPackage) where
  braggClosed : X.braggsLawSat
  intensityClosed : X.intensityFormula

def XRayDiffractionClosed (X : XRayDiffractionPackage) : Prop :=
  X.braggsLawSat ∧ X.intensityFormula

theorem x_ray_diffraction_closed_from_evidence
    (X : XRayDiffractionPackage) (E : XRayDiffractionEvidence X) :
    XRayDiffractionClosed X := by
  exact And.intro E.braggClosed E.intensityClosed

end CrystallographyChemistryStructureRefinementCanonicalLaneLean
end HautevilleHouse
