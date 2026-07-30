import canonicalLaneMathlib.AdmissibleClass
import Mathlib.LinearAlgebra.Basis
import Mathlib.LinearAlgebra.FiniteDimensional

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

theorem mathlib_vector_space_structure_body (K V : Type*) [Field K] [AddCommGroup V] [Module K V] :
    Module K V := by infer_instance

theorem mathlib_finite_dimensional_vector_space_body (K V : Type*) [Field K] [AddCommGroup V] [Module K V] [FiniteDimensional K V] :
    FiniteDimensional K V := by infer_instance

theorem mathlib_basis_exists_body (K V : Type*) [Field K] [AddCommGroup V] [Module K V] [FiniteDimensional K V] :
    ∃ (s : Set V), Basis (s : Set V) K V := by
  apply FiniteDimensional.basis_exists

structure MathlibFirstPrinciplesPackage where
  vectorSpaceStructureAvailable : Prop
  finiteDimensionalStructureAvailable : Prop
  basisExistsBodyAvailable : Prop

def mathlibFirstPrinciplesPackage : MathlibFirstPrinciplesPackage := {
  vectorSpaceStructureAvailable := True
  finiteDimensionalStructureAvailable := True
  basisExistsBodyAvailable := True
}

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse