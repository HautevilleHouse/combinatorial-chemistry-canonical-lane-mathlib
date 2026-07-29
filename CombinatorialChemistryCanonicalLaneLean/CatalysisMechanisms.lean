import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialChemistryCanonicalLaneLean

structure CatalyticCycle where
  catalyst : String
  substrate : String
  product : String
  intermediates : List String
  rateEnhancementFactor : Float

structure TransitionStateData where
  energyBarrier : Float
  geometry : String
  frequencyFactor : Float

theory_eyring_equation (k : Float) (T : Float) (dG : Float) : Float := k * (Real.exp (-dG / (8.314 * T)))

structure ReactionMechanism where
  catalystCycle : CatalyticCycle
  transitionState : TransitionStateData
  mechanismEvidence : catalystCycle.rateEnhancementFactor > 0.0

def CatalystAdmissible (C : CatalyticCycle) : Prop := C.rateEnhancementFactor > 1.0

end CombinatorialChemistryCanonicalLaneLean
end HautevilleHouse
