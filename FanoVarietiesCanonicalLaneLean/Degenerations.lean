import FanoVarietiesCanonicalLaneLean.FanoVariety

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure DegenerationPackage (X : FanoVariety) where
  specialDegeneration : X → Prop
  centralFiber : FanoVariety
  logCanonicalThreshold : Prop
  stableDegeneration : Prop

structure DegenerationEvidence {X : FanoVariety} (D : DegenerationPackage X) where
  specialDegClosed : D.specialDegeneration X
  centralFiberFano : D.centralFiber.ampleCanonicalBundle
  logCanonicalThresholdClosed : D.logCanonicalThreshold
  stableDegenerationClosed : D.stableDegeneration

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse