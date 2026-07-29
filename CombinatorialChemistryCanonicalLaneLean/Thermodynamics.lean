import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialChemistryCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsEnergy : ℝ
  enthalpy : ℝ
  entropy : ℝ
  equilibriumCondition : Prop
  spontaneityCriterion : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  equilibriumConditionClosed : T.equilibriumCondition
  spontaneityCriterionClosed : T.spontaneityCriterion

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.equilibriumCondition ∧ T.spontaneityCriterion

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.equilibriumConditionClosed E.spontaneityCriterionClosed

end CombinatorialChemistryCanonicalLaneLean
end HautevilleHouse