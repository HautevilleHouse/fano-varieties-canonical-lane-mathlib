import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure MoriProgramTerminationPackage where
  classification : KollarMoriClassificationPackage
  extremalRayContraction : Prop
  flipExists : Prop
  terminationFiniteSequence : Prop
  minimalModel : Prop

structure MoriProgramTerminationEvidence (M : MoriProgramTerminationPackage) where
  extremalRayContractionClosed : M.extremalRayContraction
  flipExistsClosed : M.flipExists
  terminationFiniteSequenceClosed : M.terminationFiniteSequence
  minimalModelClosed : M.minimalModel

def MoriProgramTerminationClosed (M : MoriProgramTerminationPackage) : Prop :=
  M.extremalRayContraction ∧ M.flipExists ∧
  M.terminationFiniteSequence ∧ M.minimalModel

theorem mori_program_termination_closed_from_evidence
    (M : MoriProgramTerminationPackage) (E : MoriProgramTerminationEvidence M) :
    MoriProgramTerminationClosed M := by
  exact And.intro E.extremalRayContractionClosed
    (And.intro E.flipExistsClosed
      (And.intro E.terminationFiniteSequenceClosed E.minimalModelClosed))

end HautevilleHouse
end FanoVarietiesCanonicalLaneLean
