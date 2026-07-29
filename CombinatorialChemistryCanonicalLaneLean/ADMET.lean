import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialChemistryCanonicalLaneLean

structure ADMETPackage where
  absorptionModel : Prop
  distributionModel : Prop
  metabolismModel : Prop
  excretionModel : Prop
  toxicityModel : Prop

structure ADMETEvidence (A : ADMETPackage) where
  absorptionModelClosed : A.absorptionModel
  distributionModelClosed : A.distributionModel
  metabolismModelClosed : A.metabolismModel
  excretionModelClosed : A.excretionModel
  toxicityModelClosed : A.toxicityModel

def ADMETClosed (A : ADMETPackage) : Prop :=
  A.absorptionModel ∧ A.distributionModel ∧ A.metabolismModel ∧
  A.excretionModel ∧ A.toxicityModel

theorem admet_closed_from_evidence (A : ADMETPackage)
    (E : ADMETEvidence A) : ADMETClosed A := by
  exact And.intro E.absorptionModelClosed
    (And.intro E.distributionModelClosed
      (And.intro E.metabolismModelClosed
        (And.intro E.excretionModelClosed E.toxicityModelClosed)))

end CombinatorialChemistryCanonicalLaneLean
end HautevilleHouse