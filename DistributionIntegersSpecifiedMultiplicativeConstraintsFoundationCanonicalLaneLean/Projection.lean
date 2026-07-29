import canonicalLaneMathlib.AdmissibleClass
import DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean.DistributionIntegerObjects

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def distributionIntegerProjection : Projection DistributionIntegerEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem distribution_integer_projection_idempotent (x : DistributionIntegerEndgameState) :
    distributionIntegerProjection.toFun (distributionIntegerProjection.toFun x) = distributionIntegerProjection.toFun x := by
  exact distributionIntegerProjection.idempotent x

end DistributionIntegersSpecifiedMultiplicativeConstraintsFoundationCanonicalLaneLean
end HautevilleHouse
