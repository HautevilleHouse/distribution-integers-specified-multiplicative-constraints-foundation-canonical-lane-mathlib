import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean

structure AdmittedIntegerObject where
  integerStructure : DistributionIntegerModel
  constraintStructure : MultiplicativeConstraintStructure
  specConstComposition : SpecificationConstraintComposition constraintStructure
  closureWitness : Prop

structure AdmittedIntegerEvidence (A : AdmittedIntegerObject) where
  distributionClosed : DistributionIntegerClosed A.integerStructure
  constraintClosed : MultiplicativeConstraintClosed A.constraintStructure
  compositionClosed : SpecificationConstraintCompositionClosed A.specConstComposition
  closureWitnessClosed : A.closureWitness

def AdmittedIntegerClosed (A : AdmittedIntegerObject) : Prop :=
  DistributionIntegerClosed A.integerStructure ∧
  MultiplicativeConstraintClosed A.constraintStructure ∧
  SpecificationConstraintCompositionClosed A.specConstComposition ∧
  A.closureWitness

theorem admitted_integer_closed_from_evidence (A : AdmittedIntegerObject) (E : AdmittedIntegerEvidence A) : AdmittedIntegerClosed A :=
  And.intro E.distributionClosed
    (And.intro E.constraintClosed
      (And.intro E.compositionClosed E.closureWitnessClosed))

def ConstrainedFoundationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_foundation_endgame (A : AdmissibleClass) : ConstrainedFoundationClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean
end HautevilleHouse
