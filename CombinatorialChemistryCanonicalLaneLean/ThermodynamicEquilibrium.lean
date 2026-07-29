import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialChemistryCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  gibbsFreeEnergy : Prop
  entropyChange : Prop
  enthalpyChange : Prop
  equilibriumConstant : Prop
  vanHoffEquation : Prop

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  entropyChangeClosed : T.entropyChange
  enthalpyChangeClosed : T.enthalpyChange
  equilibriumConstantClosed : T.equilibriumConstant
  vanHoffEquationClosed : T.vanHoffEquation

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.entropyChange ∧ T.enthalpyChange ∧ T.equilibriumConstant ∧ T.vanHoffEquation

theorem thermodynamic_equilibrium_closed_from_evidence (T : ThermodynamicEquilibriumPackage) (E : ThermodynamicEquilibriumEvidence T) :
    ThermodynamicEquilibriumClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.entropyChangeClosed
      (And.intro E.enthalpyChangeClosed
        (And.intro E.equilibriumConstantClosed E.vanHoffEquationClosed)))

end CombinatorialChemistryCanonicalLaneLean
end HautevilleHouse