import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialChemistryCanonicalLaneLean

structure QuantumChemistryPackage where
  schrodingerEquation : Prop
  wavefunction : Prop
  bornInterpretation : Prop
  quantumNumbers : Prop
  orbitalApproximation : Prop
  variationalPrinciple : Prop
  perturbationTheory : Prop
  hartreeFockMethod : Prop

structure QuantumChemistryEvidence (Q : QuantumChemistryPackage) where
  schrodingerEquationClosed : Q.schrodingerEquation
  wavefunctionClosed : Q.wavefunction
  bornInterpretationClosed : Q.bornInterpretation
  quantumNumbersClosed : Q.quantumNumbers
  orbitalApproximationClosed : Q.orbitalApproximation
  variationalPrincipleClosed : Q.variationalPrinciple
  perturbationTheoryClosed : Q.perturbationTheory
  hartreeFockMethodClosed : Q.hartreeFockMethod

def QuantumChemistryClosed (Q : QuantumChemistryPackage) : Prop :=
  Q.schrodingerEquation ∧ Q.wavefunction ∧
  Q.bornInterpretation ∧ Q.quantumNumbers ∧
  Q.orbitalApproximation ∧ Q.variationalPrinciple ∧
  Q.perturbationTheory ∧ Q.hartreeFockMethod

theorem quantum_chemistry_closed_from_evidence
    (Q : QuantumChemistryPackage) (E : QuantumChemistryEvidence Q) :
    QuantumChemistryClosed Q := by
  exact And.intro E.schrodingerEquationClosed
    (And.intro E.wavefunctionClosed
      (And.intro E.bornInterpretationClosed
        (And.intro E.quantumNumbersClosed
          (And.intro E.orbitalApproximationClosed
            (And.intro E.variationalPrincipleClosed
              (And.intro E.perturbationTheoryClosed
                E.hartreeFockMethodClosed))))))

end CombinatorialChemistryCanonicalLaneLean
end HautevilleHouse