import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialChemistryCanonicalLaneLean

structure CombinatorialSynthesisPackage where
  buildingBlocks : List Type u
  couplingReactions : List Prop
  screeningAssay : Prop
  libraryDiversity : Prop
  hitIdentification : Prop

structure CombinatorialSynthesisEvidence (S : CombinatorialSynthesisPackage) where
  screeningAssayClosed : S.screeningAssay
  libraryDiversityClosed : S.libraryDiversity
  hitIdentificationClosed : S.hitIdentification

def CombinatorialSynthesisClosed (S : CombinatorialSynthesisPackage) : Prop :=
  S.screeningAssay ∧ S.libraryDiversity ∧ S.hitIdentification

theorem combinatorial_synthesis_closed_from_evidence
    (S : CombinatorialSynthesisPackage)
    (E : CombinatorialSynthesisEvidence S) : CombinatorialSynthesisClosed S := by
  exact And.intro E.screeningAssayClosed
    (And.intro E.libraryDiversityClosed E.hitIdentificationClosed)

end CombinatorialChemistryCanonicalLaneLean
end HautevilleHouse