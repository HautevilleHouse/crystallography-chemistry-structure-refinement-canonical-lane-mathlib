import CrystallographyChemistryStructureRefinementCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CrystallographyChemistryStructureRefinementCanonicalLaneLean

structure AdmissibleClass where
  object : CrystalStructureAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CrystalStructureWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CrystallographyChemistryStructureRefinementCanonicalLaneLean
end HautevilleHouse