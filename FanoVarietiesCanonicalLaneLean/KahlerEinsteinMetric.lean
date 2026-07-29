import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure KahlerEinsteinMetricPackage where
  kahlerMetricExists : Prop
  ricciCurvaturePositive : Prop
  mongeAmpereEquation : Prop
  uniquenessUpToScaling : Prop

structure KahlerEinsteinMetricEvidence (K : KahlerEinsteinMetricPackage) where
  kahlerMetricExistsClosed : K.kahlerMetricExists
  ricciCurvaturePositiveClosed : K.ricciCurvaturePositive
  mongeAmpereEquationClosed : K.mongeAmpereEquation
  uniquenessUpToScalingClosed : K.uniquenessUpToScaling

def KahlerEinsteinMetricClosed (K : KahlerEinsteinMetricPackage) : Prop :=
  K.kahlerMetricExists ∧ K.ricciCurvaturePositive ∧ K.mongeAmpereEquation ∧ K.uniquenessUpToScaling

theorem kahler_einstein_metric_closed_from_evidence (K : KahlerEinsteinMetricPackage) (E : KahlerEinsteinMetricEvidence K) :
    KahlerEinsteinMetricClosed K := by
  exact And.intro E.kahlerMetricExistsClosed
    (And.intro E.ricciCurvaturePositiveClosed
      (And.intro E.mongeAmpereEquationClosed E.uniquenessUpToScalingClosed))

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse