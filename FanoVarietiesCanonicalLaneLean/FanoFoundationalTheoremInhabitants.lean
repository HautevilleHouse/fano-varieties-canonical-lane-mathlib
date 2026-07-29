import FanoVarietiesCanonicalLaneLean.FanoAnalyticEvidenceTerms

/-!
# Fano Foundational Theorem Inhabitants
-/

namespace HautevilleHouse
namespace FanoVarietiesCanonicalLaneLean

structure AnticanonicalFoundationalInhabitants where
  positivityCondition : Prop
  globalGeneration : Prop
  vanishingAboveDimension : Prop
  positivityConditionTerm : positivityCondition
  globalGenerationTerm : globalGeneration
  vanishingAboveDimensionTerm : vanishingAboveDimension

structure KodairaFoundationalInhabitants where
  cohomologyVanishing : Prop
  vanishingDegreeRange : Prop
  sufficientCondition : Prop
  cohomologyVanishingTerm : cohomologyVanishing
  vanishingDegreeRangeTerm : vanishingDegreeRange
  sufficientConditionTerm : sufficientCondition

structure MoriFoundationalInhabitants where
  coneTheorem : Prop
  contractionTheorem : Prop
  extremalRayClassification : Prop
  rayContractionMap : Prop
  coneTheoremTerm : coneTheorem
  contractionTheoremTerm : contractionTheorem
  extremalRayClassificationTerm : extremalRayClassification
  rayContractionMapTerm : rayContractionMap

structure MinimalModelFoundationalInhabitants where
  termination : Prop
  minimalModelExists : Prop
  abundanceConjecture : Prop
  relativeMinimalModel : Prop
  terminationTerm : termination
  minimalModelExistsTerm : minimalModelExists
  abundanceConjectureTerm : abundanceConjecture
  relativeMinimalModelTerm : relativeMinimalModel

structure FanoIndexFoundationalInhabitants where
  indexPositivity : Prop
  relationToAnticanonical : Prop
  indexBoundedByDimension : Prop
  indexPositivityTerm : indexPositivity
  relationToAnticanonicalTerm : relationToAnticanonical
  indexBoundedByDimensionTerm : indexBoundedByDimension

structure BoundednessFoundationalInhabitants where
  familiesOfFanosBounded : Prop
  dimensionBound : Prop
  deformationTypeBounded : Prop
  numberOfFamiliesFinite : Prop
  familiesOfFanosBoundedTerm : familiesOfFanosBounded
  dimensionBoundTerm : dimensionBound
  deformationTypeBoundedTerm : deformationTypeBounded
  numberOfFamiliesFiniteTerm : numberOfFamiliesFinite

structure FanoFoundationalTheoremInhabitants where
  anticanonical : AnticanonicalFoundationalInhabitants
  kodaira : KodairaFoundationalInhabitants
  mori : MoriFoundationalInhabitants
  minimalModel : MinimalModelFoundationalInhabitants
  fanoIndex : FanoIndexFoundationalInhabitants
  boundedness : BoundednessFoundationalInhabitants

end FanoVarietiesCanonicalLaneLean
end HautevilleHouse