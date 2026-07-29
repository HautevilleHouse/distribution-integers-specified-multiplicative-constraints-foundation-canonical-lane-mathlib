import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsFoundation

structure EndpointConstraintPackage where
  constraintSatisfied : Prop
  constraintEvidence : constraintSatisfied
  endpointVerified : Prop
  endpointEvidence : endpointVerified

def EndpointConstraintClosed (E : EndpointConstraintPackage) : Prop :=
  E.constraintSatisfied ∧ E.endpointVerified

theorem endpoint_constraint_closed_from_evidence (E : EndpointConstraintPackage) :
    EndpointConstraintClosed E :=
  And.intro E.constraintEvidence E.endpointEvidence

end DistributionIntegersSpecifiedMultiplicativeConstraintsFoundation
end HautevilleHouse