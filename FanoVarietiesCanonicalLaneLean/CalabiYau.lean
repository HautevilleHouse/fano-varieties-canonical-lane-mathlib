import FanoVarietiesCanonicalLaneLean.FanoVariety

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure CalabiYauProperty (X : FanoVariety) where
  ricciFlatness : Prop
  holonomyContainedInSU : Prop
  c1vanishes : X.anticanonicalClass → Prop
  yauTheoremApplied : Prop

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse