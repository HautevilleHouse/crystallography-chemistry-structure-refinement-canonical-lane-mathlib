import CrystallographyChemistryStructureRefinementCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CrystallographyChemistryStructureRefinementCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CrystalStructureWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CrystallographyChemistryStructureRefinementCanonicalLaneLean
end HautevilleHouse