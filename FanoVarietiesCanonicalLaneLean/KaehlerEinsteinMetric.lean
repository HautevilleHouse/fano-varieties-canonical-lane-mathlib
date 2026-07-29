import FanoVarietiesCanonicalLaneLean.FanoVariety
import FanoVarietiesCanonicalLaneLean.KStability

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure KaehlerEinsteinMetricPackage (X : FanoVariety) where
  ricciCurvaturePositive : Prop
  scalarCurvatureConstant : Prop
  complexStructureCompatible : Prop
  existenceProved : Prop

structure KaehlerEinsteinMetricEvidence {X : FanoVariety} (K : KaehlerEinsteinMetricPackage X) where
  ricciPosClosed : K.ricciCurvaturePositive
  scalarConstantClosed : K.scalarCurvatureConstant
  complexCompatibleClosed : K.complexStructureCompatible
  existenceClosed : K.existenceProved

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse