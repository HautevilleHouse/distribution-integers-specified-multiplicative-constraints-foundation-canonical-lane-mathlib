import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsFoundation

structure IntegerDistributionPackage where
  baseSet : Type u
  distribution : baseSet → ℕ
  finiteSupport : Finset baseSet
  totalMass : ℕ
  totalMassMatches : totalMass = ∑ x in finiteSupport, distribution x

def IntegerDistributionClosed (D : IntegerDistributionPackage) : Prop :=
  D.totalMassMatches

end DistributionIntegersSpecifiedMultiplicativeConstraintsFoundation
end HautevilleHouse