import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialChemistryCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Prop
  activationEnergy : Prop
  reactionMechanism : Prop
  steadyStateApprox : Prop
  equilibriumConstant : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : R.rateLaw
  activationEnergyClosed : R.activationEnergy
  reactionMechanismClosed : R.reactionMechanism
  steadyStateApproxClosed : R.steadyStateApprox
  equilibriumConstantClosed : R.equilibriumConstant

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw ∧ R.activationEnergy ∧ R.reactionMechanism ∧ R.steadyStateApprox ∧ R.equilibriumConstant

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.reactionMechanismClosed
        (And.intro E.steadyStateApproxClosed E.equilibriumConstantClosed)))

end CombinatorialChemistryCanonicalLaneLean
end HautevilleHouse