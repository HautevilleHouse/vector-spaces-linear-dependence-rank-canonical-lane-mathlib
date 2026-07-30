import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure VectorSpace where
  carrier : Type
  field : Type
  scalarMultiplication : field → carrier → carrier
  addition : carrier → carrier → carrier
  zero : carrier
  vsAxioms : Prop

structure LinearMap (V W : VectorSpace) where
  toFun : V.carrier → W.carrier
  additive : Prop
  homogeneous : Prop
  linearAxioms : additive ∧ homogeneous

structure SpanCondition (V : VectorSpace) (S : Set V.carrier) where
  spanClosed : Prop
  minimalGenerating : Prop

structure VectorSpaceAdmittedObject where
  space : VectorSpace
  finiteDimensional : Prop
  basis : Set (VectorSpace.carrier space)
  spanCondition : SpanCondition space basis
  conclusion : finiteDimensional

def VectorSpaceWitnessClosed (O : VectorSpaceAdmittedObject) : Prop :=
  O.finiteDimensional

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse