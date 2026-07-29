import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialChemistryCanonicalLaneLean

structure MolecularOrbitalBondingModel where
  atomicOrbitals : List Type
  linearCombination : Prop
  symmetryReduction : Prop
  overlapMatrix : Prop
  hamiltonianMatrix : Prop
  eigenvalueProblem : Prop

structure MolecularOrbitalBondingEvidence (M : MolecularOrbitalBondingModel) where
  linearCombinationClosed : M.linearCombination
  symmetryReductionClosed : M.symmetryReduction
  overlapMatrixClosed : M.overlapMatrix
  hamiltonianMatrixClosed : M.hamiltonianMatrix
  eigenvalueProblemClosed : M.eigenvalueProblem

def MolecularOrbitalBondingClosed (M : MolecularOrbitalBondingModel) : Prop :=
  M.linearCombination ∧ M.symmetryReduction ∧ M.overlapMatrix ∧ M.hamiltonianMatrix ∧ M.eigenvalueProblem

theorem molecular_orbital_bonding_closed_from_evidence (M : MolecularOrbitalBondingModel) (E : MolecularOrbitalBondingEvidence M) :
    MolecularOrbitalBondingClosed M := by
  exact And.intro E.linearCombinationClosed
    (And.intro E.symmetryReductionClosed
      (And.intro E.overlapMatrixClosed
        (And.intro E.hamiltonianMatrixClosed E.eigenvalueProblemClosed)))

end CombinatorialChemistryCanonicalLaneLean
end HautevilleHouse