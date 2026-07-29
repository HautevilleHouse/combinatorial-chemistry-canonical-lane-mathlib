import canonicalLaneMathlib.AdmissibleClass
import CombinatorialChemistryCanonicalLaneLean.ReactionKinetics
import CombinatorialChemistryCanonicalLaneLean.MolecularOrbitalTheory
import CombinatorialChemistryCanonicalLaneLean.Thermodynamics
import CombinatorialChemistryCanonicalLaneLean.ChemicalEquilibrium
import CombinatorialChemistryCanonicalLaneLean.QuantumChemistry

namespace HautevilleHouse
namespace CombinatorialChemistryCanonicalLaneLean

def CombinedChemistryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem combined_chemistry_endgame (A : AdmissibleClass) :
    CombinedChemistryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialChemistryCanonicalLaneLean
end HautevilleHouse