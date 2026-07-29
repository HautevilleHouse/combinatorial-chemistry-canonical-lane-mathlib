import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialChemistryCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialChemistryCanonicalLaneLean
end HautevilleHouse
