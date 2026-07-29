import canonicalLaneMathlib.AdmissibleClass
import DistributionIntegersMultiplicativeConstraints.DistributionSemiringConstraints
import DistributionIntegersMultiplicativeConstraints.FactorisationClosureConstraints

namespace HautevilleHouse
namespace DistributionIntegersMultiplicativeConstraints

structure AdmissibleConstraintClass {A : Type} {D : DistributionSemiring A}
    (P : DistributionSemiringPackage A D)
    (F : FactorisationClosurePackage P) where
  object : AdmittedObject
  constraintSatisfied : P.constraintSatisfied
  factorisationClosureClosed : FactorisationClosureClosed F
  remainderRecorded : Prop

def bridgeClosed (A : AdmissibleConstraintClass) : Prop :=
  A.constraintSatisfied

def gateClosed (A : AdmissibleConstraintClass) : Prop :=
  A.remainderRecorded ∨ A.factorisationClosureClosed

theorem bridge_from_admissible_class (A : AdmissibleConstraintClass) :
    bridgeClosed A := by
  exact A.constraintSatisfied

theorem gate_from_admissible_class (A : AdmissibleConstraintClass) :
    gateClosed A := by
  exact Or.inr A.factorisationClosureClosed

def ConstrainedMultiplicativeClosure (A : AdmissibleConstraintClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_multiplicative_endgame (A : AdmissibleConstraintClass) :
    ConstrainedMultiplicativeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionIntegersMultiplicativeConstraints
end HautevilleHouse
