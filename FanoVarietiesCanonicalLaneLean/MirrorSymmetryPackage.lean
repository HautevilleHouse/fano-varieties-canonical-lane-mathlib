import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure MirrorSymmetryPackage where
  fano : CanonicalBundlePackage
  mirrorCalabiYau : Type u
  topologicalMirror : Prop
  hodgeDiamondMirror : Prop
  gromovWittenInvariants : Prop
  quantumCohomology : Prop

structure MirrorSymmetryEvidence (M : MirrorSymmetryPackage) where
  topologicalMirrorClosed : M.topologicalMirror
  hodgeDiamondMirrorClosed : M.hodgeDiamondMirror
  gromovWittenInvariantsClosed : M.gromovWittenInvariants
  quantumCohomologyClosed : M.quantumCohomology

def MirrorSymmetryClosed (M : MirrorSymmetryPackage) : Prop :=
  M.topologicalMirror ∧ M.hodgeDiamondMirror ∧
  M.gromovWittenInvariants ∧ M.quantumCohomology

theorem mirror_symmetry_closed_from_evidence
    (M : MirrorSymmetryPackage) (E : MirrorSymmetryEvidence M) :
    MirrorSymmetryClosed M := by
  exact And.intro E.topologicalMirrorClosed
    (And.intro E.hodgeDiamondMirrorClosed
      (And.intro E.gromovWittenInvariantsClosed E.quantumCohomologyClosed))

end HautevilleHouse
end FanoVarietiesCanonicalLaneLean
