import FanoVarietiesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure AdmissibleClass where
  object : FanoAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FanoWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse