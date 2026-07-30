import canonicalLaneMathlib.AdmissibleClass
import Mathlib.LinearAlgebra.Basis

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure BasisPackage (V : VectorSpace) where
  basisDef : Type
  spanning : Prop
  linearIndependence : Prop
  basisCardinality : Prop
  changeOfBasis : Prop

structure BasisEvidence (V : VectorSpace) (B : BasisPackage V) where
  spanningClosed : B.spanning
  linearIndependenceClosed : B.linearIndependence
  basisCardinalityClosed : B.basisCardinality
  changeOfBasisClosed : B.changeOfBasis

def BasisClosed (V : VectorSpace) (B : BasisPackage V) : Prop :=
  B.spanning ∧ B.linearIndependence ∧ B.basisCardinality ∧ B.changeOfBasis

theorem basis_closed_from_evidence (V : VectorSpace) (B : BasisPackage V) (E : BasisEvidence V B) :
    BasisClosed V B := by
  exact And.intro E.spanningClosed
    (And.intro E.linearIndependenceClosed
      (And.intro E.basisCardinalityClosed E.changeOfBasisClosed))

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse