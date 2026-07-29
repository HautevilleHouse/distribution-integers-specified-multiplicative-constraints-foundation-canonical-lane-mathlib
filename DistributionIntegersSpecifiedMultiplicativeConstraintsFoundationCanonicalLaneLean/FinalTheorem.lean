import DistributionIntegersSpecifiedMultiplicativeConstraintsFoundation.GateLemmas

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsFoundation

def ConstrainedDistributionIntegersClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_distribution_integers_endgame (A : AdmissibleClass) :
    ConstrainedDistributionIntegersClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributionIntegersSpecifiedMultiplicativeConstraintsFoundation
end HautevilleHouse