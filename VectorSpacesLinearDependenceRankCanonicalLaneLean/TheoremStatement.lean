import Mathlib.Data.VectorSpace.Basic
import Mathlib.LinearAlgebra.Span

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

open Set
open Submodule

structure VectorSpaceObject where
  carrier : Type u
  [instAddCommGroup : AddCommGroup carrier]
  [instModule : Module ℝ carrier]

structure VectorSpaceAdmittedObject where
  space : VectorSpaceObject
  dependentSet : Set (VectorSpaceObject.carrier space)
  rankCondition : Prop
  conclusion : rankCondition

def VectorSpaceWitnessClosed (O : VectorSpaceAdmittedObject) : Prop :=
  O.rankCondition

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse