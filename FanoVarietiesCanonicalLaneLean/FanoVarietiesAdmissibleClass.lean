import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure FanoVariety where
  carrier : Type u
  topology : TopologicalSpace carrier
  structureSheaf : Type v
  ampleAntiCanonicalBundle : Prop
  kltSingularities : Prop
  dimensionFinite : Prop

structure FanoAdmittedObject where
  variety : FanoVariety
  fanoCondition : FanoVariety.ampleAntiCanonicalBundle FanoVariety.carrier
  conclusion : FanoVariety.kltSingularities FanoVariety.carrier

structure AdmissibleClass where
  object : FanoAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FanoWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse