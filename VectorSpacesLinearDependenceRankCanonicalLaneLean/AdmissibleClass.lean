import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure AdmittedVectorSpace where
  carrier : Type u
  field : Type v
  scalar : field → carrier → carrier
  addition : carrier → carrier → carrier
  zero : carrier
  vectorSpaceAxioms : Prop

structure AdmissibleClass where
  object : AdmittedVectorSpace
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VectorSpaceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse