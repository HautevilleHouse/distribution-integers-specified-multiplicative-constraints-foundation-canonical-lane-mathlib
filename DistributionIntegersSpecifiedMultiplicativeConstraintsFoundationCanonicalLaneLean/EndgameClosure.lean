import canonicalLaneMathlib.AdmissibleClass
import DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean.MultiplicativeConstraintFoundation
import DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean.ConstraintRefinement

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MultiplicativeConstraintFoundationClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedDistributionIntegersClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_distribution_integers_endgame (A : AdmissibleClass) :
    ConstrainedDistributionIntegersClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean
end HautevilleHouse