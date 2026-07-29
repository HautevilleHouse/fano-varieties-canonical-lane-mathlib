import FanoVarietiesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FanoSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FanoAdmittedObject where
  space : FanoSpace
  projectiveVariety : Prop
  smooth : Prop
  anticanonicalBundle : Type
  anticanonicalBundleTopology : TopologicalSpace anticanonicalBundle
  ampleAnticanonicalBundle : Prop
  conclusion : ampleAnticanonicalBundle

structure FanoEndgameState where
  object : FanoAdmittedObject

def FanoWitnessClosed (O : FanoAdmittedObject) : Prop :=
  O.ampleAnticanonicalBundle

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse