import FanoVarietiesCanonicalLaneLean.FanoVarietiesAdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure MoriProgramPackage where
  extremalRayContraction : Prop
  flipConstructed : Prop
  terminationFinite : Prop
  minimalModelProduced : Prop

structure MoriProgramEvidence (M : MoriProgramPackage) where
  extremalRayContractionClosed : M.extremalRayContraction
  flipConstructedClosed : M.flipConstructed
  terminationFiniteClosed : M.terminationFinite
  minimalModelProducedClosed : M.minimalModelProduced

def MoriProgramClosed (M : MoriProgramPackage) : Prop :=
  M.extremalRayContraction ∧ M.flipConstructed ∧ M.terminationFinite ∧ M.minimalModelProduced

theorem mori_program_closed_from_evidence (M : MoriProgramPackage) (E : MoriProgramEvidence M) :
    MoriProgramClosed M := by
  exact And.intro E.extremalRayContractionClosed
    (And.intro E.flipConstructedClosed
      (And.intro E.terminationFiniteClosed E.minimalModelProducedClosed))

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse