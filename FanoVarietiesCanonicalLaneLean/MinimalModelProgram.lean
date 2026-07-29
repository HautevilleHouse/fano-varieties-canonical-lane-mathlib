import FanoVarietiesCanonicalLaneLean.MoriProgram

/-!
# Minimal Model Program Package
-/

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure MinimalModelProgramPackage {A : AnticanonicalBundlePackage} {K : KodairaVanishingPackage A}
    {M : MoriProgramPackage A K} where
  termination : Prop
  minimalModelExists : Prop
  abundanceConjecture : Prop
  relativeMinimalModel : Prop

structure MinimalModelProgramEvidence {A : AnticanonicalBundlePackage} {K : KodairaVanishingPackage A}
    {M : MoriProgramPackage A K} (MM : MinimalModelProgramPackage A K M) where
  terminationClosed : MM.termination
  minimalModelExistsClosed : MM.minimalModelExists
  abundanceConjectureClosed : MM.abundanceConjecture
  relativeMinimalModelClosed : MM.relativeMinimalModel

def MinimalModelProgramClosed {A : AnticanonicalBundlePackage} {K : KodairaVanishingPackage A}
    {M : MoriProgramPackage A K} (MM : MinimalModelProgramPackage A K M) : Prop :=
  MM.termination ∧ MM.minimalModelExists ∧ MM.abundanceConjecture ∧ MM.relativeMinimalModel

theorem minimal_model_program_closed_from_evidence {A : AnticanonicalBundlePackage} {K : KodairaVanishingPackage A}
    {M : MoriProgramPackage A K} (MM : MinimalModelProgramPackage A K M) (E : MinimalModelProgramEvidence MM) : MinimalModelProgramClosed MM := by
  exact And.intro E.terminationClosed (And.intro E.minimalModelExistsClosed (And.intro E.abundanceConjectureClosed E.relativeMinimalModelClosed))

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse