import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialChemistryCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstant : ℝ
  reactionQuotient : ℝ
  equilibriumExpression : Prop
  leChateliersPrinciple : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  equilibriumExpressionClosed : C.equilibriumExpression
  leChateliersPrincipleClosed : C.leChateliersPrinciple

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.equilibriumExpression ∧ C.leChateliersPrinciple

theorem chemical_equilibrium_closed_from_evidence
    (C : ChemicalEquilibriumPackage)
    (E : ChemicalEquilibriumEvidence C) : ChemicalEquilibriumClosed C := by
  exact And.intro E.equilibriumExpressionClosed E.leChateliersPrincipleClosed

end CombinatorialChemistryCanonicalLaneLean
end HautevilleHouse