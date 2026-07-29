import canonicalLaneMathlib.AdmissibleClass
import DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean.MultiplicativeConstraintPackage
import DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean.DistributionSpecification

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean

structure MultiplicativeConstraintFoundation where
  constraint : MultiplicativeConstraintPackage
  constraintEvidence : MultiplicativeConstraintEvidence constraint
  distribution : DistributionSpecificationPackage
  distributionEvidence : DistributionSpecificationEvidence distribution
  coherenceCondition : Prop
  coherenceConditionTerm : coherenceCondition

def MultiplicativeConstraintFoundationClosed (F : MultiplicativeConstraintFoundation) : Prop :=
  MultiplicativeConstraintClosed F.constraint ∧
  DistributionSpecificationClosed F.distribution ∧
  F.coherenceCondition

theorem multiplicative_constraint_foundation_closed_from_evidence
    (F : MultiplicativeConstraintFoundation) :
    MultiplicativeConstraintFoundationClosed F := by
  exact And.intro
    (multiplicative_constraint_closed_from_evidence F.constraint F.constraintEvidence)
    (And.intro
      (distribution_specification_closed_from_evidence F.distribution F.distributionEvidence)
      F.coherenceConditionTerm)

end DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean
end HautevilleHouse