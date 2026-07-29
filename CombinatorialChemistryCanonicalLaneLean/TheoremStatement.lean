import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialChemistryCanonicalLaneLean

structure CombinatorialAdmittedObject where
  reactionSpace : Type
  reactionKinetics : Prop
  molecularOrbitals : Prop
  thermodynamics : Prop
  chemicalEquilibrium : Prop
  conclusion : reactionKinetics ∧ molecularOrbitals ∧ thermodynamics ∧ chemicalEquilibrium

def CombinatorialWitnessClosed (O : CombinatorialAdmittedObject) : Prop :=
  O.reactionKinetics ∧ O.molecularOrbitals ∧ O.thermodynamics ∧ O.chemicalEquilibrium

theorem combinatorial_witness_closed_from_object (O : CombinatorialAdmittedObject) :
    CombinatorialWitnessClosed O := by
  exact O.conclusion

end CombinatorialChemistryCanonicalLaneLean
end HautevilleHouse
